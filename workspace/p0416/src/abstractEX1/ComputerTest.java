package abstractEX1;

public class ComputerTest {

	public static void main(String[] args) {
		Computer computer=new Desktop();
		computer.display();
		computer.typing();
		
		Notebook myNote=new MyNoteBook();
		myNote.typing();

	}

}
