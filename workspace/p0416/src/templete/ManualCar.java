package templete;

public class ManualCar extends Car {
	@Override
	public void drive() {
		System.out.println("사람이 운전");
		System.out.println("사람이 운행합니다.");
		
	}

	@Override
	public void stop() {
		System.out.println("사람이 브레이크로 멈춥니다.");
		
	}
}
