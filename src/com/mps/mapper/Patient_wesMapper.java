package com.mps.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.mps.domain.Patient_wes;

public interface Patient_wesMapper {
	/*
	 * 对象关系映射
	 */
	//插入数据
	@Insert("insert into patient_record(wes_name,wes_type,wes_number,wes_specifications,wes_component,wes_usage,wes_function,wes_taboo) values(#{wes_name},#{wes_type},"
			+ "#{wes_number},#{wes_specifications},#{wes_component},#{wes_usage},#{wes_function},#{wes_taboo})")
	@Results({
		@Result(id=true,property="wes_id",column="wes_id"),
		@Result(property="wes_name",column="wes_name"),
		@Result(property="wes_type",column="wes_type"),
		@Result(property="wes_number",column="wes_number"),
		@Result(property="wes_specifications",column="wes_specifications"),
		@Result(property="wes_component",column="wes_component"),
		@Result(property="wes_usage",column="wes_usage"),
		@Result(property="wes_function",column="wes_function"),
		@Result(property="wes_taboo",column="wes_taboo")
	})

	public void insertPatient_wes(Patient_wes patient_wes);
	@Select("select * from medicine_western limit #{pageIndex},#{pageNum}")
	public List<Patient_wes> getAllPatient_wes(Patient_wes patient_wes);

}
