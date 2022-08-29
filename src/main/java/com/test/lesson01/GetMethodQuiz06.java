package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		PrintWriter out = response.getWriter();
		
		out.print("{\"addtion\":" + (number1 + number2) + ", \"subtraction\":" + (number1 - number2)
				+ ", \"multiplication\":" + (number1 * number2) + ", \"division\":" + (number1 / number2)
				+ "}");
		/*
		 * Get
		 * - 브라우저 주소 치고 들어각
		 * a 태그로 클릭해서 들어가기
		 * - form태그 이용해서 들어가기 
		 */
	}
}
