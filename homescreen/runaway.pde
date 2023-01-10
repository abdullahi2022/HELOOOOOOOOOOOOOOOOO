void runaway() {
  background(0,0,0);
  image(runAway,0,0,800,700);  
  textSize(45);
  textAlign(CENTER);
  textFont(chapterfont);
  text("Page 9 - Running Away", width/2, 50);
  textSize(35);
  fill(255,0,0);
  textAlign(LEFT); 
  textFont(storyfont);
  text("You decide to run away. You hear the car in the distance. \nIts headlights get brighter as it get closer. You turn left \ninto a dark alleyway. As you see the car speed, you have a \nchoice to either return home or go to the police station and \nreport what happened.)", 20,150); 
  fill(0,0,255);
  rect(20,405,325,200,20);
  fill(0,255,0);
  rect(450,405,325,200,20);
  image(l_arrow,30,400,300,165);
  image(r_arrow,460,400,300,165);
  fill(red);
  textAlign(CENTER);
  text("Return Home",180,575);
  text("Report To The Police", 610,575);
  
}//End runaway
