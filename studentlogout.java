package com.mvc.controller;
import java.io.PrintWriter;  
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class studentlogout
 */
public class studentlogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public studentlogout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			
			request.getRequestDispatcher("studentlogin.jsp").include(request, response); 
			HttpSession session= request.getSession(false);
			session.invalidate();
			
	              
	            out.close();  
	         //   response.sendRedirect(request.getContextPath()+"/studentlogin.jsp");
	}

}
