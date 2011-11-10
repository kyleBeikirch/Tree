class Branch {
  boolean growing = true;
  boolean branched = false;
  Branch[] branches;
  int lifeSpan = round(random(25, 200));
  int age = 0;
  
  Branch()
  {
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
        println("growing");
      }
    }
    
    
  }
  
  void branchOut()
  {
    int numChildren = round(random(1, 3));
    for(int i = 0; i < numChildren; i++)
    {
        println("branched");
        println("**********");
        branch = new Branch();
    }
    
  }
}
