package com.stamp.data;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("festivalService")
public class FestivalService {
	@Resource(name="festivalDao")
	FestivalDao dao;

	public List<FestivalVo> SearchFestival(){
		return dao.SearchFestival();
	}
}