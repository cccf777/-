package inheritEx;

public class Customer {
	int customerID;
	String customerName;
	String customerGrade;
	int bonusPoint;
	double bonusRatio;
	
	Customer(){
		bonusRatio=0.01;
		customerGrade="Silver";
		
		System.out.println("customer()클래스 실행");
	}
	
	public Customer( int customerID,String customerName) {
		bonusRatio=0.01;
		customerGrade="Silver";
		
		this.customerName=customerName;
		this.customerID=customerID;
		
		System.out.println("메인customer(sting,int)클래스 실행 ");
	}
	public int calcPrice(int price) {
		bonusPoint += bonusRatio*price;
		return price;
	}
	public String showCustomerInfo() {
		return customerName+"의 등급은 "+customerGrade+"이고 보너스포인트는 "+bonusPoint+"임,";
	}

	public String getCustomerName() {
		// TODO Auto-generated method stub
		return customerName;
	}
}
