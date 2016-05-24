package com.stamp.data;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("festivalDao")
public class FestivalDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate template;

	public List<FestivalVo> SearchFestival() {
		// TODO Auto-generated method stub
		return template.selectList("stamp.searchFestival");
	}
}
