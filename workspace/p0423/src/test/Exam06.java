package test;

import java.util.Scanner;

public class Exam06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String a;
		Scanner s = new Scanner(System.in);
		System.out.print("등급을 입력하세오 : ");
		a=s.next();
		switch(a) {
		case "A":
			System.out.println("VVIP 회원입니다.");
			break;

		case "B":
			System.out.println("VIP 회원입니다.");
			break;
		
		case "C":
			System.out.println("우수 회원입니다.");
			break;
		
		case "D":
			System.out.println("일반 회원입니다.");
			break;
			
		default :
			System.out.println("손님 입니다.");
			break;
		}
	}

}
