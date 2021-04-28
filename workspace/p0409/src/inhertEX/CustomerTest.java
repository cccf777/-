package inhertEX;

public class CustomerTest {

	public static void main(String[] args) {
		Customer customerLee = new Customer("�̼���",1000);
		//customerLee.customerName="�̼���"; 
		//customerLee.customerID=10010;
		customerLee.bonusPoint=1000;
		int priceLee=customerLee.calcPrice(10000);
		System.out.println(customerLee.showCustomerInfo()+"���ұݾ���"+priceLee+"�� �Դϴ�.");
		
		VIPCustomer customerKim =new VIPCustomer("������",10020);
		//customerVIP.customerName="kim"; 
		//customerVIP.customerID=10020;
		customerKim.bonusPoint=10000;
		int priceKim=customerKim.calcPrice(10000);
		System.out.println(customerKim.showCustomerInfo()+"���ұݾ���"+priceKim+"�� �Դϴ�.");
	
		GoldCustomer customerRyu =new GoldCustomer("�����",10030);
		customerRyu.bonusPoint=10000;
		int priceRyu=customerRyu.calcPrice(10000);
		System.out.println(customerRyu.showCustomerInfo()+"���ұݾ���"+priceKim+"�� �Դϴ�.");
	}
}

