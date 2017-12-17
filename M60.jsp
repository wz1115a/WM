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
  <p align="center"style="color:red"><img src="D:\BaiduNetdiskDownload\111.jpg" /><br><br><font size="7">夹竹桃外卖用户注册</font></p>
    <form align="center" action="http://localhost:8848/IS/M61.jsp" method="POST">
    <table align="center" width="%" border="">
<tr>
<td> 输入账号:<input type="text" name="zh1" ><td></tr><br/>
<tr>
<td>
        输入密码:<input type="text" name="mm1" ><td></tr><br/>
        <tr>
<td>
        性别:<input type="radio" name="sex" value="male" checked>男   
     <input type="radio" name="sex" value="female">女<td></tr><br/>
<tr>
<td>出生日期:
<select name="生日">
<script language="javascript">
for (i = 1930; i <= 2017; i++){
    document.write('<option   value="' + i + '">' + i + '</option>')
}
</script>
</select>
年
<select name="生日">
<script language="javascript">
    for (i = 1; i <= 12; i++) {
        document.write('<option   value="' + i + '">' + i + '</option>')
    }
</script>
</select>
月
<select name="生日">
<script language="javascript">
    for (i = 1; i <= 31; i++) {
        document.write('<option   value="' + i + '">' + i + '</option>')
    }
</script>
</select>
日
<td></tr>
<br/>
<tr>
<td>
电子邮箱:
<input type="text"  pattern="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"><td></tr>
<br>
         <tr>
<td>电话号码:<input type="text" ><td></tr><br/>
 <tr>
<td>
     <input type="submit" value="注册">
<input type="reset"  value="重置">
</tr><br/>
</table>

    </form><p align="center">
    您有账号？<a href="http://localhost:8848/IS/log.jsp"><front color="GREEN" >点击直接登录</front></a>
      </body>
</html>
