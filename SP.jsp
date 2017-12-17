<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>欢迎光临</title>
<style type="text/css">
h1 {
    color: 	#FF0000;
}
</style>
</head>
 
<body>
<div align="center">
  <h1> 欢迎浏览商品 </h1>
  <form name="form1" method="post" action="gwc.jsp" target="">
    <table  border="1">
      <tr>
        <td   align="right"> 检索商品： </td>
        <td   align="left">&nbsp;
            <select name="SPName">
            <option value="fv215b(183)">fv215b(183) </option>
            <option value="amx elc"> amx elc </option>
            <option value="CV-6"> CV-6 </option>
            <option value="DF-31"> DF-31 </option>
            <option value="KV-152"> KV-152 </option>
            <option value=" type 62"> type 62 </option>
            <option value="《程序员的自我修养》"> 《程序员的自我修养》 </option>
            <option value="《c++:从入门到入坟》"> 《c++:从入门到入坟》 </option>
            <option value="《二十天学会java》"> 《二十天学会java》 </option>
            <option value="《三年高考五年模拟》"> 《三年高考五年模拟》 </option>
            <option value="《毛泽东选集》"> 《毛泽东选集》 </option>
            <option value="《他改变了中国》"> 《他改变了中国》 </option>
            </select>
        </td>
      </tr>
      

      <tr>
        <td   align="right"><input type="button" onclick="javascript:window.location='SJServlet.java'" value="商品详情"></td>
        <td   align="left">&nbsp;
         <input type="submit" name="sub" value="加入购物车"></td>
      </tr>
    </table><br>
    <input type="button" onclick="javascript:window.location='log.jsp'" value="返回登陆界面">
  </form>
</div>
</body>
</html>

