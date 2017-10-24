package edu.td.filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {
        // TODO Auto-generated method stub

    }

    
	public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        // 获得在下面代码中要用的request,response,session对象
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
   

        // 获得用户请求的URI
        String path = servletRequest.getRequestURI();
   
        
      
        
       Cookie userCookie[]=servletRequest.getCookies();
       
       String check=userCookie[2].getValue();
       String role=userCookie[3].getValue();
       
       
        
        // 登录页面无需过滤
        if(path.indexOf("/login.jsp") > -1) {
            chain.doFilter(servletRequest, servletResponse);
            return;
        }

        // 判断如果没有取到cookie信息,就跳转到登录页面
        
        try
        {
        	if  ( check.equals("Studentpass")&&role.equals("1") ||
        		  check.equals("Guidpass")&&role.equals("2") ||
        		  check.equals("Departpass")&&role.equals("3") ||
        		  check.equals("Adminpass")&&role.equals("4")
        		) 
        			{
        				// 已经登录
        				chain.doFilter(request, response);
               
        			} 
        	
        	else {
              
        					// 禁止非法操作或超时强制重新登录
        				servletResponse.sendRedirect("../Timeout.jsp");
        			}
        }
        
        catch(Exception e)
        	{
        		e.printStackTrace();
        	}
        
        

    }

    

	public void destroy() {
        // TODO Auto-generated method stub

    }

}