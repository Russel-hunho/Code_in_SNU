#include <Arduino.h>

int elec_num = 8; // 전극 수, max 16

int controlPin1[4] = {5,4,3,2};   //MUX 1 연결 핀 (순서: s0,s1,s2,s3)
int controlPin2[4] = {9,8,7,6};   //MUX 2
int controlPin3[4] = {18,19,20,21};   //MUX 3
int controlPin4[4] = {14,15,16,17};   //MUX4
int muxChannel[16][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0}, {0,0,0,1}, {1,0,0,1}, {0,1,0,1}, {1,1,0,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {1,1,1,1} };


void setup() {// put your setup code here, to run once:
  for (int i=2; i<=9; i++)
  {    pinMode(i, OUTPUT); }
  pinMode(10, OUTPUT);
  pinMode(12, OUTPUT);
  for (int i=16; i<=21; i++)
  {    pinMode(i, OUTPUT); }
  pinMode(13, INPUT);
  pinMode(14, INPUT);

  for (int i=2; i<=9; i++)
  {    digitalWrite(i,LOW); }
  for (int i=14; i<=21; i++)
  {    digitalWrite(i,LOW); }
  
  Serial.begin(9600);
}

void loop() {// put your main code here, to run repeatedly:
  double Voltagedata[elec_num][elec_num-3][3];
  double Voltagedata_vector[(elec_num-3)*(elec_num)];   //Matlab EIDORS에서 사용하기 위한 data form
  // if (elec_num == 4)
  // {int muxChannel[elec_num][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0} };}
  // else if (elec_num == 8)
  // {int muxChannel[elec_num][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0} };}
  // else  // elec_num=16
  // {int muxChannel[elec_num][4]={ {0,0,0,0}, {1,0,0,0}, {0,1,0,0}, {1,1,0,0}, {0,0,1,0}, {1,0,1,0}, {0,1,1,0}, {1,1,1,0}, {0,0,0,1}, {1,0,0,1}, {0,1,0,1}, {1,1,0,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {1,1,1,1} };}

  for(int k=0; k<=elec_num-1; k++){   //k: 전류 흘리는 Pin 관련 값; k+1 = MUX1, k+2 = MUX2 연결
    for(int i=0; i<=3; i++){
      digitalWrite(controlPin1[i], muxChannel[k][i]);
      if (k < elec_num-1) { digitalWrite(controlPin2[i], muxChannel[k+1][i]); }
      // Serial.print(i);
      // Serial.print(" ");
      // Serial.println(muxChannel[k+1][i]); }
      else { digitalWrite(controlPin2[i], muxChannel[0][i]); }
      //       Serial.print(i);
      // Serial.print(" ");
      // Serial.println(muxChannel[k+1-4][i]); 
    }
    delayMicroseconds(100); // 전류 흘린 후 Loading 시간을 주는것, 100 micro second 만큼의 delay
    
    int l=k+2;
    while(l<=k+elec_num-2){   //l-(전극 수)<=k-2   //l: 전압 받아오는 Pin 관련 값; l+1 = MUX3, l+2 = MUX4 연결
      for(int i=0; i<=3; i++){
        if (l<=elec_num-1) { digitalWrite(controlPin3[i], muxChannel[l][i]); }
        else { digitalWrite(controlPin3[i], muxChannel[l-elec_num][i]); }
        if (l<elec_num-1) { digitalWrite(controlPin4[i], muxChannel[l+1][i]); }
        else { digitalWrite(controlPin4[i], muxChannel[l+1-elec_num][i]); }
      }
      int a= l-(k+2);
      
      analogReadResolution(13); //Teensy의 최대 분해능: 13bit, 이 함수 없을경우는 10bit로 읽음
      Voltagedata[k][a][0] = analogRead(1) /8192.* 3.3 ;  // MUX3(9)로부터 받아온 전압값 저장, [V]
      Voltagedata[k][a][1] = analogRead(0) /8192.* 3.3 ;  // MUX4(8)로부터 받아온 전압값 저장, [V]
      Voltagedata[k][a][2] = Voltagedata[k][a][0] - Voltagedata[k][a][1] ;  // MUX3(9), MUX4(8)로부터 받아온 두 전압값의 차이값 저장, [V]
      Voltagedata_vector[k*elec_num+a] = Voltagedata[k][a][2];
      // Voltagedata[k][a] = analogRead(0)/1023. * 5 ;  // OP Amp 회로로 측정한 MUX3, MUX4 SIG 사이 전압값 저장, [V]
      
      // //데이터 확인용 terminal 출력
      // Serial.print("( 전류 흘리는 센서 # ): (");
      // if (k < elec_num-1) { Serial.print(k+1);    Serial.print(",");    Serial.print(k+2);    Serial.print(") ");}
      // else { Serial.print(k+1);    Serial.print(",1");    Serial.print(") ");}
      
      // Serial.print("( 전압 측정하는 센서 # ): (");
      // if (l < elec_num-1) { Serial.print(l+1);    Serial.print(",");    Serial.print(l+2);    Serial.print(") ");}
      // else if (l == elec_num-1 ) {Serial.print(elec_num);    Serial.print(",1) ");}
      // else { Serial.print(l+1-elec_num);    Serial.print(",");    Serial.print(l+2-elec_num);    Serial.print(") ");}

      // Serial.print("( 측정 전압 값 ): (");
      // Serial.print("V1= "); Serial.print(Voltagedata[k][a][0],5);    Serial.print("[V] & ");
      // Serial.print("V2= "); Serial.print(Voltagedata[k][a][1],5);    Serial.print("[V] & ");
      // Serial.print("V1-V2= "); Serial.print(Voltagedata[k][a][2],5);    Serial.println("[V])");
      // //Serial.print(Voltagedata[k][a],5);    Serial.println("[V])");

      // SerialPlot 이용 data 저장용
      Serial.print(Voltagedata_vector[k*elec_num+a],5);  Serial.print(" ");

      l++;
      delay(100);
    }
    //Serial.println("");
  }
  Serial.println("");
  Serial.println("");
}