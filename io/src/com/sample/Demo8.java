package com.sample;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Demo8 {
	
	public static void main(String[] args) throws IOException{
		long startUnixtime = System.currentTimeMillis();
		System.out.println("### 파일 복사 시작");
		
		// BufferedInputStream과 BufferedOutputStream은 InputStream과 OutputStream의 읽기쓰기 성능을 향상시키는 클래스다.
		InputStream in = new BufferedInputStream(new FileInputStream("download.zip"));
		OutputStream out = new BufferedOutputStream(new FileOutputStream("download-backup-2.zip"));
		
		int value = 0;
		while((value = in.read()) != -1) {
			out.write(value);
		}
		in.close();
		out.close();
		System.out.println("### 파일 복사 종료");
		
		long endUnixtime = System.currentTimeMillis();
		
		System.out.println((endUnixtime - startUnixtime) + " 밀리초 소요됨");
	}

}
