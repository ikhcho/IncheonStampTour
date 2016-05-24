package com.stamp.stamp;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("stampDao")
public class StampDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate template;
	
	public int SaveStamp(StampVo vo) {
		return template.insert("stamp.saveStamp",vo);
	}

	public StampVo SearchStamp(String Sid) {
		// TODO Auto-generated method stub
		return template.selectOne("stamp.searchStamp",Sid);
	}
}
