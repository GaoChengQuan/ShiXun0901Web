package com.qd.student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qd.student.pojo.Student;

//删除学生的servlet
public class DeleteStudent extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int deleteId = Integer.parseInt(id);

		// 根据id删除数据
		/// 开发步骤：
		// 1、加载驱动 Class.forName("");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		// 2、获取连接对象Connection。
		Connection connection = null;
		PreparedStatement statement = null;
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/qdshixun", "root", "root");
			// 3、写sql语句。
			String sql = "delete from student where id=?;";
			// 4、创建Satement。
			statement = connection.prepareStatement(sql);
			statement.setInt(1, deleteId);
			// 5、执行sql语句。
			statement.executeUpdate();
			//重定向到展示所有数据的界面
			resp.sendRedirect("/ShiXun0901/student");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 6、关闭
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
