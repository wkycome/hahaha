package com.wky.system.web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wky.system.entity.User;
import com.wky.system.service.Userservice;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Loginservlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 获取全局参数配置
				ServletContext context = request.getServletContext();
				/*String encoding = context.getInitParameter("encoding");*/

				// 设置请求编码格式
				request.setCharacterEncoding("utf-8");
				// 设置响应格式
				response.setContentType("text/html;charset=utf-8");

				// 获取请求参数
				String name = request.getParameter("username");
				String password = request.getParameter("password");
				System.out.println(name);
				System.out.println(password);
				// 调用service中的方法进行登录
				Userservice service = new Userservice();
				// service.longin(name, password);
				// 登录验证, 通过名称和密码来查找用户
				User user= service.findEmpByNameAndPassword(name, password);

				if (user != null) {
					// 把登录用户存入到session中, 表示开启了一次会话
					HttpSession session = request.getSession();
					session.setAttribute("user", user);

					response.getWriter().write("登录成功, 3s后回到主页...");
					// response.setHeader(name, value);
					response.setHeader("refresh","3;"+context.getContextPath() + "/index2.jsp");
					//response.sendRedirect(context.getContextPath() + "/index.html");

					return;
				} else {
					// 请求转发, 把错误信息转发到前端页面进行展示

					request.setAttribute("error_msg", "账号或密码有误, 请检查后登录");

					request.getRequestDispatcher("/login.jsp").forward(request, response);

					return;
				}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
