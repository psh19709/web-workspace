package com.sample.controllers;

import java.util.Date;

import com.sample.model2.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FmtController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("money", 1234567890);
		request.setAttribute("today", new Date());

		return "fmt.jsp";
	}
}
