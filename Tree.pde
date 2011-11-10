Branch branch;

void setup() 
{
  size(800, 800);
  smooth();
  fill(255);
  background(0);
  branch = new Branch();
}


void draw() 
{
  branch.grow();
}
