package com.stamp.stamp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("stampService")
public class StampService {
	@Resource(name="stampDao")
	StampDao dao;

	public int SaveStamp(StampVo vo) {
		return dao.SaveStamp(vo);
	}
	
	public StampVo SearchStamp(String Sid){
		return dao.SearchStamp(Sid);
	}
}