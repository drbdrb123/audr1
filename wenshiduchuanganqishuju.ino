int potPin=A5;
 int servoPin=9;
 int servoPosition=1500;
int temperature= 0;
int humidity= 0;
long val=0;
void setup(){
Serial.begin(9600);
pinMode(servoPin,OUTPUT);
}
void loop (){
val = analogRead(potPin);
 temperature = (val*5.0 / 1023.0*100); 
 humidity=(val);
 int sensorValue=temperature;
 int senserVal=humidity;
 Serial.println(sensorValue);
 Serial.println(senserVal);
 Serial.write((byte)sensorValue/4);
 Serial.write((byte)senserVal/4);
 delay(1000);
 if(senserVal<20){
  digitalWrite(servoPin,HIGH);
  delayMicroseconds(servoPosition);
  digitalWrite(servoPin,LOW);
  delay(20);
  }
 }

