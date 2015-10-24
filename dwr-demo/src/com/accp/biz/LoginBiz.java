package com.accp.biz;

import com.entity.Accpusers;

public interface LoginBiz {
	public boolean checkLogin(Accpusers user);
	public boolean checkName(String name);
	public long addUser(Accpusers user);

}
