Trunk tree = new Trunk();

void setup() 
{     
   size(800, 800);
   smooth();
   fill(255);
   background(0);
   noStroke();
   frameRate(15);
     
}

void draw()
{
  tree.growTree(); 
}


class Trunk {
  
    Branch branch;
        
    Trunk()
    {
      branch = new Branch(0, 0);
    }
    
    void growTree()
    {
      branch.grow();
    }
 
    
}
