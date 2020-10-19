package com.dom;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.conn.ConnectionClass;
import com.jdbc.conn.InfoOperate;

/**
 * Servlet implementation class addmoney
 */
@WebServlet("/add_money")
public class addmoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InfoOperate userInfo = new InfoOperate(new ConnectionClass());
   		HttpSession session = request.getSession(true);
   		String userID=(String) session.getAttribute("userID");
   		double money = Double.parseDouble(request.getParameter("money"));
		String sql1=("SELECT money FROM web201800301177_user where userID='"+userID+"'");
		ResultSet rs;
		try {
			double moneyed;
			rs = userInfo.getptms(sql1).executeQuery();
			while(rs.next()) {
				moneyed=rs.getDouble("money");
				money += moneyed;
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
   		String sql="update web201800301177_user set money="+money+" where userID='"+userID+"'";
		try {
			userInfo.getptms(sql).executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/shoppingcart.jsp").forward(request, response);
/*		response.sendRedirect(request.getHeader("Referer"));
*/   	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
