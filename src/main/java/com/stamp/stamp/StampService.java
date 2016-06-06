package com.stamp.stamp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stamp.data.HistoryVo;

@Service("stampService")
public class StampService {
	@Resource(name="stampDao")
	StampDao dao;

	public int UpdateStamp(String id) {
		return dao.UpdateStamp(id);
	}
	public StampVo SearchStamp(String Sid){
		return dao.SearchStamp(Sid);
	}
	
	public StampVo SearchLocation(String mac){
		return dao.SearchLocation(mac);
	}
	
	public List<StampVo> SearchAllstamp(String Sid){
		return dao.SearchAllstamp(Sid);
	}
}