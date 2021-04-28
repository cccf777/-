package interfaceEX;

public interface Calc {
	//상수와 추상메소드만 있다 외냐면 껍데기니까
	double PI=3.14; //public static
	int ERROR=999999999;
	int add(int num1,int num2);//abstract
	//int substract(int num1,int num2);
	int times(int num1,int num2);
	int divide(int num1,int num2);
	int substract(int num1, int num2);
	
	default void description() {
		System.out.println("정수 계산기를 구현합니다.");
	}
	static int total(int[] arr) {
		int z=0;
		 for(int a=0;a<arr.length;a++) {
			 z=z+arr[a];
		 }
		return z;
	}
	
}
