package com.mina.webproject.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mina.webproject.user.model.UserService;
import com.mina.webproject.user.model.UserVO;

@Controller
public class userController {
	
	@Autowired
	UserService userService;
	

	//화면 이동 메소드
	
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@RequestMapping("/loginForm")
	public String loginFrom() {
		return "user/loginForm";
	}
	
	//////////////////////////////
	
	
	//데이터베이스 연동 메소드
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(HttpServletRequest req) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		
		String userId= req.getParameter("user_id");
		String userPw= req.getParameter("user_pw");
		String userNickname= req.getParameter("user_nickname");
		
		UserVO vo= new UserVO();
		vo.setUserId(userId);
		vo.setUserPw(userPw);
		vo.setUserNickname(userNickname);
		
		int result= userService.insertUser(vo);
		
		//TODO: result 값에 따라 응답하기
		
		HttpSession session= req.getSession();
		session.setAttribute("user", vo);
		return "user/profileSelectForm";
	}
	
	
	
	//////////////////////////////
	
}
