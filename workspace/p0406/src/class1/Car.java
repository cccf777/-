/*
 * package class1;
 * 
 * public class Car {
 * 
 * // �Ӽ� private String color="red"; private int speed = 0; static int
 * count=0;//����
 * 
 * // ������ Car(){
 * 
 * }
 * 
 * Car(String color, int speed) { this.color = color; this.speed = speed;
 * 
 * }
 * 
 * public void setColor(String color) { this.color = color;// this.color�� ��������
 * ���� ���ϴ°Ű� �ڿ� Į��� �Ķ������ }
 * 
 * public void getColor(String color) { this.color = color;// this.color�� ��������
 * ���� ���ϴ°Ű� �ڿ� Į��� �Ķ������ }
 * 
 * } public int setColor; // �޼ҵ�
 * 
 * void speedUp(int value) { setSpeed(getSpeed()+value); } void speedDown(int
 * value) { setSpeed(getSpeed()-value); } String getColor() { return color; }
 * 
 * public int getSpeed() { this.speed = speed; }
 * 
 * public void setSpeed(int speed) { this.speed = speed; }
 * 
 * 
 * int getSpeed() { return speed; }
 */
package class1;

public class Car {

//�Ӽ�
String color;
int speed=0;
static int count=0;//����

//������
Car(){

}
Car(String color){
this.color=color;
}
Car(String color,int speed){
this.color=color;
this.speed=speed;
}


//�޼ҵ�
void speedUp(int value) {
//setSpeed(getSpeed()+value);
if(speed+value>=200) {
speed=200;
}else {
speed+=value;
}
}
void speedDown(int value) {
//setSpeed(getSpeed()-value);
if(speed-value<0) {
speed=0;
}else {
speed-=value;
}
}
String getColor() {
return color;
}

int getSpeed(){
return speed;
}
public void setColor(String color) {
this.color = color;
}
public void setSpeed(int speed) {
this.speed = speed;
}

}