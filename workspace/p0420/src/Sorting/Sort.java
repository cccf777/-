package Sorting;

public interface Sort {
	void ascending(int[] arr);
	void descending(int[] arr);
	default void decription() {
		System.out.println("디스크립션");
	}
	
}
 