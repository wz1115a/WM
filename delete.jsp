<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>��ӭ���ٹ��ﳵ</title>
        <jsp:useBean id="Goods" scope="session" class="ps.GDServlet" />
    </head>
    <body>
        <div align="center">
            <h1>���ﳵ�嵥</h1>
            <%
                request.setCharacterEncoding("utf-8");
                //���Ҫɾ������Ʒ��
                String sGoodsName = request.getParameter("dName");
                //ɾ����Ʒ
                Goods.delete(sGoodsName);
                //����
                response.sendRedirect("gwc.jsp");
            %>
        </div>
    </body>
</html>
