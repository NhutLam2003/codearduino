# codearduino
/////////////////////////////////Duy//////////////////////////////////////
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
/////////////////////////////////Nhân//////////////////////////////////////
int modeA0 = 2;
int mode12 = 2;
int mode13 = 2;
bool isPressA3 = true;
bool isPressA2 = true;
bool isPressA1 = true;

void setup() {
  pinMode(A3,INPUT);
  pinMode(A2,INPUT);
  pinMode(A1,INPUT);
  pinMode(A0,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
}

void loop() {
  int btn1 = digitalRead(A3);
  int btn2 = digitalRead(A2);
  int btn3 = digitalRead(A1);

  if(btn1 == 1){
    isPressA3 = true;
  }
  else{
    if(isPressA3){
      modeA0 =(modeA0 == 2?modeA0 = 1:modeA0 + 1);
      if(modeA0 == 1){
        modeA0 = 1;
      }
      if(modeA0 == 2){
        modeA0 = 2;
      }
      isPressA3 = false;
    }
  }
      switch(modeA0){
      case 1:
      digitalWrite(A0,0);
      break;
      case 2:
      digitalWrite(A0,1);
      break;
    }
    //
    if(btn2 == 1){
    isPressA2 = true;
  }
  else{
    if(isPressA2){
      mode12 =(mode12 == 2?mode12 = 1:mode12 + 1);
      if(mode12 == 1){
        mode12 = 1;
      }
      if(mode12 == 2){
        mode12 = 2;
      }
      isPressA2 = false;
    }
  }
      switch(mode12){
      case 1:
      digitalWrite(13,0);
      break;
      case 2:
      digitalWrite(13,1);
      break;
    }
    //
    if(btn3 == 1){
    isPressA1 = true;
  }
  else{
    if(isPressA1){
      mode13 =(mode13 == 2?mode13 = 1:mode13 + 1);
      if(mode13 == 1){
        mode13 = 1;
      }
      if(mode13 == 2){
        mode13 = 2;
      }
      isPressA1 = false;
    }
  }
      switch(mode13){
      case 1:
      digitalWrite(12,0);
      break;
      case 2:
      digitalWrite(12,1);
      break;
    }
}
//
