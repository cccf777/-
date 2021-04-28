package Array;

import java.util.ArrayList;
import java.util.Arrays;

public class ArraylistTest {

	public static void main(String[] args) {
		
		ArrayList<String>list=new ArrayList<String>();
		list.add("aaa");
		list.add("bbb");
		list.add("ccc");
		for(int i=0;i<list.size();i++) {
			String str=list.get(i);
			System.out.println(str);
		}
		System.out.println("=============");
		for(String s:list) {
			System.out.println(s);
		}
		System.out.println("=============");
		ArrayList<Integer>list1=new ArrayList<Integer>(Arrays.asList(1,2,3));
		System.out.println(list1.get(0));
		for(Integer i:list1) {
			System.out.println(i);
		}
	}
}