package com.wky.system.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wky.system.entity.User;
import com.wky.system.service.Userservice;

/**
 * Servlet implementation class Registerservler
 */
@WebServlet("/Registerservlet")
public class Registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registerservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置请求编码格式
		request.setCharacterEncoding("utf-8");
		// 设置响应格式
		response.setContentType("text/html;charset=utf-8");
		String username = (String) request.getParameter("username");
		String passworld = (String) request.getParameter("userPassword");
		String phone = (String) request.getParameter("userPhone");
		String e_mail = (String) request.getParameter("userEmail");
		String u_gender = (String)request.getParameter("userGender");
		String userId = (String) request.getParameter("userId");
		User user = new User(Integer.parseInt(userId),username,passworld,phone,e_mail,u_gender);
		
		// 调用service中的方法进行登录
		Userservice service = new Userservice();
		
		service.addUser(user);
		
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
