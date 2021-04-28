package inheritEx;

public class VIPCustomer extends Customer{
	double salesRatio;
	int agentID;
	
	
	VIPCustomer(){
		customerGrade="VIP";
		bonusRatio=0.05;
		salesRatio=0.1;
		 
		System.out.println("VIPCustomer()클래스실행");
	}
	public VIPCustomer(int customerID,String customerName,int bonuspoint) {
		super(customerID,customerName);
		this.customerName=customerName;
		this.customerID=customerID;
		
		customerGrade="VIP";
		bonusRatio=0.05;
		salesRatio=0.1;
		System.out.println("브이아이피");
	}
	@Override
	public int calcPrice(int price) {
		bonusPoint += bonusRatio*price;
		
		return price-(int)(price*salesRatio);
	}
}
