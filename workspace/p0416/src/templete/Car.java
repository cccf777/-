package templete;

public abstract class Car {
	
	public abstract void drive();
	public abstract void stop();
	
	public void startCar() {
		System.out.println("시동온");
	}
	public void turnOff() {
		System.out.println("시동옾");
	}
	public void wash() {
		
	}
	
	final public void run() {
		startCar();
		drive();
		stop();
		turnOff();
		wash();
	}
}
