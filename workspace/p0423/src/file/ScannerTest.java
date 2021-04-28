package file;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ScannerTest {

	public static void main(String[] args) throws Exception {

		Scanner sc = new Scanner(new File("data2.txt"));
		int hap=0;
		while(sc.hasNextLine()) {
			hap+=sc.nextInt();
			
		}
		System.out.println(hap);
		sc.close();
	}
}// 황 희 문
