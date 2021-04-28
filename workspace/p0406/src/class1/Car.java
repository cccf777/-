/*
 * package class1;
 * 
 * public class Car {
 * 
 * // 속성 private String color="red"; private int speed = 0; static int
 * count=0;//정적
 * 
 * // 생성자 Car(){
 * 
 * }
 * 
 * Car(String color, int speed) { this.color = color; this.speed = speed;
 * 
 * }
 * 
 * public void setColor(String color) { this.color = color;// this.color는 제일위에
 * 저거 말하는거고 뒤에 칼라는 파라미터임 }
 * 
 * public void getColor(String color) { this.color = color;// this.color는 제일위에
 * 저거 말하는거고 뒤에 칼라는 파라미터임 }
 * 
 * } public int setColor; // 메소드
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

//속성
String color;
int speed=0;
static int count=0;//정적

//생성자
Car(){

}
Car(String color){
this.color=color;
}
Car(String color,int speed){
this.color=color;
this.speed=speed;
}


//메소드
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