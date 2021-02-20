function [i1,i2,i3] = clarke (id,iq,theta)

i1=(2/3)^(0.5)*(cos(theta).*id-sin(theta).*iq);
i2=(2/3)^(0.5)*(cos(theta-2*pi/3).*id-sin(theta-2*pi/3).*iq);
i3=(2/3)^(0.5)*(cos(theta-4*pi/3).*id-sin(theta-4*pi/3).*iq);

end