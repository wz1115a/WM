<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>��ӭ�����Ʒ</title>
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
        //���ñ����ʽ
        request.setCharacterEncoding("gbk");
        //��ȡ��Ҫ��ӵ����ﳵ����Ʒ���ƺ�����
        String sName = request.getParameter("SPName");
        
        String s1 = "��Ʒ��";
        String s2 = "����";
        String s4 = "����";
        //������Ʒ�����Ƿ�Ϊ���ж��Ƿ���Ҫ������Ʒ��Ϣ
        if (sName != null && sName != "") {
            Goods.add(sName, 1);
        }
 
        Hashtable h = Goods.show();
        //��ȡ���ﳵ��������Ʒ����
        Enumeration e = h.keys();
    %>
    <body>
        <div align="center">
            <h1>���ﳵ�嵥</h1>
            <hr color="red"/>
            <table border="1">
            <tr>
            <td><%=s1%></td>
            <td><%=s2%></td>
            <td><%=s4%></td>
            </tr>
            
                <%
                    while (e.hasMoreElements()) {
                    //������Ʒ���ƻ�ȡ��Ʒ����
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
                            <input name="delete" type="submit" value="ɾ��">
                            </form>
                    </td>
                    
                </tr>
                <%}%>
                </table>
            
            <p>
                    <input type="button" name="goon" value="�������"
                    onClick="javascript:window.location='SP.jsp'">
            </p>
            
        </div>
    </body>
</html>
