package com.sample.model2;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import com.sample.controllers.CoreController;
import com.sample.controllers.FmtController;
import com.sample.controllers.HomeController;
import com.sample.controllers.ListController;
import com.sample.controllers.LoginFormController;
import com.sample.controllers.RegisterFormController;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	private Map<String, Controller> controllerMap = new HashMap<>();
	
	/**
	 * 서블릿의 초기화 메소드다.<br/>
	 * 서블릿 객체가 생성되면 톰캣이 딱 한번 호출해서 서블릿을 초기화시킨다.<br/>
	 */
	public void init(ServletConfig config) throws ServletException {
		controllerMap.put("/home.hta", new HomeController());
		controllerMap.put("/register-form.hta", new RegisterFormController());
		controllerMap.put("/login-form.hta", new LoginFormController());
		controllerMap.put("/list.hta", new ListController());
		controllerMap.put("/core.hta", new CoreController());
		controllerMap.put("/fmt.hta", new FmtController());
	}
	
	@Override
	   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      //System.out.println("### FrontController의 service(request, response) 메소드 실행.");
	     
	      ///////////////////////////////////////////////////////////////////////////////////
	      // 요청 URI 분석하기
	      ///////////////////////////////////////////////////////////////////////////////////

	      // Context Path(웹어플리케이션을 구분하는 고유한 경로다. 보통은 프로젝트명과 동일하다.) 조회하기
	      String contextPath = request.getContextPath();
	      // 요청 URI 조회하기
	      String requestURI = request.getRequestURI();
	      requestURI = requestURI.replace(contextPath, "");
	      //System.out.println("### 요청 URI: " + requestURI);
	      
	      ///////////////////////////////////////////////////////////////////////////////////
	      // 컨트롤러 실행하기
	      ///////////////////////////////////////////////////////////////////////////////////
	      try {
	    	  // HashMap 객체에 저장된 Controller 인터페이스 구현객체 꺼내기
		      Controller controller = controllerMap.get(requestURI);
		      // 조회된 컨트롤러 객체의 execute(request, response);
		     String viewName = controller.execute(request, response);
		     
		     // 지정된 뷰페이지(viewName)으로 클라이언트의 요청을 이동시킨다.
		     // 즉, JSP를 실행시키는 것이다.
		     viewName = "/WEB-INF/views/" + viewName;
		     RequestDispatcher requestDispatcher = request.getRequestDispatcher(viewName);
		     requestDispatcher.forward(request, response);
	      } catch(Exception e) {
	    	  throw new ServletException(e);
	      }
	      
	   }
}
