package class1;

public class Student {
		public int studentID;
		public String studentName;
		public String address;
		
		/*
		 * public String getStudentName() { return studentName; }
		 setstring안쓰면 쓸일이 없는거 같다*/

		public void showStudentInfo() {
			System.out.println(studentName+" "+studentID+" "+address);
		}
	}