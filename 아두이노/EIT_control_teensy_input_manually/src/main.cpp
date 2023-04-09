#include <Arduino.h>

int elec_num = 16; // 전극 수, max 16

int controlPin1[4] = {5,4,3,2};   //MUX 1 연결 핀 (순서: s0,s1,s2,s3)
int controlPin2[4] = {9,8,7,6};   //MUX 2
int muxChannel[16][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0}, {0,0,0,1}, {1,0,0,1}, {0,1,0,1}, {1,1,0,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {1,1,1,1} };

void setup() {// put your setup code here, to run once:
  for (int i=2; i<=9; i++)
  {    pinMode(i, OUTPUT); }

  for (int i=2; i<=9; i++)
  {    digitalWrite(i,LOW); }
  
  Serial.begin(9600);
}

void loop() {// put your main code here, to run repeatedly:

  digitalWrite(controlPin1[0],1);
  digitalWrite(controlPin1[1],1);
  digitalWrite(controlPin1[2],1);
  digitalWrite(controlPin1[3],0);

  digitalWrite(controlPin2[0],0);
  digitalWrite(controlPin2[1],0);
  digitalWrite(controlPin2[2],0);
  digitalWrite(controlPin2[3],1); 

  Serial.println("now: 3");
  delay(1000);
}