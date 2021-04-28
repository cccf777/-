package Array;

import java.util.ArrayList;

public class Student {
	/* ArrayList<Subject>subjectList=new ArrayList<Subject>(); */
	
	/*
	 * Student(){ int studentID; String studentName; ArrayList<Subject>subjectList;
	 * }
	 * 
	 * public Student(int i, String string) { int studentID; String studentName; }
	 */

	int studentID;
	String studentName;
	//subject kor math eng 등등
	ArrayList<Subject>subjectList;
	
	public Student(int studentID,String studentName) {
		this.studentID=studentID;
		this.studentName=studentName;
		subjectList=new ArrayList<Subject>();
		
	}
	public void addSubject(String name, int score) {
		Subject subject=new Subject(name,score);
		subjectList.add(subject);
		
	}

	public void showStudentInfo() {
		int total=0;
		for(Subject subject:subjectList ) {
			total=subject.getScore();
			System.out.println(studentName+"학생의 "
			+subject.getName()+"과목의 성적은 "+subject.getScore()+"이다.");
		}
		System.out.println(studentName+"의 총점은 "+total+"입니다.");
	}
}
