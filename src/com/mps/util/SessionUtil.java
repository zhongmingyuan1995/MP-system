package com.mps.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * 解析配置文件，获取sessionFactory
 * @author lenovo
 *
 */
public class SessionUtil {
	public static SqlSessionFactory getSf(){
		SqlSessionFactory sf = null;
		try {
			//获取文件对象的输入流
			InputStream ins = Resources.getResourceAsStream("mybatis-config.xml");
			//通过输入流获取session工厂
			sf = new SqlSessionFactoryBuilder().build(ins);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sf;
	}
}
