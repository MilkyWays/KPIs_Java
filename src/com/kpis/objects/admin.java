package com.kpis.objects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Database.DBConnector;

public class admin {
	private String msgv;
	private String hoten;
	private String mabomon;	
	private String maquyen;
	private String email;	
	private String makhoa;
	private String macaptren;
	//Tạo kết nối
	DBConnector DB = new DBConnector();
	
	Connection connection = DB.getDBConnector();	
	
	public String TaiKhoan()
	{
		String ketQua = "faile";
		//Insert - Update - Delete
		try
		{			
			String sqlCommand = "INSERT INTO GiangVien(MaGV,MaBoMon,Email,MaCapTren,TenGV) "
					+ "values  (?,?,?,null ,?)";
			PreparedStatement ps = connection.prepareStatement(sqlCommand);
	         ps.setString(1, msgv);
	         ps.setString(2, mabomon);
	         ps.setString(3, email);
	         ps.setString(4, macaptren);
	         ps.setString(5, hoten);     
	         ResultSet rs = ps.executeQuery();
	         System.out.println("Lưu thành công!!");
	         return "success";
	       /*  while (rs.next()) {
	            ViTri = rs.getString(1);
	            result = rs.getString(2);
	            TenGV = rs.getString(3);
	         };*/
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ketQua;
	}
	
	public String getMsgv() {
		return msgv;
	}

	public void setMsgv(String msgv) {
		this.msgv = msgv;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getMabomon() {
		return mabomon;
	}

	public void setMabomon(String mabomon) {
		this.mabomon = mabomon;
	}

	public String getMaquyen() {
		return maquyen;
	}

	public void setMaquyen(String maquyen) {
		this.maquyen = maquyen;
	}

	public String getMakhoa() {
		return makhoa;
	}

	public void setMakhoa(String makhoa) {
		this.makhoa = makhoa;
	}

	public String getMacaptren() {
		return macaptren;
	}

	public void setMacaptren(String macaptren) {
		this.macaptren = macaptren;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
