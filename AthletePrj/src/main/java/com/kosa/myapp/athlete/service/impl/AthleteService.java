package com.kosa.myapp.athlete.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosa.myapp.athlete.dao.IAthleteRepository;
import com.kosa.myapp.athlete.model.AthleteVO;
import com.kosa.myapp.athlete.service.IAthleteService;

@Service
public class AthleteService implements IAthleteService {
	
	@Autowired
	IAthleteRepository athleteRepository;
	
	@Override
	public List<AthleteVO> getAthList() {
		return athleteRepository.getAthList();
	}

	
	@Override
	@Transactional
	public void updateAth(AthleteVO athlete) {
		athleteRepository.updateAth(athlete);
		athleteRepository.calcPrize(athlete);
	}

	@Override
	public void deleteAth(int athid, Date birthDate) {
		athleteRepository.deleteAth(athid, birthDate);
	}

	@Override
	public AthleteVO getAthInfo(int athid) {
		return athleteRepository.getAthInfo(athid);
	}


	@Override
	@Transactional
	public void insertAth(AthleteVO athlete) {
		athleteRepository.insertAth(athlete);
		athleteRepository.calcPrize(athlete);
	}


	@Override
	public List<Map<String, Object>> getAllSportsId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword(String date) {
		return athleteRepository.getPassword(date);
	}

	@Override
	public AthleteVO selectAdmin(String name) {
		return athleteRepository.selectAdmin(name);
	}

	@Override
	public List<AthleteVO> searchListBySports(String sports) {
		return athleteRepository.searchListBySports(sports);
	}
}
