package com.sample;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

import org.apache.commons.io.IOUtils;

public class Demo7 {

	public static void main(String[] args) throws Exception {
		// InputStream나 Reader 객체를 획득(생성)했다는 것은 소스로(리소스)로부터 데이터를 읽어올 준비가 되었다는 것이다.
		// OutputStream나 Writer 객체를 획득(생성)했다는 것은 대상(리소스)으로 데이터를 출력할 준비가 되었다는 것이다.
		
		// URL(Uniform Resource Lacator)은 웹에서 리소스(자원)의 위치를 나타내는 주소다.
		URL url = new URL("https://t1.daumcdn.net/news/202211/21/tvreport/20221121125631535ihfm.jpg");
		// url이 나타내는 자원을 읽어올 준비가 되었다.
		InputStream in = url.openStream();
		// 김고은.jpg를 출력할 준비가 되었다.
		OutputStream out = new FileOutputStream("김고은.jpg");
		
		IOUtils.copy(in, out);
		
		in.close();
		out.close();
	}
}
