package com.accp.bizimpl;

import com.accp.biz.LoginBiz;
import com.accp.dao.LoginDao;
import com.entity.Accpusers;

public class LoginbizImpl implements LoginBiz {

	private LoginDao logindao;

	public void setLogindao(LoginDao logindao) {
		this.logindao = logindao;
	}

	public boolean checkLogin(Accpusers user) {

		return logindao.checkLogin(user);
	}

	public boolean checkName(String name) {
		return logindao.checkName(name);
	}

	public long addUser(Accpusers user) {
		return logindao.addUser(user);
	}

}
