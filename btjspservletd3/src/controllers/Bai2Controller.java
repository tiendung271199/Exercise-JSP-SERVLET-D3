package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bai-tap-2")
public class Bai2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Bai2Controller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		if (name != "") {
			request.setAttribute("ten", name);
		}
		
		RequestDispatcher dp = request.getRequestDispatcher("/baitap2/index.jsp");
		dp.forward(request, response);
	}

}
