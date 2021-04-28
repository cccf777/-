package templete;

public class AICar extends Car{

	@Override
	public void drive() {
		System.out.println("자율주행합니다");
		System.out.println("자동차가 스스로 운행합니다.");
		
	}

	@Override
	public void stop() {
		System.out.println("자동차가 스스로 멈춥니다.");
		
	}

	@Override
	public void wash() {
		System.out.println("자동세차");
	}

}
