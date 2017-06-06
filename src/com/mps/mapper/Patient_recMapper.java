package com.mps.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;

import com.mps.domain.Patient_rec;

public interface Patient_recMapper {
	/*
	 * 对象关系映射
	 */
	//插入数据
	@Insert("insert into patient_record(time,main,present,past,allergy,diagnosis,treat) values(#{time},#{main},#{present},#{past},#{allergy},#{diagnosis},#{treat})")
	@Results({
		@Result(id=true,property="id",column="id"),
		@Result(property="time",column="time"),
		@Result(property="main",column="main"),
		@Result(property="present",column="present"),
		@Result(property="past",column="past"),
		@Result(property="allergy",column="allergy"),
		@Result(property="diagnosis",column="diagnosis"),
		@Result(property="treat",column="treat")
	})
	public void insertPatient_rec(Patient_rec patient_rec);
}
