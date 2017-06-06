package com.mps.dao;
import java.util.List;

import com.mps.domain.User;

public interface UserDao {
	public static final String SERVER_NAME="com.mps.dao.UserDao";
	//添加数据
	public void insertUser(User user);
	//查询数据
	public List<User> getUsers(int pageIndex,int pageNum);
	//修改数据
	public void updateUser(User user);
	//删除数据
	public void deleteUserById(int id);
	//查询用户个数--注册验证
	public int checkUserName(User user);
	//登陆验证
	public int checkUser(User user); 
	//查询登陆用户信息
	public User getUser(String userName);
	//管理员修改用户信息
	public void updateUserByAdmin(User user);
}