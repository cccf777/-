package d0406;

public class testDebug {

	public static void main(String[] args) {
		int num1=10;
		int num2=20;
		int result;
		result=num1+num2;
		if(result>=100) {
			num1++;
			System.out.println("100보다 큼");
		}else {
			num2++;
			System.out.println("100보다 작");
		}
		System.out.printf("%d+%d=%d\n",num1,num2,result);
		result=num1-num2;
		System.out.printf("%d-%d=%d\n",num1,num2,result);
		result=num1*num2;
		System.out.printf("%d*%d=%d\n",num1,num2,result);
		result=num1/num2;
		System.out.printf("%d/%d=%d\n",num1,num2,result);
	}
}