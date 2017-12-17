<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>欢迎浏览商品</title>
        <jsp:useBean id="Goods" scope="session" class="ps.GDServlet" />
        <style type="text/css">
td {
    color: #333;
    font-family: "Microsoft YaHei", Verdana, sans-serif;
    width: 100px;
    border-bottom-width: 1px;
    border-bottom-style: groove;
    border-bottom-color: #666;
}
 
table {
    width: 500px;
    text-align: center;
    margin-right: auto;
    margin-left: auto;
    border: 2px solid #666;
}
 
h1 {
    color: #FF0000;
}
</style>
    </head>
    <%
        //设置编码格式
        request.setCharacterEncoding("gbk");
        //获取所要添加到购物车的商品名称和数量
        String sName = request.getParameter("SPName");
        
        String s1 = "商品名";
        String s2 = "数量";
        String s4 = "操作";
        //根据商品名称是否为空判断是否需要保存商品信息
        if (sName != null && sName != "") {
            Goods.add(sName, 1);
        }
 
        Hashtable h = Goods.show();
        //获取购物车中所有商品名称
        Enumeration e = h.keys();
    %>
    <body>
        <div align="center">
            <h1>购物车清单</h1>
            <hr color="red"/>
            <table border="1">
            <tr>
            <td><%=s1%></td>
            <td><%=s2%></td>
            <td><%=s4%></td>
            </tr>
            
                <%
                    while (e.hasMoreElements()) {
                    //根据商品名称获取商品数量
                    String s = e.nextElement().toString();
                    int p = ((Integer) h.get(s)).intValue();
                %>
                <tr>
                
                    <td><%=s%>:</td>
                    <td><%=p%></td>
                    
                    <td>
                            <br>
                            <form action="delete.jsp" method="post">
                            <input name="dName" type="hidden" value="<%=s%>">
                            <input name="delete" type="submit" value="删除">
                            </form>
                    </td>
                    
                </tr>
                <%}%>
                </table>
            
            <p>
                    <input type="button" name="goon" value="继续浏览"
                    onClick="javascript:window.location='SP.jsp'">
            </p>
            
        </div>
    </body>
</html>
