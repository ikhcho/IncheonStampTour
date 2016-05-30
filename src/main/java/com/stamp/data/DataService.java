package com.stamp.data;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("dataService")
public class DataService {
	@Resource(name="dataDao")
	DataDao dao;

	public List<FestivalVo> SearchFestival(String month){
		return dao.SearchFestival(month);
	}
	
	public List<CultureVo> SearchCulture(String month){
		return dao.SearchCulture(month);
	}
	
	public List<HistoryVo> SearchHistory(String date){
		return dao.SearchHistory(date);
	}
	
	public List<TreasureVo> SearchTreasure(){
		return dao.SearchTreasure();
	}
}