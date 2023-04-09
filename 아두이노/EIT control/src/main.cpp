#include <Arduino.h>

int muxChannel[16][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0}, {0,0,0,1}, {1,0,0,1}, {0,1,0,1}, {1,1,0,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {1,1,1,1} };
int controlPin1[4] = {4,5,6,7};   //MUX 1 연결 핀 (순서: s0,s1,s2,s3)
int controlPin2[4] = {0,1,2,3};   //MUX 2
int controlPin3[4] = {19,18,17,16};   //MUX 3
int controlPin4[4] = {8,9,10,11};   //MUX4
float Voltagedata[16][16-3] = {};
float Impedencedata[16][16-3] = {};

void setup() {// put your setup code here, to run once:
  for (int i=0; i<=11; i++)
  {
    pinMode(i, OUTPUT);
  }
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  pinMode(16, OUTPUT);
  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);

  for (int i=0; i<=11; i++)
  {
    digitalWrite(i,LOW);
  }
  digitalWrite(16,LOW);
  digitalWrite(17,LOW);
  digitalWrite(18,LOW);
  digitalWrite(19,LOW);

  Serial.begin(9600);
}

void loop() {// put your main code here, to run repeatedly:
  
  for(int k=0; k<=15; k++){   //k: 전류 흘리는 Pin 관련 값; k = MUX1, k+1 = MUX2 연결
    for(int i=0; i<=3; i++){
      digitalWrite(controlPin1[i], muxChannel[k][i]);
      if (k<15) { digitalWrite(controlPin2[i], muxChannel[k+1][i]); }
      else { digitalWrite(controlPin2[i], muxChannel[0][i]); }
    }
    int l=k+2;
    while(l<=k+14){   //l-16<=k-2   //l: 전압 받아오는 Pin 관련 값; l = MUX3, l+1 = MUX4 연결
      for(int i=0; i<=3; i++){
        if (l<=15) { digitalWrite(controlPin3[i], muxChannel[l][i]); }
        else { digitalWrite(controlPin3[i], muxChannel[l-16][i]); }
        if (l<15) { digitalWrite(controlPin4[i], muxChannel[l+1][i]); }
        else { digitalWrite(controlPin4[i], muxChannel[l+1-16][i]); }
      }
      int a= l-(k+2);
      Voltagedata[k][a] = (analogRead(1) - analogRead(0))/1023. * 5 ;  // MUX3, MUX4로부터 받아온 두 전압값의 차이값 저장, [V]
      
      //실시간 출력값 보기 위한 코드
      Serial.print("( 전류 흘리는 센서 # ): (");
      if (k<15) { Serial.print(k+1);    Serial.print(",");    Serial.print(k+2);    Serial.print(") ");}
      else { Serial.print(k+1);    Serial.print(",1");    Serial.print(") ");}
      Serial.print("( 전압 측정하는 센서 # ): (");
      if (l<15) { Serial.print(l+1);    Serial.print(",");    Serial.print(l+2);    Serial.print(") ");}
      else if (l==15) {Serial.print("16,1) ");}
      else { Serial.print(l+1-16);    Serial.print(",");    Serial.print(l+2-16);    Serial.print(") ");}
      Serial.print("( 측정 전압 값 ): (");
      Serial.print(Voltagedata[k][a]);    Serial.println("[V])");

      l++;
      delay(10);
    }
  // 저항 측정 (이후 CNN 등 적용할 부분) : van der Pauw 공식
  // -> 전류값이 있어야 한다... VCCS라기엔 전류 값의 신뢰성이 낮고, 전류측정센서를 이용하기엔 mA수준에서 Resolution이 낮다..


  }


}
  // for(int k=0; k<=15; k++){
  //   for(int l=0; l<=15; l++){
  //     if(l==k){;}
  //     else if( (l==k+1) || (l==k+1-16) ){;}
  //     else if( (l==k+2) || (l==k+2-16) ){;}
  //     else{
  //       for(int i=0; i<=3; i++){
  //         digitalWrite(controlPin1[i], muxChannel[k][i]);
  //         if(k<15){
  //           digitalWrite(controlPin2[i], muxChannel[k+1][i]);}
  //         else{
  //           digitalWrite(controlPin2[i], muxChannel[0][i]);}
  //         digitalWrite(controlPin3[i], muxChannel[l][i]);
  //         if(l<15){
  //           digitalWrite(controlPin4[i], muxChannel[l+1][i]);}
  //         else{
  //           digitalWrite(controlPin4[i], muxChannel[0][i]);}
  //       }
  //     }
  //   }
  // }