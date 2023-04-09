#include <Arduino.h>

int muxChannel[4][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0} };
int controlPin1[4] = {6,7,8,9};   //MUX 1 연결 핀 (순서: s0,s1,s2,s3)
int controlPin2[4] = {2,3,4,5};   //MUX 2
int controlPin3[4] = {19,18,17,16};   //MUX 3
int controlPin4[4] = {10,11,12,13};   //MUX4
float Voltagedata[4][4-3];

void setup() {// put your setup code here, to run once:
  for (int i=2; i<=13; i++)
  {
    pinMode(i, OUTPUT);
  }
  pinMode(14, INPUT);
  pinMode(15, INPUT);
  pinMode(16, OUTPUT);
  pinMode(17, OUTPUT);
  pinMode(18, OUTPUT);
  pinMode(19, OUTPUT);

  for (int i=2; i<=13; i++)
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
  
  for(int k=0; k<=3; k++){   //k: 전류 흘리는 Pin 관련 값; k+1 = MUX1, k+2 = MUX2 연결
    for(int i=0; i<=3; i++){
      digitalWrite(controlPin1[i], muxChannel[k][i]);
      if (k<3) { digitalWrite(controlPin2[i], muxChannel[k+1][i]); }
      // Serial.print(i);
      // Serial.print(" ");
      // Serial.println(muxChannel[k+1][i]); }
      else { digitalWrite(controlPin2[i], muxChannel[0][i]); }
      //       Serial.print(i);
      // Serial.print(" ");
      // Serial.println(muxChannel[k+1-4][i]); 
    }
    int l=k+2;
    while(l<=k+2){   //l-4<=k-2   //l: 전압 받아오는 Pin 관련 값; l+1 = MUX3, l+2 = MUX4 연결
      for(int i=0; i<=3; i++){
        if (l<=3) { digitalWrite(controlPin3[i], muxChannel[l][i]); }
        else { digitalWrite(controlPin3[i], muxChannel[l-4][i]); }
        if (l<3) { digitalWrite(controlPin4[i], muxChannel[l+1][i]); }
        else { digitalWrite(controlPin4[i], muxChannel[l+1-4][i]); }
      }
      int a= l-(k+2);
      Voltagedata[k][a] = (analogRead(0) - analogRead(1))/1023. * 5 ;  // MUX3(0), MUX4(1)로부터 받아온 두 전압값의 차이값 저장, [V]
      // Voltagedata[k][a] = analogRead(0)/1023. * 5 ;  // OP Amp 회로로 측정한 MUX3, MUX4 SIG 사이 전압값 저장, [V]
      
      Serial.print("( 전류 흘리는 센서 # ): (");
      if (k<3) { Serial.print(k+1);    Serial.print(",");    Serial.print(k+2);    Serial.print(") ");}
      else { Serial.print(k+1);    Serial.print(",1");    Serial.print(") ");}
      
      Serial.print("( 전압 측정하는 센서 # ): (");
      if (l<3) { Serial.print(l+1);    Serial.print(",");    Serial.print(l+2);    Serial.print(") ");}
      else if (l==3) {Serial.print("4,1) ");}
      else { Serial.print(l+1-4);    Serial.print(",");    Serial.print(l+2-4);    Serial.print(") ");}

      Serial.print("( 측정 전압 값 ): (");
      Serial.print(Voltagedata[k][a]);    Serial.println("[V])");

      l++;
      delay(500);
    }
  }
}