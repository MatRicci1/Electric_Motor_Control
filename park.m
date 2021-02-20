function [vd,vq] = park (vo1,vo2,vo3,theta)

vd =(2/3)^(0.5)*(cos(theta)*vo1 + cos(theta-2*pi/3)*vo2 + cos(theta-4*pi/3).*vo3);
vq =(2/3)^(0.5)*(-sin(theta)*vo1 - sin(theta-2*pi/3)*vo2 - sin(theta-4*pi/3).*vo3);

end