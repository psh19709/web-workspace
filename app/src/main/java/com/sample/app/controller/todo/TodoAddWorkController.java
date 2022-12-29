package com.sample.app.controller.todo;

import com.sample.app.dao.TodoWorkDao;
import com.sample.app.vo.Work;
import com.sample.model2.Controller;
import com.sample.util.StringUtils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TodoAddWorkController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String loginUserId = (String)session.getAttribute("loginUserId");
		
		if(loginUserId == null) {
			return "redirect:/app/user/loginform.hta?error=deny";
		}
		
		int todoNo = StringUtils.stringToInt(request.getParameter("todoNo"));
		String content = request.getParameter("content");
		
		Work work = new Work();
		work.setUserId(loginUserId);
		work.setContent(content);
		work.setTodoNo(todoNo);
		
		TodoWorkDao todoWorkDao = TodoWorkDao.getInstance();
		todoWorkDao.insertWork(work);
		
		return "redirect:detail.hta?todoNo=" + todoNo;
	}
}
