package ps;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.io.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GDServlet implements Serializable {
	public Hashtable Goods = new Hashtable();
	 
    public void Goods() {
    }
 
    public void add(String Name, int N) {
        if (Goods.containsKey(Name))// ���ָ�������Ƿ����
        {
            int i = ((Integer) Goods.get(Name)).intValue();
            i = i + N;
            Goods.put(Name, new Integer(i));
        } 
        else {
            Goods.put(Name, new Integer(N));
        }
    }
 
    public Hashtable show() {
        return Goods;
    }
 
    // �ӹ��ﳵ��ɾ����Ʒ
    public void delete(String GName) {
        int n = Integer.parseInt(Goods.get(GName).toString()) - 1;
        if (n == 0) {//������Ϊ0ʱɾ��
            Goods.remove(GName);
        } else {
            Goods.put(GName, n);
        }
    }
}