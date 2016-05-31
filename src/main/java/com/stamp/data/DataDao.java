package com.stamp.data;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("dataDao")
public class DataDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate template;

	public List<FestivalVo> SearchFestival(String month) {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchFestival",month);
	}
	
	public List<CultureVo> SearchCulture(String month) {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchCulture",month);
	}
	
	public List<HistoryVo> SearchHistory(String date) {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchHistory",date);
	}
	
	public List<TreasureVo> SearchTreasure() {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchTreasure");
	}
	
	public List<RestaurantVo> SearchRestaurant() {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchRestaurant");
	}
}
