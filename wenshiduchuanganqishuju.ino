int potPin=A5;
 int servoPin=9;
 int servoPosition=1500;

int humidity= 0;
long val=0;
void setup(){
Serial.begin(9600);
pinMode(servoPin,OUTPUT);
}
void loop (){
val = analogRead(potPin);
 
 humidity=(val);
 
 int senserVal=humidity;
 
 Serial.println(senserVal);
 
 
 Serial.write((byte)senserVal/4);
 delay(1000);
 if(senserVal<1000){
  digitalWrite(servoPin,HIGH);
  delayMicroseconds(servoPosition);
  digitalWrite(servoPin,LOW);
  delay(20);
  }
 }

