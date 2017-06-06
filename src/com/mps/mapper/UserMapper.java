package com.mps.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mps.domain.User;

public interface UserMapper {
	/*
	 * 对象关系映射
	 */
	//插入数据
	@Insert("insert into user(username,password,email,tel) values(#{userName},#{passWord},#{email},#{tel})")
	@Results({
		@Result(id=true,property="id",column="id"),
		@Result(property="userName",column="username"),
		@Result(property="passWord",column="password"),
		@Result(property="email",column="email"),
		@Result(property="tel",column="tel")
	})
	public void insert(User user);
	//查询数据
	@Select("select * from user where tp = 1 limit #{pageIndex},#{pageNum}")
	public List<User> getUsers(User user);
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
