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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 设置请求编码格式
		request.setCharacterEncoding("utf-8");
		// 设置响应格式
		response.setContentType("text/html;charset=utf-8");
		
		String	username =	request.getParameter("username");
		String 	passworld=	request.getParameter("userPassword");
		String u_gender =	request.getParameter("userGender");
		String phone= request.getParameter("userPhone");
		String	e_mail = request.getParameter("userEmail");
		
	String	userId=	request.getParameter("userId");
	System.out.println(userId);
		String puserId = request.getParameter("puserid");
		User user = new User(Integer.parseInt(userId),username,passworld,phone,e_mail,u_gender);
		
		Userservice service = new Userservice();
		service.updateUser(Integer.parseInt(puserId), user);
		
		request.getRequestDispatcher("/UserListServlet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
