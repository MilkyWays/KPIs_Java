package com.kpis.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import Database.DBConnector;
import javafx.stage.Stage;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.corba.se.spi.orbutil.fsm.State;
//Class xu ly dang nhap
public class LoginAction extends ActionSupport{
	 private String username="13110039";
	 private String password ="123";
	 private String TenGV="";
	 private String MaQuyen ="";
	
	private String ViTri ="";
	 
	
		//Na ná giống ConnectionString trong C# 
		private final String className = "com.mysql.jdbc.Driver";
		//Đường dẫn tới csdl của mình: jdbc:mysql://localhost:3306/<Tên CSDL> 
		private final String url = "jdbc:mysql://localhost:3306/KPIs";
		//Tài khoản và mật khẩu đăng nhập vào mysql
		private final String usernamemysql = "root";
		private final String passwordmysql ="123";
		//Khởi tạo một kết nối
			
	 
	

		
	
	public String Login()
	{
		Connection connection=null;
		String result ="";
		try
		{
			Class.forName(className);
			connection = DriverManager.getConnection(url,usernamemysql,passwordmysql);
			String sqlCommand = "SELECT TaiKhoan.TenTaiKhoan, TaiKhoan.MaQuyen, GiangVien.TenGV "
					+ "FROM  TaiKhoan Inner join GiangVien on TaiKhoan.TenTaiKhoan = GiangVien.MaGV "
					+ "WHERE TaiKhoan.TenTaiKhoan = ? AND TaiKhoan.MatKhau = ?";
			PreparedStatement ps = connection.prepareStatement(sqlCommand);
	         ps.setString(1, username);
	         ps.setString(2, password);
	         ResultSet rs = ps.executeQuery();
	         System.out.println("Kết nối thành công!!");
	         while (rs.next()) {
	            ViTri = rs.getString(1);
	            result = rs.getString(2);
	            TenGV = rs.getString(3);
	         };
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return result;
	}
	 public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		 public String getTenGV() {
				return TenGV;
			}
			public void setTenGV(String tenGV) {
				TenGV = tenGV;
			}
			public String getMaQuyen() {
				return MaQuyen;
			}
			public void setMaQuyen(String maQuyen) {
				MaQuyen = maQuyen;
			}
			 public String getViTri() {
					return ViTri;
				}
				public void setViTri(String viTri) {
					ViTri = viTri;
				}
			public static void main(String[] args)
			{
				LoginAction abc = new LoginAction();
				System.out.println(abc.Login());
			}
			
	
}
