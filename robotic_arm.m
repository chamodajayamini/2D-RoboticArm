%forward kinematics of 2R Robotic Arm%
close all
clear all
clc

%% inputs
l1 = 4;    %length link 1 = 11
l2 = 3;    %length link 2 = 12

theta1 = linspace(0,90,4);
theta2= linspace(0,90,4);

 %% for loop
 for i = 1:length(theta1)
     THETA1 = theta1(i);
     for j = 1:length(theta2)
          THETA2 = theta2(j);
          
          % coordinates
          
          x0 = 0;
          y0 = 0;
       
          
          x1 = l1*cosd(THETA1);
          y1 = l1*sind(THETA1);
          
          x2 = x1+l2 *cosd(THETA2);
          y2 = y1+l2 *sind(THETA2);
          
          %plotting
          plot([x0 x1],[y0 y1],[x1 x2],[y1 y2],'linewidth',2)
          pause(0.1)
     end
 end

