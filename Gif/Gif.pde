ArrayList<PImage> gif; 
int n = 0; 

void setup(){
  size(600,400);
  
  gif = new ArrayList<PImage>(); 
  int i =0;
  while( i<5){
     gif.add(loadImage("frame_" + str(i) +"_delay-0.1s.gif"));
     i++;
  }
  frameRate(120);
}

void draw() {
  PImage frame = gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if(n == 5) n=0;
}
