package inhertEX;

public class Customer {
	int customerID;
	String customerName;
	String customerGrade;
	int bonusPoint;
	double bonusRatio;
	
	Customer(){
		customerGrade="Silver";
		bonusRatio=0.01;
		System.out.println("customer()생성자 호출");
	}
	
	public Customer(String string, int customerID) {
		
		customerGrade="Silver";
		bonusRatio=0.01;
		
		/*
		 * this.customerName=string; this.customerID=customerID;
		 */
		System.out.println("매-인customer(sting,int)생성자 호출");
	}
	public int calcPrice(int price) {
		bonusPoint += bonusRatio*price;
		return price;
	}
	public String showCustomerInfo() {
		return customerName+"님의 등급은 "+customerGrade+"이고,적립된 포인트는 "+bonusPoint+"이고,";
	}
}
