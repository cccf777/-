package schedule;

public class LestJob implements Scheduler{
	@Override
	public void getNextCall() {
		System.out.println("");
	}
	
	@Override
	public void sentCallToAgent() {
		System.out.println("현재 상담 업무가 없거나 상담대기가 짧은 상담원에게 보내십셔");
	}
}
