package com.stamp.stamp;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.stamp.data.RestaurantVo;

@Repository("stampDao")
public class StampDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate template;
	
	public int UpdateStamp(String id) {
		return template.update("stamp.updateStamp",id);
	}

	public StampVo SearchStamp(String Sid) {
		// TODO Auto-generated method stub
		return template.selectOne("stamp.searchStamp",Sid);
	}
	
	public StampVo SearchLocation(String mac) {
		// TODO Auto-generated method stub
		return template.selectOne("stamp.searchLocation",mac);
	}
	
	
	public List<StampVo> SearchAllstamp(String Sid) {
		// TODO Auto-generated method stub
		return template.selectList("stamp.SearchAllstamp",Sid);
	}
}
