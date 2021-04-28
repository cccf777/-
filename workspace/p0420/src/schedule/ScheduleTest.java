package schedule;

import java.io.IOError;
import java.io.IOException;

public class ScheduleTest {

	public static void main(String[] args) throws IOException{
		// TODO Auto-generated method stub
		System.out.println("전화상담원 할당 방식 선택하세요");
		System.out.println("R:한명씩 차례대로");
		System.out.println("L:대기가 적은 상담원 우선");
		System.out.println("P:우선순위가 높은 고객 우선 숙련도 높은 상담원");
		
		int ch=System.in.read();
		Scheduler scheduler=null;
		
		if(ch=='R'||ch=='r') {
			scheduler = new RoundRobin();
		}else if(ch=='R'||ch=='r') {
			scheduler = new LeastJob();
		}else if(ch=='R'||ch=='r') {
			scheduler = new PriorityAllocation();
		}else {
			System.out.println("지원되지 않는 기능입니다.");
		}
	}

}
