class OxygenMeter
{
  float o2Value = 200;

  void show()
  {
    if (game) {
      if (o2()>0)
      {
        push();
        noFill();
        stroke(0);
        rect (50, 50, 200, 20);
        fill(#257FA7);
        rect (50, 50, o2(), 20);
        pop();
      }
    }
  }
  float o2()
  {
    return o2Value+millisSinceStart-(DeltaTime*5);
  }
}
