package com.mina.webproject.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class userController {

	@RequestMapping("/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@RequestMapping("/loginForm")
	public String loginFrom() {
		return "user/loginForm";
	}
	
	
}
