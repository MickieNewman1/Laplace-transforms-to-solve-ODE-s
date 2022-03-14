
%% Part a

%% Part b
% for k=1 xfin=sin(t) + (t*sin(t))/2
% for k=.8 xfin= 5*cos((2*5^(1/2)*t)/5) - 5*cos(t) + (5^(1/2)*sin((2*5^(1/2)*t)/5))/2
%% Part c
t= 0:.1:120;
y= sin(t) + (t.*sin(t))/2;
x = 5*cos((2*5^(1/2)*t)/5) - 5*cos(t) + (5^(1/2)*sin((2*5^(1/2)*t)/5))/2;
figure(1)
plot(t,x)
figure(2)
plot(t,y)
% the spring where k=.8 is more likely to break because it represents a
% beat.
