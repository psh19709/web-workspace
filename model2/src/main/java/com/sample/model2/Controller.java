package com.sample.model2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * 모든 컨트롤러 구현 클래스가 구련할 추상메소드가 정의된 인터페이스다.<br />
 * 모든 컨트롤러 구현 클래스의 사용법을 통일시키기 위해서 정의된 인터페이스다.
 * @author tnth0
 *
 */
public interface Controller {
	 
	String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;

}
