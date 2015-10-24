package com.accp.bizimpl;

import java.util.List;

import com.accp.biz.CityBiz;
import com.accp.dao.CityDao;
import com.entity.City;

public class CityBizImpl implements CityBiz {
	private CityDao citydao;

	public CityDao getCitydao() {
		return citydao;
	}
	public void setCitydao(CityDao citydao) {
		this.citydao = citydao;
	}
	public List<City> findByPid(int pid) {
		return citydao.findByPid(pid);
	}
}
