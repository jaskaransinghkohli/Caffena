package com.caffena.utils;

public class CommonUtils {

	public static synchronized String generateUniqueOrderId(String userInfo)
	{
		System.out.println("userInfo "+ userInfo);
		String orderId=null;
		orderId=userInfo+Long.toString(System.nanoTime(), Character.MAX_RADIX).toUpperCase();
		System.out.println("dssdsd "+ orderId);
		
		return orderId;
		}
}
