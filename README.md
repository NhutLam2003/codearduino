# codearduino
//duy
int mode = 2;
bool isPress = true;

void setup() {
  pinMode(3,INPUT);
  pinMode(2,OUTPUT);
}

void loop() {
  int btn = digitalRead(3);

  if(btn == 1){
    isPress = true;
  }
  else{
    if(isPress){
      mode =(mode == 2?mode=1:mode+1);
      if(mode == 1){
        mode = 1;
      }
      if(mode == 2){
        mode = 2;
      }
      isPress = false;
    }
  }
      switch(mode){
      case 1:
      digitalWrite(2,0);
      break;
      case 2:
      digitalWrite(2,1);
      break;
    }
}
//
