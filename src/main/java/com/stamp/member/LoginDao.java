package com.stamp.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("loginDao")
public class LoginDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate template;
	
	public int SaveAccount(LoginVo vo) {
		return template.insert("stamp.saveAccount",vo);
	}

	public LoginVo SearchAccount(String id) {
		// TODO Auto-generated method stub
		return template.selectOne("stamp.searchAccount",id);
	}
}
