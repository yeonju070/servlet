package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// 1. DB 연결(객체 생성, 커넥트 메소드 호출)
		MysqlService ms = MysqlService.getInstance();	// 싱글턴 객체 생성
		ms.connect();	// DB 연결
		
		// 2. query 수행
		// select
		String selectQuery = "select * from used_goods";
		
		// 3. 결과 출력
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = ms.select(selectQuery);
			
			while (resultSet.next()) {		// 결과 행이 있는 동안 수행
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getString("price"));
				out.println(resultSet.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 4. DB 연결 해제
		ms.disconnect();	// DB 연결 해제
	}
}
