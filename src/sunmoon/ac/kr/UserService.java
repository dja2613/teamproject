package sunmoon.ac.kr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserService 
{
	private Connection getConnection()
	{
		Connection con = null;
		try
		{
			String url = "jdbc:mysql://localhost:3306/cc?useSSL=false";
			String user = "root";
			String password = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public int login(String user_id, String user_pw)
	{
		try
		{
			Connection con = getConnection();
			Statement stmt = con.createStatement();	
			
			String sql = "select user_pw from user where user_id='" + user_id + "'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next())
			{
				String check_pw = rs.getString(1);
				if(check_pw.equals(user_pw))
					return 2; // �α��� ����
				else
					return 3; // ��й�ȣ ����
			}
			return 4; // ���̵� ����
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return 1; // �����ͺ��̽� ���� ����
	}
	
	public int join(String user_id, String user_pw, String user_name, 
			        String user_gender, String user_email, String user_address)
	{
		try
		{
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "insert into user values(";
			sql += "'" + user_id + "','" + user_pw + "','" + user_name + "','" + 
			       user_gender + "','" + user_email + "','" + user_address + "');";
			
			stmt.execute(sql);
			
			
			return 0; // ���� ����
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return 1; // �����ͺ��̽� ����
	}
	public int self(String user_id, String color_type, String skin_type, String skill_type, 
		       String container_type)
	{
		try
		{
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "insert into services values(";
			sql += "'" + user_id + "','" + color_type + "','" + skin_type + "','" + skill_type + "','" + container_type +"');";
			
			stmt.execute(sql);
			
			return 0; // ���� ����
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
		return 1; // �����ͺ��̽� ����
	}
}

