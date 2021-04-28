package Sorting;

import java.io.IOException;

public class SortTest {

	public static void main(String[] args) throws IOException{
		/*Sort qSort=new QuickSort();
		int[] arr=new int[10];
		qSort.ascending(arr);
		qSort.descending(arr);
		qSort.decription();*/
		
		System.out.println("정렬방식 선택");
		System.out.println("Q:QuickSort");
		System.out.println("B:BubbleSort");
		System.out.println("H:HeapSort");
		
		int ch=System.in.read();
		Sort Sort=null;
		
		if(ch=='Q'||ch=='q') {
			Sort = new QuickSort();
		}else if(ch=='B'||ch=='b') {
			Sort = new BubbleSort();
		}else if(ch=='H'||ch=='h') {
			Sort = new HeapSort();
		}else {
			System.out.println("지원되지 않는 기능입니다.");
			return;
		}
		int[]arr=new int[10];
		Sort.ascending(arr);
		Sort.descending(arr);
		Sort.decription();
	}
}
