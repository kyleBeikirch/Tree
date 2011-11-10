class Branch {
  boolean growing = true;
  boolean branched = false;
  ArrayList branches = new ArrayList();
  int lifeSpan = round(random(25, 200));
  int age = 0;
  int offsetX;
  int lineY = round(random(0, 800));
  Branch branch;
  
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
        ellipse(age+offsetX, lineY, 3, 3);
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
        branch = new Branch(age+offsetX);
        branches.add(branch);
    }
    
  }
}
