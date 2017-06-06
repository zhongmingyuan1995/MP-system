package com.mps.service;

import java.util.List;

import com.mps.domain.User;

public interface UserService {
	public static final String SERVER_NAME="com.mps.service.UserService"; 
	//���
	public void saveUser(User user);
	//����Ա��ҳ��ѯ�����û���Ϣ
	public List<User> queryAllUsers(int pageIndex,int pageNum);
	//�û��޸ĸ�����Ϣ
	public void updateUser(User user);
	//��ѯ�û����Ƿ����
	public boolean checkUserName(User user);
	//��ѯ�û��Ƿ����
	public boolean checkUser(User user);
	//��ȡ��½�ɹ��û���Ϣ
	public User getUser(String userName);
	//����Ա�޸��û���Ϣ
	public void updateUserByAdmin(User user);
	//����Աɾ���û�
	public void deleteUserByAdmin(int id);
}
