package com.mina.webproject.user.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertUser(UserVO vo) {
		int result= sqlSession.insert("mapper.user.insertUser", vo);
		return result;
	}
	
	public int updateUserProfileImg() {
		int result= sqlSession.update("mapper.user.updateUserprofileImg");
		return result;
	}

}
