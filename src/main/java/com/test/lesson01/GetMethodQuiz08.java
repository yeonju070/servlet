package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String search = requset.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter();

		// (1)
		out.print("<html><head><title>검색하기</title></head><body>");
		String search1 = "<b>"+ search + "</b";
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
		String line = iter.next();
		// (1) 풀이
//			if (line.contains(search)) {
//			line = line.replace(search, "<b>" + search + "</b>");
//			out.print(line + "<br>");
//			}
		
		// (2) 풀이
			if (line.contains(search)) {
				String[] words = line.split(search);
				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
			}
			// index(search)	index : 5 <b> </b>
		}
//			// 검색
//			if (line.contains(search1)) {
//					out.print(line + "<br>");
//			}
//		out.print("</body></html>");
		
		
		// (2)
//		out.print("<html><head><title>검색하기</title></head><body>");
//		for (int i = 0; i < list.size(); i++) {
//			if (list.get(i).contains(search)) {
//				out.print(list.get(i) + "<br>");
//			}
//		}
//		out.print("</body></html>");
	
		// (3)
//		out.print("<html><head><title>검색하기</title></head><body>");
//		for (int i = 0; i < list.size(); i++) {
//			String line = list.get(i);
//			if (line.contains(search)) {
//				out.print(list.get(i) + "<br>");
//			}
//		}
//		out.print("</body></html>");
	}
}
