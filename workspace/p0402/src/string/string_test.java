package string;
public class string_test {
	public static void main(String[] args) {
		String str="Java Programming";
		int len;
		len=str.length();
		System.out.printf("���ڿ��� %s�̰� ���̴� %d�̴�\n", str,len);
		//a�� $�� �ٲ㼭 ���
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i)=='a') {
				System.out.printf("%c",'$');
			}else
			System.out.printf("%c", str.charAt(i));
			
			}
		System.out.printf("g�� ������ ��ġ�� %d\n",str.indexOf('g'));
		System.out.println("");
		System.out.printf("%s", str.replace("Java", "�ڹ�"));
		System.out.printf("%s\n", str.substring(0));
		System.out.printf("%s\n",str.substring(0, 4));//0��° ���� �̰ٴ�
		String str1="JAVA PROGRAMMING";
		System.out.println(str1.toLowerCase());
		System.out.println(str1.toUpperCase());
		System.out.println(str1.trim());
	}
}
