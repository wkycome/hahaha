package com.wky.system.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updatezhan
 */
@WebServlet("/Updatezhan")
public class Updatezhan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatezhan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("我来过了");
		request.setAttribute("username",request.getParameter("username"));
		request.setAttribute("password",request.getParameter("password"));
		request.setAttribute("gender",request.getParameter("gender"));
		request.setAttribute("phone",request.getParameter("phone"));
		request.setAttribute("email", request.getParameter("email"));
		request.setAttribute("userId",request.getParameter("userId"));
		
		
		request.getRequestDispatcher("/update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
