<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    
    <title>用户登陆页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/head.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

  </head>
  
  <body background="img/body_bg.jpg">

<div class="header">
		<div class="headerinner">
			<ul class="headernav">
				<li class="logo">
					<img src="${pageContext.request.contextPath}/img/logo.png" alt="" />
				</li>
				<li><a href="http://localhost:8848/IS/t99.jsp">首页</a></li>
				<li><a href="#" >精彩活动</a></li>
				<li><a href="person.jsp">个人中心</a></li>
				<li><a href="#" >意见反馈</a></li>
				<li><a href="#" >关于</a></li>
				<li class="search">
				<a class="search_pic"></a>
				</li>
				<li class="list">
					<a></a>
				</li>
			</ul>
			<!-- 搜索 -->
			<form action="">
				<div class="search_main">
					<button class="search_btn" type="submit"></button>
					<input class="search_text" type="text" placeholder="搜索">
					<span class="close_btn"></span>
				</div>
			</form>
			<!-- 会员登录 -->
			<div class="member">
				<p>会员中心</p>
				<ul>
					<li>
						<img src="${pageContext.request.contextPath}/img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/log.jsp">登录</a>
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/M60.jsp">新会员注册</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
<script>
$(function(){
	/*搜索*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*登录*/
	$(".list a").click(function(){
		$(".member").slideToggle(500);
	});

});
</script>
  </head>
  
  <body>
  <marquee direction=right><h2><font color="orangered">苟利国家生死以，岂因祸福避趋之</font></h2></marquee> </br>
  <p align="center" style="color:red"><font size="7">登陆页面</font></p>
  <form align="center" action="http://localhost:8848/IS/servlet/login" method="get">
  <div style="position:absolute;width:500px;height:200px;top:200px;left:600px">
  <table  width="%" border="">
<tr>
<td>
    输入账号:
  <input type="text" name="zh2" required="required"> 
  </td></tr><br><br>
  <tr>
<td>输入密码:
  <input type="text" name="mm2" required="required">    
  </td></tr><br><br>
  <tr>
<td>验证码：<input type="text" name="checks"/>
    <img alt="验证码" id="imagecode" src="http://localhost:8848/IS/servlet/ing"/>
    <a href="javascript: reloadCode();">刷新</a></td></tr><br>
    <tr>
            <td colspan="2"> <input type="checkbox"><span>十天内记住登录状态</span> </td>
           </tr>
    <tr align="center">
<td>
    <input type="button" onclick="location.href='http://localhost:8848/IS/M60.jsp'" value="注册">
    <input type="submit" value="登陆"></td></tr><br><br>
    <tr>
<td>
<input type="button" onclick="location.href='http://localhost:8848/IS/servlet/DBServlet'" value="商品浏览"></td></tr>
</table>
</div>
    </form>
    
    <script type="text/javascript">
		function reloadCode(){
			var time = new Date().getTime();
			document.getElementById("imagecode").src="http://localhost:8848/IS/servlet/ing?d="+time;
		}
	</script>

	 <marquee>               
	  <img src="img\s0.jpg" width="150" height="150"> 
          <img src="img\s1.jpg" width="150" height="150">
<img src="img\s2.jpg" width="150" height="150">
<img src="img\s3.jpg" width="150" height="150">  
<img src="img\s4.jpg" width="150" height="150">
<img src="img\s5.jpg" width="150" height="150">   
<img src="img\s6.jpg" width="150" height="150">  
<img src="img\s7.jpg" width="150" height="150">  
<img src="img\s8.jpg" width="150" height="150">             
	 </marquee> 
	 
	 
	 
	 
	 
  </body>
</html>