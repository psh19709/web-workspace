package com.sample.app.controller.todo;

import com.sample.app.dao.TodoDao;
import com.sample.app.vo.Todo;
import com.sample.model2.Controller;
import com.sample.util.StringUtils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TodoModifyFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String loginUserId = (String)session.getAttribute("loginUserId");
		if(loginUserId == null ) {
			return "redirect:/app/user/loginform.hta?error=deny";
		}
		
		int todoNo = StringUtils.stringToInt(request.getParameter("todoNo"));
		TodoDao todoDao = TodoDao.getInstance();
		Todo todo = todoDao.getTodoByNo(todoNo);
		if(todo == null ) {
			return "redirect:list.hta";
		}
		if(!todo.getUserId().equals(loginUserId)) {
			return "redirect:detail.hta?todoNo=" + todoNo + "&error=todo";
		}
		
		request.setAttribute("todo", todo);
		
		return "todo/modifyform.jsp";
	}
}
