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
  <p align="center"style="color:red"><img src="D:\BaiduNetdiskDownload\111.jpg" /><br><br><font size="7">�����������û�ע��</font></p>
    <form align="center" action="http://localhost:8848/IS/M61.jsp" method="POST">
    <table align="center" width="%" border="">
<tr>
<td> �����˺�:<input type="text" name="zh1" ><td></tr><br/>
<tr>
<td>
        ��������:<input type="text" name="mm1" ><td></tr><br/>
        <tr>
<td>
        �Ա�:<input type="radio" name="sex" value="male" checked>��   
     <input type="radio" name="sex" value="female">Ů<td></tr><br/>
<tr>
<td>��������:
<select name="����">
<script language="javascript">
for (i = 1930; i <= 2017; i++){
    document.write('<option   value="' + i + '">' + i + '</option>')
}
</script>
</select>
��
<select name="����">
<script language="javascript">
    for (i = 1; i <= 12; i++) {
        document.write('<option   value="' + i + '">' + i + '</option>')
    }
</script>
</select>
��
<select name="����">
<script language="javascript">
    for (i = 1; i <= 31; i++) {
        document.write('<option   value="' + i + '">' + i + '</option>')
    }
</script>
</select>
��
<td></tr>
<br/>
<tr>
<td>
��������:
<input type="text"  pattern="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"><td></tr>
<br>
         <tr>
<td>�绰����:<input type="text" ><td></tr><br/>
 <tr>
<td>
     <input type="submit" value="ע��">
<input type="reset"  value="����">
</tr><br/>
</table>

    </form><p align="center">
    �����˺ţ�<a href="http://localhost:8848/IS/log.jsp"><front color="GREEN" >���ֱ�ӵ�¼</front></a>
      </body>
</html>
