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
		c1 = c1.toUpperCase();//转换大小写
		
		if(c1.equals(c)){
			if(m1.equals(m)){
				if(u1.equals(u)){
					out.println("登陆成功！");
					request.getSession().setAttribute("YZ","1");
					out.println("<input type='button' onclick=\"location.href='http://localhost:8080/IS/SP.jsp'\" value='商品浏览'>");
				}
				
				else{out.println("账号不存在！！！");request.getSession().setAttribute("YZ","2");}
				
			}
			else{out.println("密码输入错误！！！");request.getSession().setAttribute("YZ","2");}
		}		
		else{out.println("验证码输入错误！！！");request.getSession().setAttribute("YZ","2");}
		out.flush();
		out.close();
		
	}
}
