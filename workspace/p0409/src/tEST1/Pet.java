package tEST1;

public class Pet {
	private String type; // �ֿϵ��� ����
	private int age; // �ֿϵ��� ������
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
	System.out.println(this.type + "�� �����Դϴ�.");
	}

	public static int getCnt() {
		return cnt;
	}
}