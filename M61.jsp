<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    
    <title>�û���½ҳ��</title>
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
				<li><a href="http://localhost:8848/IS/t99.jsp">��ҳ</a></li>
				<li><a href="#" >���ʻ</a></li>
				<li><a href="person.jsp">��������</a></li>
				<li><a href="#" >�������</a></li>
				<li><a href="#" >����</a></li>
				<li class="search">
				<a class="search_pic"></a>
				</li>
				<li class="list">
					<a></a>
				</li>
			</ul>
			<!-- ���� -->
			<form action="">
				<div class="search_main">
					<button class="search_btn" type="submit"></button>
					<input class="search_text" type="text" placeholder="����">
					<span class="close_btn"></span>
				</div>
			</form>
			<!-- ��Ա��¼ -->
			<div class="member">
				<p>��Ա����</p>
				<ul>
					<li>
						<img src="${pageContext.request.contextPath}/img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/log.jsp">��¼</a>
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/img/huiyuan1.png" alt="">
						<a href="http://localhost:8848/IS/M60.jsp">�»�Աע��</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
<script>
$(function(){
	/*����*/
	$(".search_pic").click(function(){
		$(".headernav").fadeOut(500);
		$(".search_main").fadeIn(1000);
	});
	$(".search_main .close_btn").click(function(){
		$(".search_main").fadeOut(500);
		$(".headernav").fadeIn(1000);
	});
	/*��¼*/
	$(".list a").click(function(){
		$(".member").slideToggle(500);
	});

});
</script>
  </head>
  
  <body>
   <%
        String u = null;
		String m = null;
		u = request.getParameter("zh1");
		m = request.getParameter("mm1");
		request.getSession().setAttribute("zhm",u);
		request.getSession().setAttribute("mmm",m);
		
		out.println("ע��ɹ��������ת");
		out.println("<input type='button'  onclick=\"location.href='http://localhost:8848/IS/log.jsp'\" value='��ת'>");
    %> 
  </body>
</html>
