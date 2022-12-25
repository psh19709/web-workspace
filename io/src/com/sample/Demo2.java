package com.sample;

import java.io.IOException;
import java.io.PrintStream;

public class Demo2 {
	
	public static void main(String[] args) throws IOException {
		// 파일에 기록하기
		
		// 객체를 생성한다.
		PrintStream out = new PrintStream("demo2.txt");
		
		// PrintStream의 println(String text)를 이용해서 문자열을 파일로 출력한다.
		out.println("안녕하세요, 반갑습니다.");
		out.println("제 이름은 홍길동입니다.");
		
		out.close();
	}

}
