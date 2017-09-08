package com.qd.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentServlet extends HttpServlet{

	//访问这个网页时候会调用这个service方法
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		///开发步骤：
		//1、加载驱动 Class.forNmae("");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		//2、获取连接对象Connection。
		Connection connection = null;
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/qdshixun", "root", "root");
			//3、写sql语句。
			String sql = "select id,name,age,gender,address from student;";
			//4、创建Satement。
			PreparedStatement statement = null;
			statement = connection.prepareStatement(sql);
			//5、执行sql语句。
			 //    查询：select                         executeQuery       返回结果集ResultSet。
			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				int age = resultSet.getInt("age");
				String gender = resultSet.getString("gender");
				String address = resultSet.getString("address");
				// syso
				System.out.println(id + "," + name + "," + age);
			}
			//6、关闭
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
