package kr.co.lifesaver.admin.service.impl;

public interface SessionNames {
		static final String LOGIN = "loginUser";
		static final String LOGIN_COOKIE = "loginCookie";
		static final String ATTEMPTED = "attemptedLocation";
		
		static final int EXPIRE = 7 * 24 * 60 * 60;
	
}
