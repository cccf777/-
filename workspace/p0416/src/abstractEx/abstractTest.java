package abstractEx;

public class abstractTest {

	public static void main(String[] args) {
		//Car car=new Car();
		//car.upSpeed(20); 추상인스턴스 카는 생성안됨
		
		Sedan sedan=new Sedan();
		//System.out.println("자동차 인스턴스 생성"); 추상하기전
		sedan.work();
		Truck truck=new Truck();
		//System.out.println("트럭인스턴스 생성");
		truck.work();
	}

}
