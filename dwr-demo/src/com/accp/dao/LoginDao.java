package com.accp.dao;

import com.entity.Accpusers;


public interface LoginDao {
	
	public boolean checkLogin(Accpusers user);
	public boolean checkName(String name);
	public long addUser(Accpusers user);

}
