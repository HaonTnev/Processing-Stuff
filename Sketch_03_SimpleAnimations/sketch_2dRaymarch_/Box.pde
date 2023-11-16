class Box
{
  PVector pos;
  float size= 20;

  void showBox()
  {
    beginShape();
    push();
    vertex(pos.x, pos.y);
    vertex(pos.x+20, pos.y);
    vertex(pos.x+20, pos.y+20);
    vertex(pos.x, pos.y+20);
    pop();
    endShape(CLOSE);
  }

  //float signedDstToBox(PVector p) 
  //  {
  //  PVector offset = new PVector(abs(p.x-pos.x) - size, abs(p.y-pos.x) - size);
  //  // dst from point outside box to edge (0 ifinside box)
  //    float unsignedDst = length(max(offset, 0));
  //  //-dst from point inside box to edge (0 if outside box)
  //    float dstInsideBox = max(min(offset, 0));
  //  return unsignedDst + dstInsideBox;
  //}
}
