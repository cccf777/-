package string;
public class string_test {
	public static void main(String[] args) {
		String str="Java Programming";
		int len;
		len=str.length();
		System.out.printf("문자열은 %s이고 길이는 %d이다\n", str,len);
		//a를 $로 바꿔서 출력
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i)=='a') {
				System.out.printf("%c",'$');
			}else
			System.out.printf("%c", str.charAt(i));
			
			}
		System.out.printf("g가 나오는 위치는 %d\n",str.indexOf('g'));
		System.out.println("");
		System.out.printf("%s", str.replace("Java", "자바"));
		System.out.printf("%s\n", str.substring(0));
		System.out.printf("%s\n",str.substring(0, 4));//0번째 부터 뽑겟다
		String str1="JAVA PROGRAMMING";
		System.out.println(str1.toLowerCase());
		System.out.println(str1.toUpperCase());
		System.out.println(str1.trim());
	}
}
