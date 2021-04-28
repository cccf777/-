package d0405;
class carBody{
	String model;
	String color;
	int value;
	
	
	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;//파라미터의 이름이 같기 때문에 this를 붙임
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public int getValue() {
		return value;
	}


	public void setValue(int value) {
		this.value = value;
	}


	void print() {
		System.out.println("model :"+model);
		System.out.println("color :"+color);
		System.out.println("value :"+value);
	}
	//클래스의 속성임
	//붕어빵 틀안에 객체 객체는 여러개 생성 가능
	//객체 생성은 new연산자
}
public class car {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		carBody car1=new carBody();
		car1.setModel("싼타페");
		car1.setColor("검정색");//간접접근방식
		//car1.color="검정색"; 은 직접접근방식이다!
		car1.value=3500;
		//위의 일련의 과정이 객체에게 값을 주는것이다.
		//클래스 안의 객체에 값을 넘겨주는것
		car1.print();
		
		carBody car2=new carBody();
		car2.model="530i";
		car2.color="실버";
		car2.value=6500;
		car2.print();
		
		carBody car3=new carBody();
		car3.model="e쿠페";
		car3.color="화이트";
		car3.value=7000;
		car3.print();
	}
}