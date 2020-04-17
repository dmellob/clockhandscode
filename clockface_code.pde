class Breather {   

  // Location and size
  float x, y;
  float rad;
  // Angle for oscillation
  float theta;  
  float dtheta;

  Breather() { 
    // Initialize variables randomly
    x = width/2;
    y = height/2;  
    rad =random(278.5,0);
    theta = 0;  
    dtheta = 0.010;
  }   

  // Increment theta
  void breath() {
    theta += dtheta;
  }   

  void display() { 
    // Map size based on sine function  
    float r = rad + rad * (sin(theta) + 1);
    // Display circle
    
    noStroke();
    fill(108, 147, 251);//outer layer
    ellipse(x, y, 835, 835);
    tint(255, 127);
    fill(165, 190, 255);//inner layer
    ellipse(x, y, r, r);
    
  }
}
