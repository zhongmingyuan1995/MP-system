package com.mps.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mps.domain.User;
import com.mps.domain.Patient;

public interface PatientMapper {
	/*
	 * 对象关系映射
	 */
	//插入数据
	@Insert("insert into patient(Pname,Pborth,Pgender,Pmarital_status,Ptel,Pemail,Pnation,Poccupation,Pwork_unit,Paddress,Pphoto,Premarks) "
			+ "values(#{Pname},#{Pborth},#{Pgender},#{Pmarital_status},#{Ptel},#{Pemail},#{Pnation},#{Poccupation},#{Pwork_unit},#{Paddress},#{Pphoto},#{Premarks})")
	@Results({
		@Result(id=true,property="Pno",column="Pno"),
		@Result(property="Pname",column="Pname"),
		@Result(property="Pborth",column="Pborth"),
		@Result(property="Pgender",column="Pgender"),
		@Result(property="Pmarital_status",column="Pmarital_status"),
		@Result(property="Ptel",column="Ptel"),
		@Result(property="Pemail",column="Pemail"),
		@Result(property="Pnation",column="Pnation"),
		@Result(property="Poccupation",column="Poccupation"),
		@Result(property="Pwork_unit",column="Pwork_unit"),
		@Result(property="Paddress",column="Paddress"),
		@Result(property="Pphoto",column="Pphoto"),
		@Result(property="Premarks",column="Premarks")
	})
	public void insert(Patient patient);
	//查询数据
	@Select("select username from user where id = #{id}")
	public List<Patient> getPatient(Patient patient);
	@Select("select * from Patient where Pno = #{Pno}")
	public List<Patient> getPatients(String Pno);
	//查询所有病人
	@Select("select * from Patient limit #{pageIndex},#{pageNum}")
	public List<Patient> getAllPatient(Patient patient);
	//修改数据
	@Update("update user set password = #{passWord} where id = #{id}")
	public void update(User user);
	//删除数据
	@Delete("delete from user where id = #{id}")
	public void delete(int id);
	//查询用户�?
	@Select("select count(*) num from user where username = #{userName}")
	public int checkUserNameCount(User user);
	//登陆验证
	@Select("select count(*) num from user where username = #{userName} and password = #{passWord} and tp = #{tp}")
	public int loginCheck(User user);
	//获取登陆用户信息
	@Select("select * from user where username = #{userName}")
	public User getUser(String userName);
	//用户修改个人信息
	@Update("update user set email=#{email},tel=#{tel},sex=#{sex},birthday=#{birthday},note=#{note},headpicsrc=#{headPicSrc} where username=#{userName}")
	public void updateUserInfo(User user);
	//管理员修改用户信�?
	@Update("update user set password = #{passWord},tp=#{tp} where id = #{id}")
	public void updateByAdmin(User user);
	
}