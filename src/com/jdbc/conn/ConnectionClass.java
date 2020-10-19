package com.jdbc.conn;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionClass {
	private Connection conn = null;
	private Statement statement = null;
	private ResultSet rs=null;
	private String DBDriver;
	private String user;
	private String password;
	private String url;
	public ConnectionClass() {
		try{
			DBDriver="com.mysql.jdbc.Driver";
			Class.forName(DBDriver);
			user="webteach";
			password="webteach";
			url="jdbc:mysql://202.194.14.120:3306/webteach?useUnicode=true&characterEncoding=utf8";
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("数据库连接成功");
			statement=conn.createStatement();
		}catch(ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		}
	}
	public Connection getConn() {
		return conn;
	}
	public Statement getStatement() {
		return statement;
	}
	public void closeConn() {
		try {
			if(conn!=null) {
				conn.close();
			}
			if(statement!=null) {
				statement.close();
			}
			if(rs!=null) {
			}
			System.out.println("数据库关闭连接");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public static void main(String []args) {
		new ConnectionClass();
	}
}
