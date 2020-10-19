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

@WebServlet("/dingdan")
public class dingdan_sub extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InfoOperate userInfo = new InfoOperate(new ConnectionClass());
		HttpSession session = request.getSession(true);
		String userID = (String) session.getAttribute("userID");
		double price = Double.parseDouble(request.getParameter("price"));
		String sql="SELECT*FROM web201800301177_"+userID+"cart";
		String sql1="select money from web201800301177_user where userID='"+userID+"'";
		try {
			ResultSet rs=userInfo.getptms(sql1).executeQuery();
			while(rs.next()) {
				double money = rs.getDouble("money");
				if(money<price) {
					request.getRequestDispatcher("/shoppingcart.jsp?okay=false").forward(request, response);
					return;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String dingdan="";
		boolean ok = false;
		try {
			ResultSet rs=userInfo.getptms(sql).executeQuery();
			while(rs.next()) {
				ok=true;
				String item = rs.getString("item");
				double size=rs.getDouble("size");
				int count=rs.getInt("count");
				dingdan += item+"尺码:"+size+"数量:"+count+";";
				userInfo.upstore(item, count);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ok) {
			userInfo.addtodingdan(userID, dingdan, price);			
			request.getRequestDispatcher("/shoppingcart.jsp?okay=yes").forward(request, response);
		}else request.getRequestDispatcher("/shoppingcart.jsp?okay=no").forward(request, response);
	}
}
