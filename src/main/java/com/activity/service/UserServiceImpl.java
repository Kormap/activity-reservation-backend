package com.activity.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activity.dao.UserDAO;
import com.activity.domain.UserDTO;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	//유저 정보 리스
	@Override
	public List<UserDTO> getUserList() throws Exception {
		return userDAO.getUserList();
		
	}
	
	//회원가입 정보 insert
	@Override
	public void insertUser(UserDTO userdto) throws Exception {
		userDAO.insertUser(userdto);
		
	}
	
	//ID 중복 체크 
	@Override
	public int getCheckEmail(UserDTO userdto) throws Exception {
		return userDAO.getCheckEmail(userdto);
	}

	
	
}
