package play;

public class AdvancedLevel extends PlayerLevel{
	@Override
	public void run() {
		System.out.println("빨리 달림");
		
	}

	@Override
	public void jump() {
		System.out.println("높이 못하지렁");

	}

	@Override
	public void turn() {
		System.out.println("턴 못하지롱");

	}

	@Override
	public void showLevelMessage() {
		System.out.println("천천히 달림");

	}


}
