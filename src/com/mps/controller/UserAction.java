package com.mps.controller;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mps.domain.User;
import com.mps.service.UserService;
import com.mps.util.ValidateCode;

@Controller
public class UserAction{
	@Resource(name=UserService.SERVER_NAME)
	private UserService userService = null;
	//用户注册：配置请求的路径
	@RequestMapping(value="userRegist.action",method=RequestMethod.POST,produces={"application/json;charset=UTF-8"})
	public String regist(@RequestParam String userName,@RequestParam String email,HttpSession session,@RequestParam String tel,@RequestParam String passWord,HttpServletRequest request){
		String code = (String) session.getAttribute("validateCode");
        String submitCode = WebUtils.getCleanParam(request, "validateCode");
        if (StringUtils.isEmpty(submitCode) || !StringUtils.equals(code,submitCode.toLowerCase())) {
            return "/login.jsp";
        }
		User user = new User(userName,passWord,email,tel);
		userService.saveUser(user);
		request.setAttribute("user", user);
		return "/login.jsp";
	}
	@RequestMapping("/userLogin.action")
	public String login(@RequestParam String userName,@RequestParam String passWord,@RequestParam int tp,HttpServletRequest request){
		//获取登陆成功用户的所有信息
		User user = userService.getUser(userName);
		request.getSession().setAttribute("user", user);
		if(user.getTp()==1){
			return "Patient/Patient_index.jsp";
		}
		else if (user.getTp()==2) {
			return "Doctor/Doctor_index.jsp";
			
		}
		else if (user.getTp()==3) {
			return "admin/admin_index.jsp";
			
		}else{
			return "/login.jsp";
		}
	}
	@RequestMapping("/userExit.action")
	public String exit(HttpServletRequest request){
		request.getSession().invalidate();
		return "/index.jsp";
	}
	
	@RequestMapping("/checkUserName.action")
	public void checkUserName(@RequestParam String userName,HttpServletRequest request,HttpServletResponse response){
		User user = new User(userName);
		try {
			PrintWriter pw=response.getWriter();
			if(userService.checkUserName(user)){
				pw.print("1");
			}else{
				pw.print("0");
			}
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/checkLogin.action")
	public void checkLogin(@RequestParam String userName,@RequestParam String passWord,@RequestParam int tp,HttpServletRequest request,HttpServletResponse response){
		User user = new User(userName,passWord,tp);
		try {
			PrintWriter pw=response.getWriter();
			if(userService.checkUser(user)){
				pw.print("1");
			}else{
				pw.print("0");
			}
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//用户修改个人信息
	@RequestMapping("/userUploadHeadPic.action")
	public ModelAndView myFileUpload(HttpServletRequest request,HttpServletResponse response){
		String webPath="";
		String fileName="";
		String filePath="";
		try{
			DiskFileItemFactory factory=new DiskFileItemFactory();
			ServletFileUpload fileUpload=new ServletFileUpload(factory);
			List<FileItem> fileItem=fileUpload.parseRequest(request);
			webPath = request.getSession().getServletContext().getRealPath("upload");
			System.out.println(webPath);
			for(FileItem item : fileItem){
					Date d = new Date();
					long l = d.getTime();
					fileName = l+item.getName();
					//fileNames.add(webPath+"/"+fileName);
					filePath = webPath + "\\" + fileName;
					File file = new File(filePath);
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(file);
					byte[] buffer = new byte[1024];
					while(in.read(buffer)!=-1){
						out.write(buffer);
					}
					out.flush();
					in.close();
				}
		}catch (Exception e) {
			e.printStackTrace();
		}
		request.getSession().setAttribute("headPicSrc", fileName);
		ModelAndView model = new ModelAndView("/userPage/updateMyInformation.jsp");
		return model;
	}
	
	@RequestMapping(value="/intoUpdateInfo.action")
	public String IntoUpdateInfo(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("方法11111"+user.getHeadPicSrc());
		request.getSession().setAttribute("headPicSrc", user.getHeadPicSrc());
		return "userPage/updateMyInformation.jsp";
	}
	
	@RequestMapping(value="/userUpdateInfo.action")
	public String UserUpdateInfo(@RequestParam(value="userName") String userName,@RequestParam(value="email") String email,@RequestParam(value="tel") String tel,@RequestParam(value="sex") String sex,@RequestParam(value="birthday") String birthday,@RequestParam(value="note") String note, HttpServletRequest request,HttpServletResponse response){
		String headPicSrc = (String) request.getSession().getAttribute("headPicSrc");
		User user = new User(userName,email,tel,sex,birthday,note,headPicSrc);
		System.out.println("方法222-------"+headPicSrc);
		userService.updateUser(user);
		request.getSession().setAttribute("user", user);
		System.out.println("方法222"+user.getHeadPicSrc());
		return "middle.jsp";
	}
	
	@RequestMapping(value="/admin_user_bypage.action")
	public String SelectAllUsers(@RequestParam int pageIndex,@RequestParam int pageNum,HttpServletRequest request,HttpServletResponse response){
		
		List<User> userList = userService.queryAllUsers(pageIndex, pageNum);
		request.setAttribute("pageIndex", pageIndex);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("userList", userList);
		return "admin/admin_user.jsp";
	}
	@RequestMapping(value="/admin_update_user.action")
	public String AdminUpdateUser(@RequestParam int id,@RequestParam String userName,@RequestParam String passWord,@RequestParam int tp,HttpServletRequest request,HttpServletResponse response){
		User user = new User(id,userName,passWord,tp);
		request.setAttribute("user",user);
		return "admin/update_user.jsp";
	}
	@RequestMapping(value="/admin_update_user_submit.action")
	public String AdminUpdateUserSubmit(@RequestParam int id,@RequestParam String userName,@RequestParam String passWord,@RequestParam int tp,HttpServletRequest request,HttpServletResponse response){
		User user = new User(id,userName,passWord,tp);
		userService.updateUserByAdmin(user);
		return "admin/admin_user.jsp";
	}
	
	@RequestMapping(value="/admin_delete_user_submit.action")
	public String AdminDeleteUser(@RequestParam int id,HttpServletRequest request,HttpServletResponse response){
		userService.deleteUserByAdmin(id);
		return "admin_user_bypage.action?pageIndex=0&pageNum=6";
	}

    /**
     * 生成验证码
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/validateCode")
    public void validateCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("Cache-Control", "no-cache");
        String verifyCode = ValidateCode.generateTextCode(ValidateCode.TYPE_NUM_ONLY, 4, null);
        request.getSession().setAttribute("validateCode", verifyCode);
        response.setContentType("image/jpeg");
        BufferedImage bim = ValidateCode.generateImageCode(verifyCode, 90, 30, 3, true, Color.WHITE, Color.BLACK, null);
        ImageIO.write(bim, "JPEG", response.getOutputStream());
    }
}
	


	

	