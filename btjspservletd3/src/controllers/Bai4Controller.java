package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bai-tap-4")
public class Bai4Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Bai4Controller() {
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

		String doanVanGoc = request.getParameter("doanvan");
		String tuGoc = request.getParameter("tugoc");
		String tuThayThe = request.getParameter("thaythe");
		request.setAttribute("goc", doanVanGoc);
		request.setAttribute("tg", tuGoc);
		request.setAttribute("ttt", tuThayThe);

		String doanVanThayThe = doanVanGoc.replace(tuGoc, tuThayThe);
		request.setAttribute("kq", doanVanThayThe);

		RequestDispatcher dp = request.getRequestDispatcher("/baitap4/index.jsp");
		dp.forward(request, response);
	}

}
