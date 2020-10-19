package com.jdbc.conn;
import java.sql.*;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

public class InfoOperate{
	private ConnectionClass connectionclass=null;
	private Connection conn=null;
	private Statement stmt=null;
	private PreparedStatement ptms=null;
	public InfoOperate(ConnectionClass connclass) {
		conn=connclass.getConn();//取得连接类中的statement对象
		stmt=connclass.getStatement();//取得连接类中的sql语句
		//这样,当实例化一个连接类 其中的connection已连接 statement已连接,即可使用
	}
	public Statement getstmt() {
		return stmt;
	}
	public PreparedStatement getptms(String sql) {
		try {
			ptms= conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ptms;
	}
	//注册
	public boolean insertUser(String userID,String password) {
		try {
			if(!selectID(userID)) {
				String sql="insert into web201800301177_user values ('"+userID+"','"+password+"',"+"0"+")";
				stmt.executeUpdate(sql);
			    String sql1 = "CREATE TABLE web201800301177_"+userID+"cart"+"(item varchar(50),"+"price double(7,2),"+"size double(4,2),"+"count INTEGER"+")"; 
			    stmt.executeUpdate(sql1);
				return true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//判断是否存在这个用户id
	public boolean selectID(String ID) {
		try {
			String sql="SELECT userID FROM web201800301177_user";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				String str=rs.getString("userID");
				if(ID.equals(str)) {
					return true;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;
	}
	//登录
	public boolean selectPassword(String userID,String password) {
		try {
			String sql="SELECT userID,password FROM web201800301177_user";
				ResultSet rs=stmt.executeQuery(sql);//返回结果集
				while(rs.next()){
					String pswd=rs.getString("password");
					String id=rs.getString("userID");
					if(userID.equals(id)&password.equals(pswd)) {
						return true;
					}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return false;	
	}
	//充值
	public void addmoney(String userID ,double money) {
		try {
			String sql1=("SELECT money FROM web201800301177_user where userID='"+userID+"'");
			ResultSet rs=stmt.executeQuery(sql1);
			while(rs.next()) {
				double moneyed=rs.getDouble("money");
				money += moneyed;
			}
			String sql2="update web201800301177_user set money="+money+" where userID='"+userID+"'";
			stmt.executeUpdate(sql2);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//加入购物车
	public void addtocart(String userID,String item,int count,int price,double size) {
		try {
			String sql1="select*from web201800301177_"+userID+"cart where item='"+item+"'and size="+size;
			ptms=this.getptms(sql1);
			ResultSet rs=ptms.executeQuery();
			String sql2;
			if(rs.next()) {
				int count1=rs.getInt("count");
				int price1=rs.getInt("price");
				count1+=count;
				price1+=price;
				sql2="update web201800301177_"+userID+"cart set count="+count1+",price="+price1+" where item='"+item+"'and size="+size;
			}
			else {
				sql2="insert into web201800301177_"+userID+"cart values ('"+item+"',"+price+","+size+","+count+")";
			}
			ptms=this.getptms(sql2);
			ptms.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//删除
	public void deleteItem(String userID,String item,double size) {
		try {
			String sql="DELETE FROM web201800301177_"+userID+"cart where item='"+item+"'and size="+size;
			ptms=this.getptms(sql);
			ptms.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//查询余额
	public double askmoney(String userID) {
		double moneyed=0;
		try {
			String sql1="SELECT money FROM web201800301177_user where userID='"+userID+"'";
			ptms=this.getptms(sql1);
			ResultSet rs=ptms.executeQuery();
			while(rs.next()) {
				moneyed=rs.getDouble("money");
			}
			return moneyed;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return moneyed;
	}
	//提交订单
	public void addtodingdan(String userID,String dingdan,double price) {
		try {
			String sql1="insert into web201800301177_dingdan values ('"+userID+"','"+dingdan+"',"+price+")";
			ptms=this.getptms(sql1);
			ptms.executeUpdate();
			
			double price1=0;
			String sql2="SELECT money FROM web201800301177_user where userID='"+userID+"'";
			ptms=this.getptms(sql2);
			ResultSet rs=ptms.executeQuery();
			while(rs.next()) {
				price1=rs.getDouble("money");
			}
			double price2=price1-price;
			System.out.println(price2);
			String sql3="update web201800301177_user set money = "+price2+" where userID='"+userID+"'";
			ptms=this.getptms(sql3);
			ptms.executeUpdate();
			
			String sql4="truncate table web201800301177_"+userID+"cart";
			ptms=this.getptms(sql4);
			ptms.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	//更新库存
	public void upstore(String item,int count) {
		int kucun = 0;
		try {
			String sql="select kucun from web201800301177_item where name='"+item+"'";
			ResultSet rs = this.getptms(sql).executeQuery();
			while(rs.next()) {
				kucun = rs.getInt("kucun");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		kucun = kucun - count;
		System.out.println(kucun);
		try {
			String sql1="update web201800301177_item set kucun = "+kucun+" where name='"+item+"'";
			ptms = this.getptms(sql1);
			ptms.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("ok");
	}
}




