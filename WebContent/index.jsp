<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.jdbc.conn.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<% InfoOperate userInfo = new InfoOperate(new ConnectionClass()); 
	String sql="SELECT kucun FROM web201800301177_item";
	PreparedStatement ptms=null;
	ptms = userInfo.getptms(sql);
	ResultSet rs=ptms.executeQuery();
	rs.next();
%>
<%String userID = (String)session.getAttribute("userID");%>
<html>
<head>
<meta charset="UTF-8">
<title>曹铭哲的球鞋小屋</title>
<link href="css/index.css" rel="stylesheet" type="text/css"/>
<script>
	var error ='<%=request.getParameter("isok")%>';
	if(error=='yes'){
		alert("添加成功");
	}
	function addmoney(){
		var money1=prompt("请输入您要充值的金额：",'0');
		location.href="add_money?money="+money1;
	}
	function askmoney(){
		var money = <%=userInfo.askmoney(userID)%>
		alert("您的余额为"+money);
	}
	function add()
    {
       var num = parseInt(document.getElementById("count").value);
       if(num<100)
       {
          document.getElementById("count").value = ++num;
       }
    } 	
    function sub()
    {
       var num = parseInt(document.getElementById("count").value);
       if(num>1)
       {
          document.getElementById("count").value = --num;
       }
    }
    function add1()
    {
       var num = parseInt(document.getElementById("count1").value);
       if(num<100)
       {
          document.getElementById("count1").value = ++num;
       }
    }
    function sub1()
    {
       var num = parseInt(document.getElementById("count1").value);
       if(num>1)
       {
          document.getElementById("count1").value = --num;
       }
    }
    function add2()
    {
       var num = parseInt(document.getElementById("count2").value);
       if(num<100)
       {
          document.getElementById("count2").value = ++num;
       }
    }
    function sub2()
    {
       var num = parseInt(document.getElementById("count2").value);
       if(num>1)
       {
          document.getElementById("count2").value = --num;
       }
    }
    function add3()
    {
       var num = parseInt(document.getElementById("count3").value);
       if(num<100)
       {
          document.getElementById("count3").value = ++num;
       }
    }
    function sub3()
    {
       var num = parseInt(document.getElementById("count3").value);
       if(num>1)
       {
          document.getElementById("count3").value = --num;
       }
    }
    function add4()
    {
       var num = parseInt(document.getElementById("count4").value);
       if(num<100)
       {
          document.getElementById("count4").value = ++num;
       }
    }
    function sub4()
    {
       var num = parseInt(document.getElementById("count4").value);
       if(num>1)
       {
          document.getElementById("count4").value = --num;
       }
    }
    function add5()
    {
       var num = parseInt(document.getElementById("count5").value);
       if(num<100)
       {
          document.getElementById("count5").value = ++num;
       }
    }
    function sub5()
    {
       var num = parseInt(document.getElementById("count5").value);
       if(num>1)
       {
          document.getElementById("count5").value = --num;
       }
    }
</script>
<style>
	a.one{color:#c0c0c0;}
	a.one:hover {color:#ffcc00;}
	a.one:active{color:#ff0000;}
</style>
</head>
<body>
     <div id="header">
	     <div id="list">
	     <ul>
	     	<li><a  href="index.jsp" class="active">首页</a>
	  		<div class="dropdown">
	    	<a href="#star" class="dropbtn">球星上脚</a>
	    	<div class="dropdown-content">
	    	<a href="#jms">勒布朗·詹姆斯</a>
	   		<a href="#ow">凯里·欧文</a>
	    	<a href="#dlt">凯文·杜兰特</a></div></div>
	  		<div class="dropdown">
	    	<a href="#grand" class="dropbtn">品牌技术及代表鞋款</a>
	    	<div class="dropdown-content">
	      	<a href="#nike"><img src="images/nike.jpg" height="70px"></a>
	      	<a href="#adidas"><img src="images/adidas.jpg" height="70px"></a>
	      	<a href="#lining"><img src="images/lining.jpg" height="70px"></a></div></div>
     	</ul>
     	</div>
     	<div id="daohang">
     		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a class="one" href="shoppingcart.jsp">查看购物车</a>&nbsp;
			<a class="one" href="javascript:void(0);" onclick="askmoney()">查询余额</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<font color="yellow">欢迎您，<%= userID %></font>
		</div>
     </div>

    <div id="index">    	
    </div>
    
    <div id="star">
    	<div id="jms">
    		<div id="jms-left">
    		</div>
    		<div id="jms-middle">
    			<img src="images/item/jms.webp" height="250px">
    			<video autoplay loop="true" height="250px">
    			<source src="images/item/jms.webm" type="video/webm"></video>
    			
    			<p style="padding:20px;color:white; text-align:center;">LeBron XVII EP 篮球鞋依托勒布朗的力量和速度，塑就出众包覆性和支撑力，助你制霸赛场。组合缓震设计，为勒布朗带来出色减震支撑效果和灵敏响应回弹能量，助力畅享漫长赛季。</p>
    			<li style="padding:7px 10px;color:white;">显示颜色：黑/茄紫/阿马里洛黄/白色</li>
    			<li style="padding:7px 10px;color:white;">款式： BQ3178-004</li>
    		</div>
    		<div id="jms-right">
				<form class="staritem" action="shopping_cart?item=jms&price=1599" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥1,599</p>
					<p><font size="+3">LeBron XVII EP</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>
				</form>
    		</div>
    	</div>
    	<div id="ow">
    		<div id="ow-left">
    		</div>
    		<div id="ow-middle">
    			<img src="images/item/ow.webp" height="250px">
    			<img src="images/item/ow1.webp" height="250px">
    			<p style="padding:20px;color:white; text-align:center;">Kyrie 6 EP 篮球鞋采用匠心打造，专为凯里·欧文在球场上的变幻莫测创造力而设计。弹性缓震配置结合柔软但富有支撑力的泡棉，塑就灵敏响应力，营造从后跟到鞋头的平稳过渡。中足固定带和柔软加垫鞋口可有效锁定双足，助力在比赛中保持领先。</p>
    			<li style="padding:4px 18px;color:white;">显示颜色：华丽紫/多色</li>
    			<li style="padding:4px 18px;color:white;">款式： BQ4631-500</li>
    		</div>
    		<div id="ow-right">
    			<form class="staritem"action="shopping_cart?item=ow&price=999" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥999</p>
					<p><font size="+3">Kyrie 6 EP</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					<%rs.next(); %>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub1();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count1" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add1();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>

				</form>
    		</div>
    	</div>
    	<div id="dlt">
    		<div id="dlt-left">
    		</div>
    		<div id="dlt-middle">
    			<img src="images/item/dlt.webp" height="250px">
    			<video autoplay loop="true" height="250px">
    			<source src="images/item/dlt.webm" type="video/webm"></video>
    			
    			<p style="padding:20px;color:white; text-align:center;">凯文·杜兰特总能保持镇定自若，直到进攻时刻来临。他的比赛风格内敛沉稳，同时又充满爆发力，一旦发动进攻，便无可抵挡，所向披靡。Nike Zoom KD12 EP 采用全新缓震创新技术，结合凯文·杜兰特君临全场的进攻气势与源源能量，轻松驾驭整场比赛。</p>
    			<li style="padding:7px 18px;color:white;">显示颜色：黑/白色/金属银</li>
    			<li style="padding:7px 18px;color:white;">款式： AR4230-001</li>
    		</div>
    		<div id="dlt-right">
				<form class="staritem"action="shopping_cart?item=dlt&price=1599" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥1,599</p>
					<p><font size="+3">LeBron XVII EP</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					<%rs.next(); %>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub2();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count2" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add2();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>
				</form>
    		</div>
    	</div>
    </div>
    <div id="grand">
    	<div id="nike">
    		<div id="nike-left">
    		<center>
	    		<img alt="" src="images/nike.jpg" height="80px">
	    		<p><font color="white">1、Zoom Air</font></p>
	    		<p><font color="white">Zoom Air具有超轻超薄的特点，能够很好地吸收外来的振动与冲击压力，在篮球运动中能够带来很好的回弹缓震性能，同时有着很好的灵敏反应与出色的加速性.</font></p>
	    		<p><font color="white">2、Max Air</font></p>
	    		<p><font color="white">Max Air篮球鞋技术的减震性能非常好，能够在落地过程中缓冲球员的全身重量，能够为双脚提供很好地保护作用，而且会让鞋子非常轻盈.</font></p>
	    		<p><font color="white">3、Shox</font></p>
	    		<p><font color="white">Nike Shox是由上承托盘、弹力柱、下承托盘、前后掌与中底的连接组成。它的材料是由TPU和化学复合材料组成，外观犹如弹簧的气柱.</font></p>
    		</center>
    		</div>
    		<div id="nike-middle">&nbsp;
    			<img src="images/item/nike.webp" height="247px">
    			<video autoplay loop="true" height="247px">
    			<source src="images/item/nike.webm" type="video/webm"></video>
    			&nbsp;&nbsp;<img src="images/item/nike1.webp" height="247px">
    			<img src="images/item/nike2.webp" height="247px">
    		</div>
    		<div id="nike-right">
				<form class="staritem"action="shopping_cart?item=aj&price=1499" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥1,499</p>
					<p><font size="+3">Air Jordan XXXIV PF</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					<%rs.next(); %>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub3();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count3" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add3();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>
				</form>
    		</div>
    	</div>
    	<div id="adidas">
    		<div id="adidas-left">
    		<center>
	    		<img alt="" src="images/adidas.jpg" height="80px">
	    		<p><font color="white">1、Boost</font></p>
	    		<p><font color="white">Boost篮球鞋技术可以说是阿迪现在最火的技术了，它是由上千个E-TPU 构成的中底，有着弹性更足、更轻质、缓冲更强以及更耐久的优点。</font></p>
	    		<p><font color="white">2、Bounce</font></p>
	    		<p><font color="white">Bounce技术一般会使用泡面塑料为基本材料，因此能够为球员在激烈的比赛中最大限度的能量转化和移动动力，同时给予脚部最大程度的缓冲作用.</font></p>
	    		<p><font color="white">3、天足</font></p>
	    		<p><font color="white">天足篮球鞋技术能够让球员感受到很舒适的脚感，犹如脚直接踩在地面上，整体造型也更加的圆滑流线话，让鞋子更加合脚。</font></p>
    		</center>
    		</div>
    		<div id="adidas-middle">&nbsp;
    			<img src="images/item/adidas.jpg" height="200px">
    			<img src="images/item/adidas1.jpg" height="200px">
    			&nbsp;&nbsp;<img src="images/item/adidas2.jpg" height="200px">
    			<img src="images/item/adidas3.jpg" height="200px">
    		    <li style="padding:10px 20px;color:white;">显示颜色：1号黑色/纯质灰</li>
    			<li style="padding:10px 20px;color:white;">款式： FV5572</li>
    		</div>
    		<div id="adidas-right">
				<form class="staritem"action="shopping_cart?item=hd&price=1399" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥1,399</p>
					<p><font size="+3">HARDEN VOL. 4 GCA</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					<%rs.next(); %>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub4();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count4" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add4();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>
				</form>
    		</div>
    	</div>
    	<div id="lining">
    		<div id="lining-left">
    		<center>
	    		<img alt="" src="images/lining.jpg" height="80px">
	    		<p><font color="white">1、云减震</font></p>
	    		<p><font color="white">李宁云减震篮球鞋技术主要使用在篮球鞋的中底，能够有效积累运动时足部受到的冲击力，并转化为回弹的能量，为球员带来源源不断的动力以及专业保护。</font></p>
	    		<br/><br/><br/><br/>
	    		<p><font color="white">2、Herringbone人字型外底技术。</font></p>
	    		<p><font color="white">篮球鞋外底花纹的最经典之作。这种底纹没有增加鞋子的高度，却使得球鞋的性能更加稳定。</font></p>
    		</center>
    		</div>
    		<div id="lining-middle">&nbsp;
    			<img src="images/item/lining.jpg" height="200px">
    			<img src="images/item/lining1.jpg" height="200px">
    			&nbsp;&nbsp;<img src="images/item/lining2.jpg" height="200px">
    			<img src="images/item/lining3.jpg" height="200px">
    			<br/><p style="text-align:center;"><font color="yellow">已经到底啦♪(^∇^*)点击</font><a href="#header" class="return">返回顶部</a></p>
    		</div>
    		<div id="lining-right">
				<form class="staritem"action="shopping_cart?item=ys7&price=599" method="post">
					<p><font size="+1">男子篮球鞋</font>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥599</p>
					<p><font size="+3">音速7 V2篮球专业比赛鞋</font></p>
					<p><font size="+1" >选择尺码</font></p>
					EU 40<input type="radio" name="size" value="40" checked/>
					EU 40.5<input type="radio" name="size" value="40.5"/>
					EU 41<input type="radio" name="size" value="41"/>
					EU 42<input type="radio" name="size" value="42"/>
					EU 42.5<input type="radio" name="size" value="42.5"/>
					EU 43<input type="radio" name="size" value="43"/>
					EU 44<input type="radio" name="size" value="44"/>
					EU 44.5<input type="radio" name="size" value="44.5"/>
					EU 45<input type="radio" name="size" value="45"/>
					EU 46<input type="radio" name="size" value="45"/>
					EU 47<input type="radio" name="size" value="45"/>
					<br/>
					<center>
					<%rs.next(); %>
					库余量：<%=rs.getInt("kucun") %>
					<br/><br/>
					购买数量：<span id="sub" onclick="sub5();">&nbsp;-&nbsp;</span>&nbsp;&nbsp;<input type="text" id="count5" name="count" value="1" size="1"/>&nbsp;&nbsp;<span id="add" onclick="add5();">+&nbsp;</span>
					<br/><br/>
					<input type="submit" value="加入购物车" />
					</center>
				</form>
    		</div>
    	</div>
    </div>





    <div id="footer">
    </div>
</body>
</html>
