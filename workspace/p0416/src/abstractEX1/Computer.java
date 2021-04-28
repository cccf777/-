package abstractEX1;

public abstract class Computer {
	//추상클래스임
	
	public abstract void display();
		//추상클래스안에 일반메소드가 있으니까
	public abstract void typing();
	
	public void turnOn() {
		System.out.println("전원을 킵니다");
	}
	public void turnOff() {
		System.out.println("전원을 끕니다");
	}
}
