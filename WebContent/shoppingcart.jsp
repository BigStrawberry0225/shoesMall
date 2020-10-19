<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.jdbc.conn.*" %>
<% String userID = (String)session.getAttribute("userID");%>
<% InfoOperate userInfo = new InfoOperate(new ConnectionClass()); 
	String sql="SELECT*FROM web201800301177_"+userID+"cart";
	ResultSet rs=userInfo.getptms(sql).executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
<link href="css/shoppingcart2.css" rel="stylesheet" type="text/css"/>
<style>
a.one{color:#c0c0c0;}
a.one:hover {color:#ffcc00;}
a.one:active{color:#ff0000;}
</style>
<script>
	var error ='<%=request.getParameter("okay")%>';
	if(error=='yes'){
		alert("提交订单成功");
	}
	if(error=='no'){
		alert("购物车为空，请先添加商品到购物车！")
	}
	if(error=='false'){
		alert("余额不足，请充值！")
	}
function askmoney(){
	var money = <%=userInfo.askmoney(userID)%>
	alert("您的余额为"+money);
}
function addmoney(){
	var money1=prompt("请输入您要充值的金额：",'0');
	location.href="add_money?money="+money1;
}
</script>
</head>
<body>	
 <div id="header">
    <div id="list">
     <ul>
     	<li><a  href="index.jsp" class="active">首页</a>
  		<div class="dropdown">
    	<a href="index.jsp#star" class="dropbtn">球星上脚</a>
    	<div class="dropdown-content">
    	<a href="index.jsp#jms">勒布朗·詹姆斯</a>
   		<a href="index.jsp#ow">凯里·欧文</a>
    	<a href="index.jsp#dlt">凯文·杜兰特</a></div></div>
  		<div class="dropdown">
    	<a href="index.jsp#grand" class="dropbtn">品牌技术及代表鞋款</a>
    	<div class="dropdown-content">
      	<a href="index.jsp#nike"><img class="img" src="images/nike.jpg" height="70px"></a>
      	<a href="index.jsp#adidas"><img class="img" src="images/adidas.jpg" height="70px"></a>
      	<a href="index.jsp#lining"><img class="img" src="images/lining.jpg" height="70px"></a></div></div>
    	</ul>
   	</div>
   	<div id="daohang">
	<a class="one" href="shoppingcart.jsp">查看购物车</a>&nbsp;
	<a class="one" href="javascript:void(0);" onclick="askmoney()">查询余额</a>&nbsp;
	<a class="one" href="javascript:void(0);" onclick="addmoney()">充值</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<font color="yellow">欢迎您，<%= userID %></font>
	</div>
</div>
	
	<div id="cart-left">
	  <%double sum = 0;
  	while(rs.next()){
		int price=rs.getInt("price");
		double size=rs.getDouble("size");
		int count=rs.getInt("count");
		System.out.println(price+" "+size+" "+count);
		out.print("<div class=\"item\">");
		String item=rs.getString("item");
		out.print("<img src=\"images/item/"+item+".jpg\" height=\"170px\" >");
		switch(item){
		case "ow":
			out.print("<form action=\"delete_item?item=ow&size="+size+"\" method=\"post\">");
			out.print("Kyrie 6 EP&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		case "jms":
			out.print("<form action=\"delete_item?item=jms&size="+size+"\" method=\"post\">");
			out.print("LeBron XVII EP&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		case "dlt":
			out.print("<form action=\"delete_item?item=dlt&size="+size+"\" method=\"post\">");
			out.print("LeBron XVII EP&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		case "aj":
			out.print("<form action=\"delete_item?item=aj&size="+size+"\" method=\"post\">");
			out.print("Air Jordan XXXIV PF&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		case "hd":
			out.print("<form action=\"delete_item?item=hd&size="+size+"\" method=\"post\">");
			out.print("HARDEN VOL. 4 GCA&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		case "ys7":
			out.print("<form action=\"delete_item?size="+size+"&item=ys7\" method=\"post\">");
			out.print("音速7 V2篮球专业比赛鞋&nbsp;&nbsp;&nbsp;&nbsp;"+"<font size=\"-1\" color=#c0c0c0>￥"+price+"</font>");
			out.print("<p><font size=\"-1\" color=#c0c0c0> 男子篮球鞋</font></p>");
			out.print("<font size=\"-1\" color=#c0c0c0>尺码："+size+"&nbsp;&nbsp;&nbsp;&nbsp;数量："+count+"</font>");
			out.print("<br/><br/><input type=\"submit\" id=\"delete\" value=\"删除\">");
			out.print("</form></div>");
			break;
		}
		sum+=price;
	}
%>
</div>
	<%if(sum==0){
		out.print("<center><p><img style=\"float:none;\" src=\"images/18.gif\">");
		out.print("<font> 购物车空空如也，快去添加商品到购物车吧~</font></p></center>");
	}%>
<div id="cart-right">
	<div id="sum">
		<p style="text-align:center;"><font size="-1">总计：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥<%=sum%></font></p>
		<form action="dingdan?price=<%=sum%>" method="post">
		<p style="text-align:center;"><input id="sumbtn" type="submit" value="提交订单"></p>
		</form>
	</div>
</div>

</body>
</html>