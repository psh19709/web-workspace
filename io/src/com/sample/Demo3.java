package com.sample;

import java.io.FileWriter;
import java.io.IOException;

public class Demo3 {
	
	public static void main(String[] args) throws IOException {
		// 파일에 기록하기
		
		// 텍스트 출력 전용의 FileWriter 객체를 생성한다.
		FileWriter out = new FileWriter("demo3.txt");
		
		// 문자열을 파일로 출력한다.
		out.write("안녕하세요");
		out.write("반갑습니다.");
		
		//버퍼에 남아있는 모든 데이터를 출력시킨다.
		out.flush();
		// 쓰기 작업에 사요앻ㅆ던 컴퓨터의 자원을 반납한다.
		out.close();
		
	}

}
