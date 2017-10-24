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
        // ��������������Ҫ�õ�request,response,session����
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
   

        // ����û������URI
        String path = servletRequest.getRequestURI();
   
        
      
        
       Cookie userCookie[]=servletRequest.getCookies();
       
       String check=userCookie[2].getValue();
       String role=userCookie[3].getValue();
       
       
        
        // ��¼ҳ���������
        if(path.indexOf("/login.jsp") > -1) {
            chain.doFilter(servletRequest, servletResponse);
            return;
        }

        // �ж����û��ȡ��cookie��Ϣ,����ת����¼ҳ��
        
        try
        {
        	if  ( check.equals("Studentpass")&&role.equals("1") ||
        		  check.equals("Guidpass")&&role.equals("2") ||
        		  check.equals("Departpass")&&role.equals("3") ||
        		  check.equals("Adminpass")&&role.equals("4")
        		) 
        			{
        				// �Ѿ���¼
        				chain.doFilter(request, response);
               
        			} 
        	
        	else {
              
        					// ��ֹ�Ƿ�������ʱǿ�����µ�¼
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