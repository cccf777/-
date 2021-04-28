package method;

import java.util.Scanner;

public class functiontest {
	static int plus(int a, int b) {
		return a+b;
	}
	static int calc(int a, int b, int op) {
		int result;
		switch(op) {
		case 1:
			result=a+b;break;
		case 2:
			result=a-b;break;
		case 3:
			result=a*b;break;
		case 4:
			result=a/b;break;
		default:result=0;
		}
		return result;
	}
	public static void main(String[] args) {
		/*
		 * int c=10; int d=9; int hap=plus(c,d); System.out.print(plus(c,d));
		 */
		Scanner s=new Scanner(System.in);
		int res;
		int oper,c,d;
		System.out.print("계산 +1 -2 *3 /4 ㄱㄱ :");
		oper=s.nextInt();
		System.out.print("첫번째 숫자입력하소");
		c=s.nextInt();
		System.out.print("두번째 숫자입력하소");
		d=s.nextInt();
		res=calc(c,d,oper);
		System.out.print("결과는"+res);
	}
}