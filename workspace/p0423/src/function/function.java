package function;

import java.util.Scanner;

public class function {
	static int plus(int a, int b) {
		int result;
		result=a+b;
		return result;
	}
	static int minus(int a, int b) {
		int result;
		result=a-b;
		return result;
	}
	static int times(int a, int b) {
		int result;
		result=a*b;
		return result;
	}
	static int divide(int a, int b) {
		int result;
		result=a/b;
		return result;
	}
	public static void main(String[] args) {
		int i[]=new int[10];
		
		System.out.print("무슨연산? +1 -2 *3 /4");
		Scanner s = new Scanner(System.in);
		int op=s.nextInt();
		System.out.print("두수를 입력하시오");
		Scanner c = new Scanner(System.in);
		int i[0]=c.nextInt();
		
		switch(op) {
		case 1:
			int re=plus(a,b);
			break;
		case 2:
			int re=minus(a,b);
		}
		System.out.printf("두수의 합은 %d\n", hap);
	}
}
