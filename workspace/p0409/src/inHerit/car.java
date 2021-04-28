package inHerit;

public class car {
	protected String color;
	int speed=0;
	car(){
		
	}
	car(String str){
		
	}
	void upSpeed(int speed) {
		this.speed+=speed;
		System.out.println("현재속도는 "+this);
	}
}
