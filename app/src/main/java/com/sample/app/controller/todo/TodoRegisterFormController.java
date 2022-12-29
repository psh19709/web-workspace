package com.sample.app.controller.todo;

import java.util.List;

import com.sample.app.dao.TodoCategoryDao;
import com.sample.app.vo.Category;
import com.sample.model2.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class TodoRegisterFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		if(session.getAttribute("loginUserId") == null) {
			return "redirect:/app/user/loginform.hta?fail=deny";
		}
		
		TodoCategoryDao todoCategoryDao = TodoCategoryDao.getInstance();
		List<Category> categories = todoCategoryDao.getAllCategories();
		
		
		request.setAttribute("categories", categories);
		
		return "todo/form.jsp";
	}
}
