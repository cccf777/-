package d0405;

public class Calc {
		int result=0;
		public Calc(int num1,int num2,String op) {
			if(op.equals("+")) {
				result=num1+num2;
			}
			else if(op.equals("-")) {
				result=num1-num2;
			}
			else if(op.equals("*")) {
				result=num1*num2;
			}
			else if(op.equals("/")) {
				result=num1/num2;
			}
		}
		public int getResult() {
			return result;//호출지점으로 넘겨줌
		}

}
