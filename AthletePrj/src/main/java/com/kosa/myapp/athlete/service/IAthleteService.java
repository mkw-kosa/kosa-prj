package com.kosa.myapp.athlete.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kosa.myapp.athlete.model.AthleteVO;

public interface IAthleteService {
	
	List<AthleteVO> getAthList();
	AthleteVO getAthInfo(int athid);
	void updateAth(AthleteVO athlete);
	void insertAth(AthleteVO athlete);
	void deleteAth(@Param("athid") int athid, @Param("birthDate") Date birthDate);
	
	List<Map<String, Object>> getAllSportsId();
	
	List<AthleteVO> searchListBySports(String sports);
	AthleteVO selectAdmin(String name);
	String getPassword(String date);
	
	
}
