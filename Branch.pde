class Branch {
  boolean growing = true;
  boolean branched = false;
  Branch[] branches;
  int lifeSpan = round(random(25, 200));
  int age = 0;
  int offsetX;
  int lineY = round(random(0, 800));
  
  Branch(int startPosX)
  {
    offsetX = startPosX;
  }
  
  void grow()
  {
    if(growing == true)
    {
      age++;
      if(age > lifeSpan)
      {
        growing = false;
        branchOut();
      }
    
      else
      {
        ellipse(age+offsetX, lineY, 5, 5);
      }
    }
    
    
  }
  
  void branchOut()
  {
    int numChildren = round(random(1, 3));
    for(int i = 0; i < numChildren; i++)
    {
        branch = new Branch(age+offsetX);
    }
    
  }
}
