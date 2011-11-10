class Branch {
  boolean growing = true;
  boolean branched = false;
  ArrayList branches = new ArrayList();
  int lifeSpan = round(random(25, 200));
  int age = 0;
  int offsetX;
  int lineY = round(random(0, 800));
  Branch branch;
  float rad;
  
  Branch(int startPosX, float startAngle)
  {
    float angleOffset = random(-2, 2);
    rad = (PI / (startAngle + angleOffset));
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
            fill(0);
            ellipse(age+offsetX, 0, 3, 3);
            fill(255);
            pushMatrix();
            rotate(rad);
            translate(400, 400);
            ellipse(age+offsetX, 0, 3, 3);
            popMatrix();
      }
    }
    
    else
    {
      for (int i = 0; i < branches.size(); i++) 
      { 
        Branch childBranch = (Branch) branches.get(i);
        childBranch.grow();
      }
    }
    
    
  }
  
  void branchOut()
  {
    int numChildren = round(random(1, 3));
    for(int i = 0; i < numChildren; i++)
    {
        branch = new Branch(age+offsetX, rad);
        branches.add(branch);
    }
    
  }
}
