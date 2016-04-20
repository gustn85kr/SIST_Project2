package com.controller;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
/*
	RetentionPolicy.RUNTIME : 프로그램 종료시까지 저장
	RetentionPolicy.SOURCE  : 컴파일 후에 자동으로 메모리 해제
	RetentionPolicy.CLASS   : 
	=========================>저장 기간의 차이


*/
@Target(ElementType.TYPE)
/*	
 	구분
 	@ ElementType.TYPE
 	public class A{
 		@ ElementType.FIELD
 		B b;
 		public A(@ ElementType.PARAMETER B b){
 		
 		}
 		
 		@ ElementType.METHOD
 		public voide setA(B b){
 		
 		}
 	}
 	
 	
 	
*/
// @Controller("구분문자") => 중복이 없다 => <bean id="" class=""/>
public @interface Controller {
	public String value();
	

}
