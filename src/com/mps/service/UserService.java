package com.mps.service;

import java.util.List;

import com.mps.domain.User;

public interface UserService {
	public static final String SERVER_NAME="com.mps.service.UserService"; 
	//添加
	public void saveUser(User user);
	//管理员分页查询所有用户信息
	public List<User> queryAllUsers(int pageIndex,int pageNum);
	//用户修改个人信息
	public void updateUser(User user);
	//查询用户名是否存在
	public boolean checkUserName(User user);
	//查询用户是否存在
	public boolean checkUser(User user);
	//获取登陆成功用户信息
	public User getUser(String userName);
	//管理员修改用户信息
	public void updateUserByAdmin(User user);
	//管理员删除用户
	public void deleteUserByAdmin(int id);
}
