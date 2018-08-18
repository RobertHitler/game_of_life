Board cells;

void setup(){
  size(600, 600);
  frameRate(24);
  cells = new Board();
  
 
}

void draw(){
  background(0);
  
  cells.update();
  cells.display();
}