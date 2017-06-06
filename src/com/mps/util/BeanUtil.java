package com.mps.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 通过解析配置文件获取bean对象
 * @author lenovo
 *
 */
public class BeanUtil {
	public static Object getBean(String beanName){
		//解析配置文件
		ApplicationContext context = new ClassPathXmlApplicationContext("application-config.xml");
		return context.getBean(beanName);
	}
}
