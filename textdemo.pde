// Exploring ways to create dynamic text with 
//different color fill on mouse movement
//- Anmol Srivastava


int i; 
void setup()
{
size(700,600);
i = 0;
}


void draw()
{

 // if(key =='a')
  //{
//i +=1;  
textSize(mouseY + 1);
//fill(random(120));
for (int i = 0; i <= 100; i++)
{
fill(random(i+400), random(i+300), random(255));
}
text("DESIGN", mouseX, mouseY); 
//delay(50);
textAlign(CENTER);
  //}  
  //if (key == 'b')
 // {
   // i -=1;  
//textSize(i);
//fill(random(90,10), random(90,10), random(90,10));
//text("Desing", width/2, height/2); 
//delay(50);
//textAlign(CENTER);
  //}
    

}
