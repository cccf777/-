package play;

public class SuperLevel extends PlayerLevel{

	@Override
	public void run() {
		System.out.println("매우빨리 달림");
		
	}

	@Override
	public void jump() {
		System.out.println("매우높이 못하지렁");

	}

	@Override
	public void turn() {
		System.out.println("한바꾸 못하지롱");

	}

	@Override
	public void showLevelMessage() {
		System.out.println("매우 빨리 달림");
		System.out.println("고오급자레벨인데스========");
	}
}
