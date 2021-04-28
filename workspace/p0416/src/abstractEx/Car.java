package abstractEx;

abstract public class Car {

	int speed=0;
	String color;
	
	/*
	 * void upSpeed(int speed) { this.speed+=speed; }
	 */
	void upSpeed(){
		this.speed+=speed;
	}
	abstract void work();
	
	void downSpeed(int speed) {
		this.speed-=speed;
	}
}
