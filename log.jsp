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
  <marquee direction=right><h2><font color="orangered">�������������ԣ������������֮</font></h2></marquee> </br>
  <p align="center" style="color:red"><font size="7">��½ҳ��</font></p>
  <form align="center" action="http://localhost:8848/IS/servlet/login" method="get">
  <div style="position:absolute;width:500px;height:200px;top:200px;left:600px">
  <table  width="%" border="">
<tr>
<td>
    �����˺�:
  <input type="text" name="zh2" required="required"> 
  </td></tr><br><br>
  <tr>
<td>��������:
  <input type="text" name="mm2" required="required">    
  </td></tr><br><br>
  <tr>
<td>��֤�룺<input type="text" name="checks"/>
    <img alt="��֤��" id="imagecode" src="http://localhost:8848/IS/servlet/ing"/>
    <a href="javascript: reloadCode();">ˢ��</a></td></tr><br>
    <tr>
            <td colspan="2"> <input type="checkbox"><span>ʮ���ڼ�ס��¼״̬</span> </td>
           </tr>
    <tr align="center">
<td>
    <input type="button" onclick="location.href='http://localhost:8848/IS/M60.jsp'" value="ע��">
    <input type="submit" value="��½"></td></tr><br><br>
    <tr>
<td>
<input type="button" onclick="location.href='http://localhost:8848/IS/servlet/DBServlet'" value="��Ʒ���"></td></tr>
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