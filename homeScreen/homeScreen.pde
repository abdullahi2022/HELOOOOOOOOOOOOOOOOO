//Global Variables
//float gridX, gridY, gridWidth, gridHeight; //Top Left
//float gridX2, gridY2, gridWidth2, gridHeight2;// Top Middle
//float gridX3, gridY3, gridWidth3, gridHeight3;//Top Right
//float gridX4, gridY4, gridWidth4, gridHeight4;//Middle Left
//float gridX5, gridY5, gridWidth5, gridHeight5;//Middle Middle
//float gridX6, gridY6, gridWidth6, gridHeight6;//Middle Right
//float gridX7, gridY7, gridWidth7, gridHeight7;//Bottom Left
//float gridX8, gridY8, gridWidth8, gridHeight8;//Bottom Middle
//float gridX9, gridY9, gridWidth9, gridHeight9;//Bottom Right
//

PImage mailpic, headlightpic, r_arrow, l_arrow, runAway;
PFont storyfont, titleFont, chapterfont;

int scene = 0;
//Center Variables
float centerX, centerY;
float thack = 1.5;
//
void setup() {
  size (800, 800);
  //
  //Population
  populatingVariables();
} //End setup
//
void draw() {
  //strokeWeight(thack);
  //rect(gridX, gridY, gridWidth, gridHeight);
  //rect(gridX2, gridY2, gridWidth2, gridHeight2);
  //rect(gridX3, gridY3, gridWidth3, gridHeight3);
  //rect(gridX4, gridY4, gridWidth4, gridHeight4);
  //rect(gridX5, gridY5, gridWidth5, gridHeight5);
  //rect(gridX6, gridY6, gridWidth6, gridHeight6);
  //rect(gridX7, gridY7, gridWidth7, gridHeight7);
  //rect(gridX8, gridY8, gridWidth8, gridHeight8);
  //rect(gridX9, gridY9, gridWidth9, gridHeight9);
  if (scene == 0) {
    title();
  } else if (scene == 1) {
    startAdventure();
  } else if (scene == 2) {
    mailPicture();
  } else if (scene == 3) {
    goInside();
  } else if (scene == 4) {
    openMail();
  } else if (scene == 5) {
    dockMeet();
  } else if (scene == 6) {
    prank();
  } else if (scene == 7) {
    headlight();
  } else if (scene == 8) {
    standGround();
  } else if (scene == 9) {
    runaway();
  } else if (scene == 10) {
    calmDown();
  } else if (scene == 11) {
    returnHome();
  } else if (scene == 12) {
    report();
  } else if (scene == 13) {
    endAdventure();
  }
} //End draw


void keyPressed() {
    if (scene == 0) {
    if (key == '1') {
      scene = scene + 1;
    }
  }  

  if (scene == 1) {

    // Page 1 to Page 2
    if (key == '2') {
      scene = scene + 1;
    } 

    // Page 1 to Page 3
    else if (key == '3') {
      scene = scene + 2;
    }
  }

  // Page 2 to Page 4 
  if (scene == 2) {
    if (key == '4') {
      scene = scene + 2;
    }
  }

  // Page 4 to Page 3 or Page 5
  if (scene == 4) {
    // Page 3
    if (key == '3') {
      scene = scene - 1;
    }

    // Page 5
    else if (key == '5') {
      scene = scene + 1;
    }
  }

  // Page 5 to Page 6 or Page 7
  if (scene == 5) {

    // Page 6
    if (key == '6') {
      scene = scene + 1;
    }

    // Page 7
    else if (key == '7') {
      scene = scene + 2;
    }
  }

  // Page 6 to Page 1 or Last Page(13) 
  if (scene == 6) {
    if (key == 'r' || key == 'R') {
      scene = scene - 5;
    }

    // Last Page(13)
    else if (key == 'L' || key == 'l') {
      scene = scene + 7;
    }
  }

  // Page 7 to Page 8 or Page 9
  if (scene == 7) {
    // Page 8
    if (key == '8') {
      scene = scene + 1;
    }

    // Page 9
    else if (key == '9') {
      scene = scene + 2;
    }
  }
  // Page 8 to Page 9 or Page 10
  if (scene == 8) {
    // Page 9
    if (key == '9') {
      scene = scene + 1;
    }

    // Page 10
    else if (key == '0') {
      scene = scene + 2;
    }
  }

  // Page 10 to Page 1 or Last Page
  if (scene == 10) {
    // Page 10 to Page 1
    if (key == 'R' || key == 'r') {
      scene = scene - 9;
    }

    // Page 1 to Page 13
    else if (key == 'L' || key == 'l') {
      scene = scene + 3;
    }
  }

  if (scene == 11) {
    if (key == 'R' || key == 'r') {
      scene = scene - 10;
    } else if (key == 'L' || key == 'l') {
      scene = scene + 2;
    }
  }

  if (scene == 12) {
    if (key == 'R' || key == 'r') {
      scene = scene - 11;
    } else if (key == 'L' || key == 'l') {
      scene = scene + 1;
    }
  }

  if (scene == 13) {
    // Title Page
    if (key == 'T' || key == 't') {
      scene = scene - 13;
    }
  }




  // Page 3 to Title Page or Page 1
  if (scene == 3) {

    // Page 1
    if (keyCode == BACKSPACE) {
      scene = scene - 2;
    }

    // Title Page
    else if (keyCode == ENTER) {
      scene = scene - 3;
    }
  }

}//End keyPressed

void mousePressed() {
  print(mouseX);
  print(mouseY);
  if(scene == 9){
    if((mouseX >=30) && (mouseX <= 340)){
      if((mouseY >= 405) & (mouseY <=600)){
        scene = scene + 2;
      }
    }

    else if((mouseX >=450) && (mouseX <= 773)){
      if((mouseY >= 405) && (mouseY <=600)){
        scene = scene + 3;
      }
    }
  }
}//End mousePressed
//
//End Main
