package inheritEx;

public class GoldCustomer extends Customer {

	double salesRatio;
	int agentID;
	
	GoldCustomer(){
		customerGrade="GOLD";
		bonusRatio=0.02;
		salesRatio=0.1;
		 
		System.out.println("GoldCustomer()클래스 실행");
	}
	public GoldCustomer(int customerID,String customerName) {
		super(customerID,customerName);
		this.customerName=customerName;
		this.customerID=customerID;
		customerGrade="GOLD";
		bonusRatio=0.02;
		salesRatio=0.1;
		System.out.println("골드");
	}
}
