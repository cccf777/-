package inhertEX;

public class VIPCustomer extends Customer{
	double salesRatio;
	int agentID;
	
	
	VIPCustomer(){
		customerGrade="VIP";
		bonusRatio=0.05;
		salesRatio=0.1;
		 
		System.out.println("VIPCustomer()생성자 호출");
	}
	public VIPCustomer(String customerName,int customerID) {
		super(customerName,customerID);
		this.customerName=customerName;
		this.customerID=customerID;
		customerGrade="VIP";
		bonusRatio=0.05;
		salesRatio=0.1;
		System.out.println("브아이이피");
	}
	@Override
	public int calcPrice(int price) {
		bonusPoint += bonusRatio*price;
		
		return price-(int)(price*salesRatio);
	}
}
