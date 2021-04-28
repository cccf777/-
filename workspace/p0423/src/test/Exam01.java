package test;

import java.util.Scanner;

public class Exam01 {

	public static void main(String[] args) {
		
		int a[]=new int[3];
		/*
		 * System.out.print("첫번째 수:"); Scanner s = new Scanner(System.in);
		 * a[0]=s.nextInt();
		 */
		 for(int i=0;i<a.length;i++) {
			 System.out.print(i+"번째 수:");
			 Scanner s = new Scanner(System.in);
			 a[i]=s.nextInt();
		 }
		 int r=a[0]+a[1]+a[2];
		 System.out.println(a[0]+"+"+a[1]+"+"+a[2]+"+"+"="+r);
		 double r1=(double)(r/3);
		 System.out.println("("+a[0]+"+"+a[1]+"+"+a[2]+") 세수의 평균 : "+r1);
	}

}


 