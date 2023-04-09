unsigned long time;

void setup() {
  pinMode(13, OUTPUT);
  time = 0.0;
}

void loop() {
  digitalWrite(13, !(digitalRead(13)));
  delay(500);
  time = millis();
  if (time > 3000) {
    exit(0);
  }
}