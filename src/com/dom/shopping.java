package com.dom;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.conn.*;
@WebServlet("/shopping_cart")
public class shopping extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InfoOperate userInfo = new InfoOperate(new ConnectionClass());  
		HttpSession session = request.getSession(true);
		String userID = (String) session.getAttribute("userID");
		double size = Double.parseDouble(request.getParameter("size"));
	    int count = Integer.parseInt(request.getParameter("count"));
	    String item = request.getParameter("item");
	    int price = Integer.parseInt(request.getParameter("price"));
	    System.out.println("加入购物车");
	    price *= count;
	    userInfo.addtocart(userID, item, count, price, size);
	    request.getRequestDispatcher("/index.jsp?isok=yes").forward(request, response);	  
	}
/*	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InfoOperate userInfo = new InfoOperate(new ConnectionClass());  
		HttpSession session = request.getSession(true);
		String userID = (String) session.getAttribute("userID");
		double size = Double.parseDouble(request.getParameter("size"));
	    int count = Integer.parseInt(request.getParameter("count"));
	    String item = request.getParameter("item");
	    int price = Integer.parseInt(request.getParameter("price"));
	    System.out.println("加入购物车");
	    price *= count;
	    userInfo.addtocart(userID, item, count, price, size);
	    request.getRequestDispatcher("/index.jsp?isok=yes").forward(request, response);	  
	}*/
}
