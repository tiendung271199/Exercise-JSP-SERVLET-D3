package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bai-tap-3")
public class Bai3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final double PI = 3.14;

	public Bai3Controller() {
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

		String bk = request.getParameter("bankinh");
		String dt = request.getParameter("dientich");
		double dienTich = 0.0d;
		double banKinh = 0.0d;

		if (dt != "" && bk == "") {
			dienTich = (double) Math.round(Double.parseDouble(dt) * 100) / 100;
			dienTich = Math.abs(dienTich);
			banKinh = Math.sqrt(dienTich / PI);
			banKinh = (double) Math.round(banKinh * 100) / 100;
			request.setAttribute("dt", Double.toString(dienTich));
			request.setAttribute("bk", Double.toString(banKinh));
		} else if (dt == "" && bk != "") {
			banKinh = (double) Math.round(Double.parseDouble(bk) * 100) / 100;
			banKinh = Math.abs(banKinh);
			dienTich = PI * Math.pow(banKinh, 2);
			dienTich = (double) Math.round(dienTich * 100) / 100;
			request.setAttribute("dt", Double.toString(dienTich));
			request.setAttribute("bk", Double.toString(banKinh));
		} else {
			request.setAttribute("thongbao", "Nhập sai! Vui lòng nhập lại!");
		}

		RequestDispatcher dp = request.getRequestDispatcher("/baitap3/index.jsp");
		dp.forward(request, response);
	}

}
