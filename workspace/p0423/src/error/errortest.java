package error;

public class errortest {
	public static void main(String[] args) {
		int[]aa=new int[3];
		
		try {
			aa[3]=44;
			//안되면
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("첨자가 크다");
			//이걸출력
		}finally {
			System.out.print("출력잘데제?");
			//무조건 출력 
		}
		
	}
}
