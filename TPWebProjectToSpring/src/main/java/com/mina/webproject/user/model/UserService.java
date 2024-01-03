package com.mina.webproject.user.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserService {
	
	@Autowired
	UserDAO userDao;
	
	public int insertUser(UserVO vo) {
		int result= userDao.insertUser(vo);
		return result;
	}
	
}
