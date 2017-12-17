package ps;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ing extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		BufferedImage im = new BufferedImage(80,30,BufferedImage.TYPE_INT_BGR);
		Graphics g = im.getGraphics();
		char[] ch = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
		int a=ch.length;
		Color c = new Color(200,200,200);
		StringBuffer s = new StringBuffer();
		Random r = new Random();//随机数
		
		int b;
		g.setColor(c);
		g.fillRect(0, 0, 100, 30);//绘制填充框
		
		for(int i=0; i<4; i++){
			b = r.nextInt(a);
			g.setColor(new Color(r.nextInt(100),r.nextInt(200),r.nextInt(250)));
			g.drawString(ch[b]+"", (i*20)+5, 20);//产生字符距离
			s.append(ch[b]);//插入数据
		}
		
		request.getSession().setAttribute("check", s.toString());
		ImageIO.write(im, "JPEG", response.getOutputStream());
	}
}
