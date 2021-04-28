package interfaceEX;

public class CompleteCalc extends Calculator{

	

	@Override
	public int times(int num1, int num2) {
		// TODO Auto-generated method stub
		return super.times(num1, num2);
	}
	@Override
	public int divide(int num1, int num2) {
		if(num2==0) 
			return ERROR;
		else
			return num1/num2;
	}
	public void showInfo() {
		System.out.println("전부구현완료");
	}
	public void description() {
		System.out.println("재정의한 description");
	}
	
}
