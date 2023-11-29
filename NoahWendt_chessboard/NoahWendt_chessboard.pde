/*
So this is my chessboard code. quite unelegant solution with the offset. 
I feel there should be a much better solution, but I could not think of it. 
Also a bit long with 21 lines of code. But heyyy, it does what it should. 
*/

void setup ()
{
  size(512, 512);
  noStroke();
  chessboard();
}
void chessboard()
{
  float offset;
  for (int i=0; i<width; i++) {
    for (int j=0; j<height; j++) {
      if (i%2==0) { // Needed some syntax help here. got it at: https://stackoverflow.com/questions/2821006/find-if-variable-is-divisible-by-2
        fill(0);
      } else fill(255);
      if(j%2==0){
      offset = -width/8;
      }else offset=0;
      rect(i*width/8+offset, j*height/8, width/8, height/8);
    }
  }
}
