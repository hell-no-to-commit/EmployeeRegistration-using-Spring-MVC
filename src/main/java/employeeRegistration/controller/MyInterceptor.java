package employeeRegistration.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MyInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Pre Handler Interceptor ran..!!");
		
		String name= request.getParameter("empName");
		
		if(name.length()<=2) {
			response.setContentType("text/html");
			response.getWriter().println("Name should atlease have 3 letters");
			return false;
		}
		return true;
	}

}
