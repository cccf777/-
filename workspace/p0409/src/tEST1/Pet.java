package tEST1;

public class Pet {
	private String type; // 애완동물 종류
	private int age; // 애완동물 개월수
	static int cnt=0;
	
	public Pet(String type,int age) {
		this.type=type;
		this.age=age;
		}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	void move() {
	System.out.println(this.type + "가 움직입니다.");
	}

	public static int getCnt() {
		return cnt;
	}
}