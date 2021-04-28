package string;

import java.util.Scanner;

public class ex02 {

	public static void main(String[] args) {
		int a[]=new int[10];
		int b;
		int t=0;
		a[10]= 0;
		System.out.print("정수 10개 입력");
		Scanner s = new Scanner(System.in);
		for(int i=0;i<10;i++) {
			a[i]=s.nextInt();
		}
		for(int k=0;k<10;k++) {
			if(a[k]>a[k+1]) {
				t=a[k];
				a[k]=a[k+1];
				a[k+1]=t;			
			}
			System.out.print(a[k]+" ");
		}
	}

}
