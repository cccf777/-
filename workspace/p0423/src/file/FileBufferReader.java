package file;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class FileBufferReader {

	public static void main(String[] args) throws Exception {
		FileReader fReader = new FileReader("C:/Windows/win.ini");
		BufferedReader bReader = new BufferedReader(fReader);
		String str=null;
		while((str=bReader.readLine())!=null) {
			System.out.println(str);
		}
		bReader.close();
		fReader.close();
		
	}

}
