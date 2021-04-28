package string;

import java.util.Scanner;

public class ex01 {

	public static void main(String[] args) {
		int a[]=new int[10];
		int b=0;
		System.out.print("정수 10개를 입력하세요");
		Scanner s=new Scanner(System.in);
		for(int c=0;c<10;c++) {
			a[b]=s.nextInt();
			b++;
		}
		for(int k=0;k<10;k++)
			if(a[k]%3==0)
				System.out.print(a[k]+" ");
	}

}
