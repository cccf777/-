package class1;

public class CarTest {

	public static void main(String[] args) {
		/*
		 * Car myCar1=new Car(); myCar1.setColor("red"); myCar1.setSpeed=0; Car
		 * myCar2=new Car(); myCar2.setColor("white"); myCar2.setSpeed(0); Car
		 * myCar3=new Car(); myCar3.setColor("Yellow"); myCar3.setSpeed(0);//�ν��Ͻ� ����
		 * ����&�ʵ� ä��
		 * 
		 * 
		 * myCar1.speedUp(30);
		 * System.out.println("color: "+myCar1.getColor()+" | speed: "+myCar1.speed);
		 * myCar2.speedUp(60);
		 * System.out.println("color: "+myCar2.getColor()+" | speed: "+myCar2.speed);
		 * myCar3.speedUp(90);
		 * System.out.println("color: "+myCar3.getColor()+" | speed: "+myCar3.speed);
		 * 
		 * System.out.println(myCar1.getSpeed());
		 */
		Car myCar1=new Car();
		/*System.out.println("������"+myCar1.getColor());*/
		System.out.println(Car.count);
		System.out.println(myCar1.getSpeed());
		System.out.println(myCar1.getColor());
		
		Sedan sedan1=new Sedan();
		sedan1.speedUp(30);
		System.out.println("������ �ӵ��� "+sedan1.getSpeed());
		sedan1.speedDown(20);
		System.out.println("������ �ӵ��� "+sedan1.getSpeed());
		//����� ���Դϴ�.
		
	}
}
