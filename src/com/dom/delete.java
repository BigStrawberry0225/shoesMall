package com.dom;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.conn.*;
@WebServlet("/delete_item")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InfoOperate userInfo = new InfoOperate(new ConnectionClass());
		System.out.println("删除");
		HttpSession session = request.getSession(true);
		String userID = (String) session.getAttribute("userID");
	    String item = request.getParameter("item");
	    double size = Double.parseDouble(request.getParameter("size"));
	    userInfo.deleteItem(userID,item,size);
	    request.getRequestDispatcher("/shoppingcart.jsp").forward(request, response);	  
	}
}
