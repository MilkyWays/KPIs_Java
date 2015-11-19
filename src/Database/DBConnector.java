package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class DBConnector {
	//Na ná giống ConnectionString trong C# 
	private final String className = "com.mysql.jdbc.Driver";
	//Đường dẫn tới csdl của mình: jdbc:mysql://localhost:3306/<Tên CSDL> 
	private final String url = "jdbc:mysql://localhost:3306/KPIs";
	//Tài khoản và mật khẩu đăng nhập vào mysql
	private final String username = "root";
	private final String password ="123";
	//Khởi tạo một kết nối
	private Connection connection;	
	public Connection getDBConnector()
	{
		try{
			Class.forName(className);
			connection = DriverManager.getConnection(url,username,password);
			//Kết nối thành công
			System.out.println("Connect success");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			System.out.println("Class not Found Lỗi r");;
		}
		catch(SQLException e)
		{
			System.out.println("Error connection");
			e.printStackTrace();
		}	
		return connection;
		
	}
	//Get data from database;
	public ResultSet getData(String sqlCommand,PreparedStatement st)
	{
		ResultSet rs = null;		
		//sqlCommand = "select * from GiangVien"; //Câu lệnh truy vấn		
		try{
			st = connection.prepareStatement(sqlCommand);
			rs = st.executeQuery(sqlCommand);
		}
		catch(SQLException e)
		{
			System.out.println("Lỗi: " + e.getMessage());
		}
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;		
	}
	
public static void main(String[] args) throws ClassNotFoundException
{
	DBConnector abc = new DBConnector();
	if(abc.getDBConnector()!=null)
	{
		System.out.println("Kết nối được");
	}
	else
	{
		System.out.println("Kết nối ko được");
	}
	 //.showData(abc.getData("select * from GiangVien"));
	
	
}

}
