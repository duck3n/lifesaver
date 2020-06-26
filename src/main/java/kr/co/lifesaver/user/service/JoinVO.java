package kr.co.lifesaver.user.service;

import java.util.Map;

import lombok.Data;

@Data
public class JoinVO {

	// 기본 작성 
	private String common_code;
	private String common_id;
	private String common_pw;
	private String common_name;
	private String common_birth;
	private String common_gender;
	private String common_phone;
	private String common_addr;

	// 세이버일 경우
	private String saver_code;
	private String saver_license;
	private String saver_job;
	private String saver_job_addr;
	private String saver_grade;
	private int saver_auth;

	// 법조인일 경우
	private String law_code;
	private String law_license;
	private int law_auth;

	// 기본 생성자
	public JoinVO() {
		// TODO Auto-generated constructor stub
	}

	// Login
	public JoinVO(String common_id, String common_pw) {
		super();
		this.common_id = common_id;
		this.common_pw = common_pw;
	}
	
	// Common
	public JoinVO(String common_id, String common_pw, String common_name, String common_birth, String common_gender,
			String common_phone, String common_addr) {
		super();
		this.common_id = common_id;
		this.common_pw = common_pw;
		this.common_name = common_name;
		this.common_birth = common_birth;
		this.common_gender = common_gender;
		this.common_phone = common_phone;
		this.common_addr = common_addr; 
	}


	// Lawyer
	public JoinVO (String law_license) {
		super();
		this.law_license = law_license;
	}
	
	
	// saver
	public JoinVO(String saver_license, String saver_grade, String saver_job, String saver_job_addr) {
		super();
		this.saver_license = saver_license;
		this.saver_grade = saver_grade;
		this.saver_job = saver_job;
		this.saver_job_addr = saver_job_addr;
	
	}

	public String getCommon_code() {
		return common_code;
	}

	public void setCommon_code(String common_code) {
		this.common_code = common_code;
	}

	public String getCommon_id() {
		return common_id;
	}

	public void setCommon_id(String common_id) {
		this.common_id = common_id;
	}

	public String getCommon_pw() {
		return common_pw;
	}

	public void setCommon_pw(String common_pw) {
		this.common_pw = common_pw;
	}

	public String getCommon_name() {
		return common_name;
	}

	public void setCommon_name(String common_name) {
		this.common_name = common_name;
	}

	public String getCommon_birth() {
		return common_birth;
	}

	public void setCommon_birth(String common_birth) {
		this.common_birth = common_birth;
	}

	public String getCommon_gender() {
		return common_gender;
	}

	public void setCommon_gender(String common_gender) {
		this.common_gender = common_gender;
	}

	public String getCommon_phone() {
		return common_phone;
	}

	public void setCommon_phone(String common_phone) {
		this.common_phone = common_phone;
	}

	public String getCommon_addr() {
		return common_addr;
	}

	public void setCommon_addr(String common_addr) {
		this.common_addr = common_addr;
	}

	public String getSaver_code() {
		return saver_code;
	}

	public void setSaver_code(String saver_code) {
		this.saver_code = saver_code;
	}

	public String getSaver_license() {
		return saver_license;
	}

	public void setSaver_license(String saver_license) {
		this.saver_license = saver_license;
	}

	public String getSaver_job() {
		return saver_job;
	}

	public void setSaver_job(String saver_job) {
		this.saver_job = saver_job;
	}

	public String getSaver_job_addr() {
		return saver_job_addr;
	}

	public void setSaver_job_addr(String saver_job_addr) {
		this.saver_job_addr = saver_job_addr;
	}

	public String getSaver_grade() {
		return saver_grade;
	}

	public void setSaver_grade(String saver_grade) {
		this.saver_grade = saver_grade;
	}

	public int getSaver_auth() {
		return saver_auth;
	}

	public void setSaver_auth(int saver_auth) {
		this.saver_auth = saver_auth;
	}

	public String getLaw_code() {
		return law_code;
	}

	public void setLaw_code(String law_code) {
		this.law_code = law_code;
	}

	public String getLaw_license() {
		return law_license;
	}

	public void setLaw_license(String law_license) {
		this.law_license = law_license;
	}

	public int getLaw_auth() {
		return law_auth;
	}

	public void setLaw_auth(int law_auth) {
		this.law_auth = law_auth;
	}
	
	
	
	
}
