package com.mps.dao;
import java.util.List;

import com.mps.domain.User;

public interface UserDao {
	public static final String SERVER_NAME="com.mps.dao.UserDao";
	//�������
	public void insertUser(User user);
	//��ѯ����
	public List<User> getUsers(int pageIndex,int pageNum);
	//�޸�����
	public void updateUser(User user);
	//ɾ������
	public void deleteUserById(int id);
	//��ѯ�û�����--ע����֤
	public int checkUserName(User user);
	//��½��֤
	public int checkUser(User user); 
	//��ѯ��½�û���Ϣ
	public User getUser(String userName);
	//����Ա�޸��û���Ϣ
	public void updateUserByAdmin(User user);
}