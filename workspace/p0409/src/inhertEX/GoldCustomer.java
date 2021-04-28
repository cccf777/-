package inhertEX;

public class GoldCustomer extends Customer {

	double salesRatio;
	int agentID;
	
	GoldCustomer(){
		customerGrade="GOLD";
		bonusRatio=0.02;
		salesRatio=0.1;
		 
		System.out.println("VIPCustomer()생성자 호출");
	}
	public GoldCustomer(String customerName,int customerID) {
		super(customerName,customerID);
		this.customerName=customerName;
		this.customerID=customerID;
		customerGrade="GOLD";
		bonusRatio=0.02;
		salesRatio=0.1;
		System.out.println("골드");
	}
}
