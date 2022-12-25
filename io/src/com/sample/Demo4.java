package com.sample;

import java.io.IOException;
import java.io.PrintWriter;

public class Demo4 {
	
	public static void main(String[] args) throws IOException{
		// 파일에 기록하기
		PrintWriter out = new PrintWriter("demo4.txt");
		
		out.println("안녕하세요.");
		out.println("반갑습니다.");
		
		out.flush();		// auto flush 기능을 true로 설정하면 실행할 필요가 없음
		
		out.close();
		
	}

}
