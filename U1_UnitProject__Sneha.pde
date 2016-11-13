
float[] data = {width*2, width*3, width*5, width*7, width*9, width*11, width*13}; //x positions of my top lines
float[] data2 = {width*2, width*3, width*5, width*7, width*9, width*11, width*13}; //x positions for bottom lines
int i = 1;
float numLines = 100;
int yDirection;
float x = width*0.06;
float y = height*0.7;
int ySpeed = 16;
int score = 1;

void setup()
{
  fullScreen();
  for (float i = numLines; i < data.length; i++);
  {
    line(data[i], 0, data[i], 100); 
  }
}

void draw()
{
  background(37,131,246);
  
  
  strokeWeight(2);
  line(data[0], height*0, data[0], height*0.4); // how long the lines are going to be 
  line(data[1], height*0, data[1], height*0.2); // based on their y values
  line(data[2], height*0, data[2], height*0.3);
  line(data[3], height*0, data[3], height*0.3);
  line(data[4], height*0, data[4], height*0.25);
  line(data[5], height*0, data[5], height*0.35);
  line(data[6], height*0, data[6], height*0.15);
  
  strokeWeight(2);
  line(data2[0], height*0.525, data2[0], height*1);
  line(data2[1], height*0.325, data2[1], height*1);
  line(data2[2], height*0.425, data2[2], height*1);
  line(data2[3], height*0.425, data2[3], height*1);
  line(data2[4], height*0.375, data2[4], height*1);
  line(data2[5], height*0.525, data2[5], height*1);
  line(data2[6], height*0.275, data2[6], height*1);
  
  strokeWeight(1);
  fill(0,255,0);
  ellipse(56, 46, 55, 55);
  
  fill(255,165,0);
   ellipse(56, 46, 55, 55);
  
  fill(255);
  ellipse(56, 46, 55, 55);
  
  fill(255);
   ellipse(56, 46, 55, 55);
  
  fill(255);
   ellipse(56, 46, 55, 55);
  
  fill(255);
   ellipse(56, 46, 55, 55);
  
  textSize(75);
  fill(255);
  text(score, width*0.8, height*0.10);
  
  if(keyPressed == true)
  {
    if (key == ' ')
    {
      yDirection = -1;
      y = y + (yDirection*ySpeed);
      fill(255,165,0);
      ellipse(56, 46, 55, 55);
    }
  }
  else 
  {
    y = y + 2;
  }
  
  if (collision()) // what happens when the character touches any of the lines
  {
    delay(3000);
    
    x = width*0.05;
    y = height*0.5;
    score = 0;
    
    data[0] = width*0.2;
    data2[0] = width*0.2;
    data[1]= width*0.3; //<>//
    data2[1] = width*0.3;
    data[2]= width*0.5;
    data2[2] = width*0.5;
    data[3]= width*0.7;
    data2[3] = width*0.7;
    data[4]= width*0.9;
    data2[4] = width*0.9;
    data[5]= width*1.1;
    data2[5] = width*1.1;
    data[6] = width*1.3;
    data2[6] = width*1.3;
    
  }
  
  if (noCollision()) //what happens when there is no collision with each of the lines
  {
    score = score + 1;    
  }
  
  if (lines()) //what happens if the lines go out of the screen when moving
  {
    data[0] = width - 2;
    data2[0] = width - 2;  
  }
  
  if (lines2())
  {
    data[1] = width - 2;
    data2[1] = width - 2;  
  }
  
  if (lines3())
  {
    data[2] = width - 2;
    data2[2] = width - 2;  
  }
  
  if (lines4())
  {
    data[3] = width - 2;
    data2[3] = width - 2;  
  }
  
  if (lines5())
  {
    data[4] = width - 2;
    data2[4] = width - 2;  
  }
  
  if (lines6())
  {
    data[5] = width - 1;
    data2[5] = width - 1;  
  }
  
  if (lines7())
  {
    data[6] = width - 2;
    data2[6] = width - 2;  
  }
 
    data[0] = data[0] - 2; //shows that there will be moving lines
    data2[0] = data2[0] - 2;
    data[1] = data[1] - 2;
    data2[1] = data2[1] - 2;
    data[2] = data[2] - 2;
    data2[2] = data2[2] - 2;
    data[3] = data[3] - 2;
    data2[3] = data2[3] - 2;
    data[4] = data[4] - 2;
    data2[4] = data2[4] - 2;
    data[5] = data[5] - 2;
    data2[5] = data2[5] - 2;
    data[6] = data[6] - 2;
    data2[6] = data2[6] - 2; 
      
}
  
  boolean collision() //when the collision will happen
  {
    boolean returnValue = false;
    {
      if ((((((((x == data[0] - 50 && y < height*0.4) || (x == data2[0] - 50 && y > height*0.525) || (x == data[1] - 50 && y < height*0.2) || (x == data2[1] - 50 && y > height*0.325) || (x == data[2] - 50 && y < height*0.3) || 
      (x == data2[2] - 50 && y > height*0.425) && (x == data[3] - 50 && y < height*0.35) || (x == data2[3] - 50 && y > height*0.425) ||  (x == data[4] - 50 && y < height*0.25) || (x == data2[4] - 50 && y > height*0.375) || 
      (x == data[5] - 50 && y < height*0.4) || (x == data2[5] - 50 && y > height*0.525) || (x == data[6] - 50 && y < height*0.15) || (x == data2[6] - 50 && y > height*0.275))))))))
      {
      returnValue = true;   
   }
  }
return returnValue;
   }
 
  boolean noCollision() //when the collision will not happen
  {
    boolean returnValue = false;
    {
      if ((((((((x == data[0] && y > height*0.4) || (x == data2[0] && y < height*0.525) || (x == data[1] && y > height*0.200) || (x == data2[1] && y < height*0.325) || (x == data[2] && y > height*0.35) || (x == data2[2] && y < height*0.475)
      && (x == data[3] && y > height*0.3) || (x == data2[3] && y < height*0.425) ||  (x == data[4] && y > height*0.25) || (x == data2[4] && y < height*0.375) || (x == data[5] && y > height*0.4) ||
      (x == data2[5] && y < height*0.525) || (x == data[6] && y > height*0.15) || (x == data2[6] && y < height*0.275))))))))
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines() //shows what happens when the lines go out of the picture
  {
    boolean returnValue = false;
    {
      if (data[0] < 0)
      if (data2[0] < 0)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines2()
  {
    boolean returnValue = false;
    {
      if (data[1] < 1)
      if (data2[1] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines3()
  {
    boolean returnValue = false;
    {
      if (data[2] < 1)
      if (data2[2] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines4()
  {
    boolean returnValue = false;
    {
      if (data[3] < 1)
      if (data2[3] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines5()
  {
    boolean returnValue = false;
    {
      if (data[4] < 1)
      if (data2[4] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines6()
  {
    boolean returnValue = false;
    {
      if (data[5] < 1)
      if (data2[5] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }
  
  boolean lines7()
  {
    boolean returnValue = false;
    {
      if (data[6] < 1)
      if (data2[6] < 1)
      {
        returnValue = true;
      }
      return returnValue;
    }
  }