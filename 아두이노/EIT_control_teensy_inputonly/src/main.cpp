#include <Arduino.h>

int elec_num = 16; // 전극 수, max 16
int samplingnum = 500; // 한 전극간에서의 신호를 반복하는 횟수

int controlPin1[4] = {5,4,3,2};   //MUX 1 연결 핀 (순서: s0,s1,s2,s3)
int controlPin2[4] = {9,8,7,6};   //MUX 2
int muxChannel[16][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0}, {0,0,0,1}, {1,0,0,1}, {0,1,0,1}, {1,1,0,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {1,1,1,1} };

int freq = 5; // AC Current의 주파수: 10[kHz]

void setup() {// put your setup code here, to run once:
  for (int i=2; i<=9; i++)
  {    pinMode(i, OUTPUT); }

  for (int i=2; i<=9; i++)
  {    digitalWrite(i,LOW); }  

  Serial.begin(9600);
}

void loop() {// put your main code here, to run repeatedly:

  for(int k=0; k<=elec_num-1; k++){   //k: 전류 흘리는 Pin 관련 값; k+1 = MUX1, k+2 = MUX2 연결
    for(int i=0; i<=3; i++){
      digitalWrite(controlPin1[i], muxChannel[k][i]);
      if (k < elec_num-1) { digitalWrite(controlPin2[i], muxChannel[k+1][i]); }
      else { digitalWrite(controlPin2[i], muxChannel[0][i]); }
    }

    delay(samplingnum * 1/freq); // samplingnum번의 주기만큼의 시간을 주는것, 5kHz 500주기: 0.1초
      Serial.println("now:1");
    // Real Time 통신을 위해 나중에 적용할 내용
    // delayMicroseconds(100); // 전류 흘린 후 Loading 시간을 주는것, 100 micro second 만큼의 delay
    // delayMicroseconds((1000/freq)*10); // 10주기만큼의 시간을 주는것
  }
}