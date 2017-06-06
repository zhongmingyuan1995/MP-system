package com.mps.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mps.dao.UserDao;
import com.mps.domain.User;
import com.mps.service.UserService;

@Service(value=UserService.SERVER_NAME)
public class UserServiceImpl implements UserService{
	@Resource(name=UserDao.SERVER_NAME)
	private UserDao userDao = null;
	private List<User> list = null;
	//����û�
	public void saveUser(User user) {
		userDao.insertUser(user);
	}
	//�û����Ƿ����
	public boolean checkUserName(User user) {
		if(userDao.checkUserName(user)>=1){
			return true;
		}else{
			return false;
		}
	}
	//��½��Ϣ�Ƿ���ȷ
	public boolean checkUser(User user) {
		if(userDao.checkUser(user)>=1){
			return true;
		}else{
			return false;
		}
	}
	public User getUser(String userName) {
		return userDao.getUser(userName);
	}
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	public List<User> queryAllUsers(int pageIndex, int pageNum) {
		try{
			list = userDao.getUsers(pageIndex, pageNum);
		}catch(Exception e){
			int pageIndex2 = 0;
			int pageNum2 = 5;
			list = userDao.getUsers(pageIndex2, pageNum2);
		}
		return list;
	}
	public void updateUserByAdmin(User user) {
		userDao.updateUserByAdmin(user);
	}
	public void deleteUserByAdmin(int id) {
		userDao.deleteUserById(id);
	}
}
