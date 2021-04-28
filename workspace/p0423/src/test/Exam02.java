package test;

import java.util.Scanner;

public class Exam02 {

	public static void main(String[] args) {
		String a="";
		int b;
		System.out.print("아이디:");
		Scanner s = new Scanner(System.in);
		a=s.next();
		System.out.print("비밀번호:");
		b=s.nextInt();
		if(a.equals("java") && b!=12345) {
			System.out.print("로그인 실패: 패스워드가 틀림");
		}else if(!a.equals("java")&&b!=12345) {
			System.out.print("로그인 실패: 아이디가 존재하지않음");
		}
		else if(a.equals("java") && b==12345) {
			System.out.print("로그인 성공");
		}
	}

}
