package d0405;
class carBody{
	String model;
	String color;
	int value;
	
	
	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;//�Ķ������ �̸��� ���� ������ this�� ����
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
	//Ŭ������ �Ӽ���
	//�ؾ Ʋ�ȿ� ��ü ��ü�� ������ ���� ����
	//��ü ������ new������
}
public class car {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		carBody car1=new carBody();
		car1.setModel("��Ÿ��");
		car1.setColor("������");//�������ٹ��
		//car1.color="������"; �� �������ٹ���̴�!
		car1.value=3500;
		//���� �Ϸ��� ������ ��ü���� ���� �ִ°��̴�.
		//Ŭ���� ���� ��ü�� ���� �Ѱ��ִ°�
		car1.print();
		
		carBody car2=new carBody();
		car2.model="530i";
		car2.color="�ǹ�";
		car2.value=6500;
		car2.print();
		
		carBody car3=new carBody();
		car3.model="e����";
		car3.color="ȭ��Ʈ";
		car3.value=7000;
		car3.print();
	}
}