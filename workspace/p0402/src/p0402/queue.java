package p0402;

import java.util.Scanner;

public class queue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner s = new Scanner(System.in);
		int a=0;
		int b=0;
		int rear=0;
		int list[]=new int[4];
		a=s.nextInt();
		while(a!=3) {
			System.out.print("<1>자동차 넣기 <2>자동차 빼기 <3>끝");
		}
		switch(a) {
		case 1:
			if(rear>=5){
				System.out.print("꽉참");
			}else{
				list[rear]=b++;
				System.out.printf("%c 자동차 터널 입갤루", b);
				rear++;
			}
			break;
		case 2:
			if(rear<=0) {
				System.out.print("현재 터널에 자동차 없음");
			}else {
				System.out.printf("%c 자동차 터널 나감",b);
				for(int i=0;i<4;i++) {
					list[i]=list[i+1];
				}
				rear--;
			}
			break;
		case 3:
			System.out.printf("현재 터널에 %d가 있다\n", rear);
			System.out.print("프로그램 종료\n");
		}
	}
}


