package ps;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class login extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		
		String c = (String) request.getSession().getAttribute("check");
		String u = (String) request.getSession().getAttribute("zhm");
		String m = (String) request.getSession().getAttribute("mmm");
		String c1 = request.getParameter("checks");
		String u1 = request.getParameter("zh2");
		String m1 = request.getParameter("mm2");
		c1 = c1.toUpperCase();//ת����Сд
		
		if(c1.equals(c)){
			if(m1.equals(m)){
				if(u1.equals(u)){
					out.println("��½�ɹ���");
					request.getSession().setAttribute("YZ","1");
					out.println("<input type='button' onclick=\"location.href='http://localhost:8080/IS/SP.jsp'\" value='��Ʒ���'>");
				}
				
				else{out.println("�˺Ų����ڣ�����");request.getSession().setAttribute("YZ","2");}
				
			}
			else{out.println("����������󣡣���");request.getSession().setAttribute("YZ","2");}
		}		
		else{out.println("��֤��������󣡣���");request.getSession().setAttribute("YZ","2");}
		out.flush();
		out.close();
		
	}
}
