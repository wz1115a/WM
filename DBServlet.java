package ps;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBServlet {
public static void main(String[] args) throws Exception {
//1.加载驱动
//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//Class.forName("com.mysql.jdbc.Driver");
Class.forName("com.mysql.jdbc.Driver");
//2.创建数据库连接对象
//Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=db","sa","sqlpass");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8","root","123456");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wm","root","123456");
//3.创建数据库命令执行对象
Statement stmt = conn.createStatement();
//		PreparedStatement ps = conn.prepareStatement("select * from t_user");
//4.执行数据库命令
ResultSet rs = stmt.executeQuery("select * from restaurant");
//		ResultSet rs = ps.executeQuery();
//5.处理执行结果
while (rs.next()) {
int id = rs.getInt("id");
String username = rs.getString("username");
String password = rs.getString("password");
System.out.println(id + "\t" + username + "\t" + password);
}
//6.释放数据库资源
if (rs != null) {
rs.close();
}
//		if (ps != null) {
//			ps.close();
//		}
if (stmt != null) {
stmt.close();
}
if (conn != null) {
conn.close();
}
}


}