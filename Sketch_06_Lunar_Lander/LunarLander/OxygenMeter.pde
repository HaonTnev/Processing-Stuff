class OxygenMeter
{
  float o2;

  void show()
  {
    if (o2>0&&o2<=200)
    {
      reduceO2();
    }
    push();
    noFill();
    stroke(0);
    rect (50, 50, 200, 20);
    fill(#257FA7);
    rect (50, 50, o2, 20);
    pop();
  }
  void reduceO2()
  {
    o2= 02-time()*10;
  }
  float time()
  {
    println(millis()/1000);
    return millis()*1000;
  }
}
