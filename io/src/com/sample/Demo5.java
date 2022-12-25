package com.sample;

import java.io.FileInputStream;
import java.io.IOException;

public class Demo5 {
	
	public static void main(String[] args) throws IOException{
		// 파일 읽어오기
		FileInputStream in = new FileInputStream("demo5.txt");
		
		// 1byte씩 읽어오기
		int value = 0;
		while((value = in.read()) != -1) {
			System.out.print((char) value);
		}
		in.close();
	}

}
