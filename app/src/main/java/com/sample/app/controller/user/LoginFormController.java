package com.sample.app.controller.user;

import com.sample.model2.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 *  요청 URI
 *  	/user/loginform.hta
 *  	/user/logintform.hta?error=fail
 *  	/user/logintform.hta?error=deny
 *  요청파라미터
 *  	없음
 *  반환값
 *  	user/loginform.jsp
 *  요청처리 내용
 *  	내부이동 시킬 jsp 페이지 이름을 반환한다.
 */
public class LoginFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return "user/loginform.jsp";
	}
}
