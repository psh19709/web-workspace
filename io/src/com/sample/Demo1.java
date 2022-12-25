package com.sample;

import java.io.FileOutputStream;
import java.io.IOException;

public class Demo1 {
	
	public static void main(String[] args) throws  IOException {
		// 파일에 출력하기
		
		// 1. 파일에 1byte씩 출력하는 FileOutputStream 객체를 생성한다.
		FileOutputStream out = new FileOutputStream("demo1.txt");
		
		// 2. 파일에 1byte씩 쓰기
		out.write(65);
		out.write(66);
		out.write(67);
		out.write(68);
		out.write(69);
		
		// 3.파일에 한 문장을 쓰기
		String text = "안녕하세요, 반갑습니다.";
		byte[] bytes = text.getBytes();
		out.write(bytes, 0, bytes.length);
		
		// 3.자원 반납하기
		out.close();
	}
}
