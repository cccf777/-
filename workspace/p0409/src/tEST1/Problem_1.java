package tEST1;
public class Problem_1 {

public static void main(String[] args) {

	int cnt;
	Pet pet1 = new Pet("������",8);
	pet1.cnt++;
	Pet pet2 = new Pet("�����",13);
	pet2.cnt++;

	pet1.move();
	pet2.move();

	cnt=pet1.getCnt()+pet2.getCnt();
	System.out.println(pet1.getType() + "�� " + pet1.getAge() + "�����Դϴ�.");
	System.out.println(pet2.getType() + "�� " + pet2.getAge() + "�����Դϴ�.");
	System.out.println("�츮����"+Pet.cnt+"������ ������ ��ϴ� ");
	}
}

