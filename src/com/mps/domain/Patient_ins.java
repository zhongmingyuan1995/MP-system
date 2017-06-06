package com.mps.domain;
/**
 * 
 * @author Administrator
 *检查结果表实体类
 */
public class Patient_ins {
   
	
	    private int   id;
	    private String     laboratory;
	    private String     laboratory_result;
	    private String     auxiliary;
	    private String     auxiliary_result;
	    private int     Pid;
	    
	    
	    public Patient_ins(){
	    	
	    }


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public String getLaboratory() {
			return laboratory;
		}


		public void setLaboratory(String laboratory) {
			this.laboratory = laboratory;
		}


		public String getLaboratory_result() {
			return laboratory_result;
		}


		public void setLaboratory_result(String laboratory_result) {
			this.laboratory_result = laboratory_result;
		}


		public String getAuxiliary() {
			return auxiliary;
		}


		public void setAuxiliary(String auxiliary) {
			this.auxiliary = auxiliary;
		}


		public String getAuxiliary_result() {
			return auxiliary_result;
		}


		public void setAuxiliary_result(String auxiliary_result) {
			this.auxiliary_result = auxiliary_result;
		}


		public int getPid() {
			return Pid;
		}


		public void setPid(int pid) {
			Pid = pid;
		}
	    
	    
	    
	    
}
