<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>欢迎光临购物车</title>
        <jsp:useBean id="Goods" scope="session" class="ps.GDServlet" />
    </head>
    <body>
        <div align="center">
            <h1>购物车清单</h1>
            <%
                request.setCharacterEncoding("utf-8");
                //获得要删除的商品名
                String sGoodsName = request.getParameter("dName");
                //删除商品
                Goods.delete(sGoodsName);
                //返回
                response.sendRedirect("gwc.jsp");
            %>
        </div>
    </body>
</html>
