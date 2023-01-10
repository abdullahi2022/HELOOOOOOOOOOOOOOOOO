void headlight() {
  background(0,0,0);
  image(headlightpic,0,0,800,800);
  textSize(45);
  textAlign(CENTER);
  textFont(chapterfont);
  text("Page 7 - Person Arrives", width/2, 50);
  textSize(35);
  fill(red);
  textAlign(LEFT);
  textFont(storyfont);
  text("Then, in the distance you hear a car rumble in the \nbackground. As it gets closer the noise gets louder and a \npair of bright yellow headlights come into existence. \n\n\nPress one of the keys to do the following action; \n\n8) Stand your ground (Turn to Page 8) \n\n9) Run away as fast as you can (Turn to Page 9)", 20, 150);

  
}//End headlight
