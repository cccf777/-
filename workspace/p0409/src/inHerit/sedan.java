package inHerit;

public class sedan extends car {
	sedan(){
		super();
	}
	sedan(String str){
		super();
	}
	void setSpeed(int speed) {
		this.speed=speed;
	}
	void setColor(String color) {
		this.color=color;
	}
	void upSpeed(int speed) {
		super.upSpeed(speed);
		this.speed+=speed;
		if(this.speed>150)
			this.speed=150;
		System.out.println("현재속도는 "+this.speed);
	}
	
}
