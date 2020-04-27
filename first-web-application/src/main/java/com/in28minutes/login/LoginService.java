package com.in28minutes.login;

public class LoginService {

	public boolean isUserValid(String user, String password) {
		if (user.equals("mateo") && password.equals("123")) {
			return true;
		} else {
			return false;
		}
	}
	
}
