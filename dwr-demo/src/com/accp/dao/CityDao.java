package com.accp.dao;

import java.util.List;

import com.entity.City;

public interface CityDao {
	
	public List<City> findByPid(int pid);

}
