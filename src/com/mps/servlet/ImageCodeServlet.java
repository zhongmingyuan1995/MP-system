package com.mps.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ImageCodeServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		//1. 获取 ServletPath: /edit.do 或 /addCustomer.do
		String servletPath = req.getServletPath();

		//2. 去除 / 和 .do, 得到类似于 edit 或 addCustomer 这样的字符串
		String methodName = servletPath.substring(1);
		methodName = methodName.substring(0, methodName.length() - 3);
		
		try {
			//3. 利用反射获取 methodName 对应的方法
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, 
					HttpServletResponse.class);
			//4. 利用反射调用对应的方法
			method.invoke(this, req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			//可以有一些响应.
			resp.sendRedirect("404.jsp");
		}
		
	}
	
	private void imagecode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("image/jpeg"); 
		  //设置页面不缓存 
		  response.setHeader("Pragma", "No-cache"); 
		  response.setHeader("Cache-Control", "no-cache");  
		  response.setDateHeader("Expires", 0); 
		  //在内存中创建图像 
		  int width = 90; 
		  int height = 35; 
		  BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB); 
		  //获取图形上下文 
		  Graphics g = image.getGraphics(); 
		  //随机类 
		  Random random = new Random(); 
		  //设定背景 
		  g.setColor(getRandColor(200, 250)); 
		  g.fillRect(0, 0, width, height); 
		  //设定字体 
		  g.setFont(new Font("Times New Roman",Font.PLAIN,30)); 
		  //随机产生干扰线 
		  g.setColor(getRandColor(160, 200));  
		  for (int i = 0; i < 100; i++) {  
		   int x = random.nextInt(width);  
		   int y = random.nextInt(height);  
		   int xl = random.nextInt(12);  
		   int yl = random.nextInt(12);  
		   g.drawLine(x, y, x + xl, y + yl);  
		  } 
		  //随机产生4位验证码 
		  String[] codes = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}; 
		  String code = ""; 
		  for(int i=0;i<4;i++){ 
		   String str = codes[random.nextInt(codes.length)]; 
		   code += str; 
		   // 将认证码显示到图象中 
		   g.setColor(new Color(50 + random.nextInt(110), 20 + random.nextInt(110), 30 + random.nextInt(110))); 
		   //调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成  
		   g.drawString(str, 18 * i +13, 27); //文字间距*i+距离左边距，上边距 
		  } 
		  HttpSession session=request.getSession(); 
		  // 将认证码存入SESSION  
		  session.setAttribute("code", code); 
		  // 图象生效  
		  g.dispose();  
		  // 输出图象到页面  
		  ImageIO.write(image, "JPEG", response.getOutputStream()); 
		  //加上下面代码,运行时才不会出现java.lang.IllegalStateException: getOutputStream() has already been called ..........等异常 
		  response.getOutputStream().flush(); 
		  response.getOutputStream().close(); 
		  response.flushBuffer(); 
		 } 
		 //获取随机颜色 
		 private Color getRandColor(int fc,int bc){ 
		  Random random = new Random(); 
		  if(fc>255) fc=255; 
		  if(bc>255) bc=255; 
		  int r = fc + random.nextInt(bc - fc); 
		  int g = fc + random.nextInt(bc - fc); 
		  int b = fc + random.nextInt(bc - fc); 
		  return new Color(r,g,b); 
		  } 
		 
		 private void CheckCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
			  request.setCharacterEncoding("utf-8"); 
			  response.setContentType("text/html;charset=utf-8"); 
			  PrintWriter out = response.getWriter(); 
			  //从session获取验证码 
			  HttpSession session=request.getSession(); 
			  String code=session.getAttribute("code").toString(); 
			  System.out.println(code); 
			  //获取用户输入验证码 
			  String input=request.getParameter("code"); 
			  System.out.println(input); 
			  if(code.equalsIgnoreCase(input)){ 
			   //转发数据 
			   request.setAttribute("result", "true"); 
			   request.getRequestDispatcher("/login3.jsp").forward(request, response); 
			//   response.sendRedirect(request.getContextPath()+"/regist/regist.jsp"); 
			  }else{ 
			   request.setAttribute("result", "false"); 
			   request.getRequestDispatcher("/login.jsp").forward(request, response); 
			  } 
			 } 

}
