package tEST1;
public class Problem_1 {

public static void main(String[] args) {

	int cnt;
	Pet pet1 = new Pet("강아지",8);
	pet1.cnt++;
	Pet pet2 = new Pet("고양이",13);
	pet2.cnt++;

	pet1.move();
	pet2.move();

	cnt=pet1.getCnt()+pet2.getCnt();
	System.out.println(pet1.getType() + "는 " + pet1.getAge() + "개월입니다.");
	System.out.println(pet2.getType() + "는 " + pet2.getAge() + "개월입니다.");
	System.out.println("우리집엔"+Pet.cnt+"마리의 동물이 삽니다 ");
	}
}

