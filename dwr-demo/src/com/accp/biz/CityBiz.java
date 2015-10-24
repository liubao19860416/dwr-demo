package com.accp.biz;

import java.util.List;

import com.entity.City;

public interface CityBiz {
	public List<City> findByPid(int pid);

}
