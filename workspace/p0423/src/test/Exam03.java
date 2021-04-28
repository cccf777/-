package test;

import java.util.Scanner;

public class Exam03 {

	public static void main(String[] args) {
		String a;
		Scanner s = new Scanner(System.in);
		System.out.print("등급을 입력하세오 : ");
		a=s.next();
		if(a.equals("a")||a.equals("A")) {
			System.out.println("우수 회원입니다.");
		}else if(a.equals("b")||a.equals("B")) {
			System.out.println("일반 회원입니다.");
		}else System.out.println("손님입니다.");
	}

}
