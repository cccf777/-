package file;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class inputtest2 {

	public static void main(String[] args) throws IOException{
		
		FileInputStream fis = new FileInputStream("data1.txt");
		int ch;
		
		byte[] bt=new byte[200];
		int i=0;
		while((ch=fis.read())!=-1){
			//System.out.print((char)(ch));
			bt[i]=(byte)ch;
			i++;
		}
		System.out.print(new String(bt));
		fis.close();
	}

}
