package com.sample.app.controller.todo;

import java.util.Date;

import com.sample.app.dao.TodoDao;
import com.sample.app.vo.Todo;
import com.sample.model2.Controller;
import com.sample.util.StringUtils;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TodoModifyController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		String loginUserId = (String) session.getAttribute("loginUserId");
		if(loginUserId == null) {
			return "redirect:/app/user/loginform.hta?error=deny";
		}
		
		int todoNo = StringUtils.stringToInt(request.getParameter("todoNo"));
		int categoryNo = StringUtils.stringToInt(request.getParameter("categoryNo"));
		String title = request.getParameter("title");
		Date beginDate = StringUtils.textToDate(request.getParameter("beginDate"));
		Date endDate = StringUtils.textToDate(request.getParameter("endDate"));
		String status = request.getParameter("status");
		String description = request.getParameter("description");
		
		TodoDao todoDao = TodoDao.getInstance();
		Todo todo = todoDao.getTodoByNo(todoNo);
		
		if(!todo.getUserId().equals(loginUserId)) {
			return "redirect:detail.hta?todoNo=" + todoNo + "&error=deny";
		}
		
		todo.setCategoryNo(categoryNo);
		todo.setTitle(title);
		todo.setBeginDate(beginDate);
		todo.setEndDate(endDate);
		todo.setStatus(status);
		
		if("완료".equals(status) && todo.getCompleteDate()) {
			todo.setCompleteDate(new Date());
		}
		todo.setDescription(description);
		
		todoDao.updateTodo(todo);
		
		return "redirect:detail.hta?todoNo" + todoNo;
	}
}
