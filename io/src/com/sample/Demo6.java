package com.sample;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Demo6 {
	
	public static void main(String[] args) throws IOException {
		// BufferedReader는 텍스트를 한줄씩 읽는다.
		BufferedReader in = new BufferedReader(new FileReader("demo6.txt"));
		
		// String readLine() : 텍슽트를 한 줄 씩 읽어서 반환한다. 스크림의 끝에 도달하면 null을 반환한다.
		String text = null;
		while((text = in.readLine()) != null) {
			System.out.println(text);
		}
		
		in.close();
	}

}
