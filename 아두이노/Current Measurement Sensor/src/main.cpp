#include <Arduino.h>

float value;
float amp;
float Vcc = 5.0;
float sensitivity = 0.100;  // [V/A],  20A용 sensor: 0.100 V/A sensitivity

void setup() {
  Serial.begin(9600);
  pinMode(A0, INPUT);
}

void loop() {
  value = analogRead(A0);   //값이 max 값 1024 기준으로 나옴
  amp = (value*1.0-511.0)*(Vcc/1024)/sensitivity * 1000;
    //mA 단위로 환산
  Serial.println(value);
  Serial.print(amp);
  Serial.println(" mA");
  delay(1000);
}