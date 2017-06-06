package com.mps.dao.impl;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.mps.dao.UserDao;
import com.mps.domain.User;
import com.mps.mapper.UserMapper;
import com.mps.util.Md5Util;
import com.mps.util.SessionUtil;
@Repository(value=UserDao.SERVER_NAME)
public class UserDaoImpl implements UserDao{
	SqlSessionFactory sf = SessionUtil.getSf();
	SqlSession session = null;
	UserMapper userMapper = null;
	List<User> list = null;
	User user = null;
	Md5Util md5 = null;
	//插入用户
	public void insertUser(User user) {
		md5 = new Md5Util();
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			user.setPassWord(md5.getDigest(user.getPassWord()));
			userMapper.insert(user);
		}finally{
			session.close();
		}
	}
	//获取所有用户
	public List<User> getUsers(int pageIndex,int pageNum) {
		md5 = new Md5Util();
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			user = new User(pageIndex, pageNum);
			list = userMapper.getUsers(user);
		}finally{
			session.close();
		}
		return list;
	}
	//修改用户信息
	public void updateUser(User user) {
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			userMapper.updateUserInfo(user);
		}finally{
			session.close();
		}
	}
	//通过id删除用户
	public void deleteUserById(int id) {
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			userMapper.delete(id);
		}finally{
			session.close();
		}
	}
	//查询用户存在个数
	public int checkUserName(User user){
		int userNameCount;
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			userNameCount = userMapper.checkUserNameCount(user);
			return userNameCount;
		}finally{
			session.close();
		}
		
	}
	public int checkUser(User user) {
		int userCount;
		md5 = new Md5Util();
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			user.setPassWord(md5.getDigest(user.getPassWord()));
			userCount = userMapper.loginCheck(user);
			return userCount;
		}finally{
			session.close();
		}
	}
	public User getUser(String userName) {
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			user = userMapper.getUser(userName);
			user.setPassWord(md5.getDigest(user.getPassWord()));
			return user;
		}finally{
			session.close();
		}
	}
	public void updateUserByAdmin(User user) {
		md5 = new Md5Util();
		try{
			session = sf.openSession(true);
			userMapper = session.getMapper(UserMapper.class);
			user.setPassWord(md5.getDigest(user.getPassWord()));
			userMapper.updateByAdmin(user);
		}finally{
			session.close();
		}
	}
	
}
