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
			System.out.print("<1>�ڵ��� �ֱ� <2>�ڵ��� ���� <3>��");
		}
		switch(a) {
		case 1:
			if(rear>=5){
				System.out.print("����");
			}else{
				list[rear]=b++;
				System.out.printf("%c �ڵ��� �ͳ� �԰���", b);
				rear++;
			}
			break;
		case 2:
			if(rear<=0) {
				System.out.print("���� �ͳο� �ڵ��� ����");
			}else {
				System.out.printf("%c �ڵ��� �ͳ� ����",b);
				for(int i=0;i<4;i++) {
					list[i]=list[i+1];
				}
				rear--;
			}
			break;
		case 3:
			System.out.printf("���� �ͳο� %d�� �ִ�\n", rear);
			System.out.print("���α׷� ����\n");
		}
	}
}


