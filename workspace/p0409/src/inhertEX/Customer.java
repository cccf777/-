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
		System.out.println("customer()������ ȣ��");
	}
	
	public Customer(String string, int customerID) {
		
		customerGrade="Silver";
		bonusRatio=0.01;
		
		/*
		 * this.customerName=string; this.customerID=customerID;
		 */
		System.out.println("��-��customer(sting,int)������ ȣ��");
	}
	public int calcPrice(int price) {
		bonusPoint += bonusRatio*price;
		return price;
	}
	public String showCustomerInfo() {
		return customerName+"���� ����� "+customerGrade+"�̰�,������ ����Ʈ�� "+bonusPoint+"�̰�,";
	}
}
