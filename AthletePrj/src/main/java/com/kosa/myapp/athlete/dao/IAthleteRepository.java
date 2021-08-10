package com.kosa.myapp.athlete.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.kosa.myapp.athlete.model.AthleteVO;

public interface IAthleteRepository {
	
	List<AthleteVO> getAthList();
	AthleteVO getAthInfo(int athid);
	void updateAth(AthleteVO athlete); // 어떤 값이 바뀔지 모르니까?
	void calcPrize(AthleteVO athlete);
	void insertAth(AthleteVO athlete);
	void deleteAth(@Param("athid") int athid, @Param("birthDate") Date birthdate);
	
	List<Map<String, Object>> getAllSportsId();
	
	List<AthleteVO> searchListBySports(@Param("sports") String sports);
	AthleteVO selectAdmin(String name);
	String getPassword(String date);
	
}
