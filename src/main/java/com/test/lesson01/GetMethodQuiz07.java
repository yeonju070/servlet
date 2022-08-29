package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request paramters params
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		// 출력
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>배달의 민족</title></head><body>");
//		if (card.equals("신한카드")) {
//			out.print("결제 불가 카드입니다.");
//			return;
//		} else if(address.contains("서울시")) {	// startWith(처음 시작하는 단어)
//			out.print(address + "<strong>배달 준비중</strong><br>"
//					+ "결제금액 : " + price + "원");
//		} else {			
//			out.print("배달 불가 지역입니다.");
//			}
//		out.print("</body></html>");
		out.print("<html><head><title>배달의 민족</title></head><body>");
		if (address.startsWith("서울시") == false) {
			out.print("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) {
			out.print("결제 불가 카드 입니다.");
		} else {
			out.print(address + "<strong>배달 준비중</strong><br>"
					+ "결제금액 : " + price + "원");
		}
		out.print("</body></html>");
	}
}
