package com.sample.util;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringUtils {
	
	private static final DecimalFormat decimalFormat = new DecimalFormat("#,###.##");
	private static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 M월 d일");
	
	
	/**
	 * 텍스트를 전달받아서 정수로 변환한 다음 반환한다. 정수로 변환이 실패하는 경우 0이 반환한다.
	 * @param text	숫자로만 구성된 텍스트
	 * @param defaultValue	기본값
	 * @return	정수, 변환에 실패하는 경우 0이 반환된다.
	 */
	public static int stringToInt(String text) {
		return StringUtils.stringToInt(text, 0);
	}
	
	/**
	 * 텍스트를 전달받아서 정수로 변환한 다음 반환한다. 정수로 변환이 실패하는 경우 전달받은 기본값을 반환한다.
	 * @param text	숫자로만 구성된 텍스트
	 * @param defaultValue	기본값
	 * @return	정수, 변환에 실패하는 경우 기본값이 반환된다.
	 */
	public static int stringToInt(String text, int defaultValue) {
		if(text == null) {
			return defaultValue;
		}
		
		try {
			return Integer.parseInt(text.trim());
		} catch(NumberFormatException ex) {
			return defaultValue;
		}
	}
	/**
	 * Date를 "2022년 11월 10일" 형식의 문자열로 변환해서 반환한다.
	 * @param date 날짜
	 * @return 년월일 형식의 문자열, 날짜가 null이면 빈 문자열을 반환한다.
	 */
	public static String detaToText(Date date) {
		if(date == null) {
			return "";
		}
		return simpleDateFormat.format(date);
	}
	
	/**
	 * 정수를 3자리마다 ,가 포함된 문자열로 변환해서 반환한다.
	 * @param number 정수
	 * @return ,가 포함된 무자열
	 */
	public static String numberToText(long number) {
		return decimalFormat.format(number);
	}
	
	/**
	 * 실수를 소숫점 3번째 자리에서 반올림하고, 정수부는 3자리마다 ,가 포함된 문자열로 변환해서 반환한다.
	 * @param number 실수
	 * @return ,가 포함된 문자열(소숫점 3번째 자리에서 반올림한다.)
	 */
	public static String numberTotext(double number) {
		return decimalFormat.format(number);
	}
}
