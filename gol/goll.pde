


class Board{
  int len = 10;
  int cols, rows;
  
  
  int gol[][];
  int next[][];
  
  Board(){
    cols = width/len;
    rows = height/len;
    gol = new int[cols][rows]; 
    
    present();
     }
     
  void present(){
    for(int i=1;i<cols-1;i++){
      for(int j=1;j<rows-1;j++){
        gol[i][j] = int(random(2));
      }
    }  
       
    }
    
  void update(){
    next = new int [cols][rows];
    
    for(int x =1;x<cols-1;x++){//remove -1 for wrap
      for(int y =1;y < rows-1;y++){
        
        int neighbour = 0;
        for(int i=-1;i<=1;i++){
          for(int j=-1;j <=1;j++){
            neighbour +=gol[x+i][y+j];//for wrap [(x+i+cols)%cols][(y+j+rows)%rows];
          }
        }
        
        neighbour -=gol[x][y];
     
      if((gol[x][y]==1) && (neighbour<2))
          next[x][y] =0;
      else if((gol[x][y]==1) && (neighbour>3))
          next[x][y] = 0;
      else if ((gol[x][y]==0) && (neighbour ==3))
          next[x][y] =1;
      else next[x][y] = gol[x][y];
      }
   }
    gol = next;
  }
  
            
    
  
  void display(){
    for ( int i = 0; i < cols;i++) {
      for ( int j = 0; j < rows;j++) {
        if ((gol[i][j] == 1)) fill(30,144,255);
        else fill(0); 
        stroke(10);
        rect(i*len, j*len, len, len);
  }
   }
  }
}