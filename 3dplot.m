%3d plot

clear 
clc

  [x,y]=meshgrid(-10:0.1:10);
  z = sin(x)+cos(y);
  
  surf(z)