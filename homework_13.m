
%% Part a
% in the comand space:
%syms x(t) t
%Dx= diff(x,t);
%D2x= diff(Dx,t);
%xeq= D2x+(0.8*x) == cos(t)
 
%xeq(t) =
 
%(4*x(t))/5 + diff(x(t), t, t) == cos(t)
 
 %eqLT=laplace(xeq)
 
%eqLT =
 
%s^2*laplace(x(t), t, s) - s*x(0) - subs(diff(x(t), t), t, 0) + (4*laplace(x(t), t, s))/5 == s/(s^2 + 1)
 
%syms Fs
%eqLT= subs( eqLT, laplace(x), Fs)
 
%eqLT =
 
%Fs*s^2 - x(0)*s + (4*Fs)/5 - subs(diff(x(t), t), t, 0) == s/(s^2 + 1)
 
%X= solve( eqLT, Fs) 
 
%X =
 
%(s*x(0) + s/(s^2 + 1) + subs(diff(x(t), t), t, 0))/(s^2 + 4/5)
 
%x_soln= ilaplace(X)
 
%x_soln =
 
%5*cos((2*5^(1/2)*t)/5) - 5*cos(t) + x(0)*cos((2*5^(1/2)*t)/5) + (5^(1/2)*sin((2*5^(1/2)*t)/5)*subs(diff(x(t), t), t, 0))/2
 
%vars = [x(0), Dx(0)];
%vals = [0,1];
%xfin= subs( x_soln, vars, vals)
 
%xfin =
 
%5*cos((2*5^(1/2)*t)/5) - 5*cos(t) + (5^(1/2)*sin((2*5^(1/2)*t)/5))/2
 
%syms x(t) t
%Dx= diff(x,t);
%D2x= diff(Dx,t);
%xeq= D2x+x == cos(t)
 
 
%xeq(t) =
 
%diff(x(t), t, t) + x(t) == cos(t)
 
%eqLT=laplace(xeq)
 
%eqLT =
 
%s^2*laplace(x(t), t, s) - s*x(0) - subs(diff(x(t), t), t, 0) + laplace(x(t), t, s) == s/(s^2 + 1)
 
 %syms Fs
%eqLT= subs( eqLT, laplace(x), Fs)
 
%eqLT =
 
%Fs*s^2 - x(0)*s + Fs - subs(diff(x(t), t), t, 0) == s/(s^2 + 1)
 
%X= solve( eqLT, Fs)
 
%X =
 
%(s*x(0) + s/(s^2 + 1) + subs(diff(x(t), t), t, 0))/(s^2 + 1)
 
%x_soln= ilaplace(X)
 
%x_soln =
 
%x(0)*cos(t) + (t*sin(t))/2 + sin(t)*subs(diff(x(t), t), t, 0)
 
%vars = [x(0), Dx(0)];
%vals = [0,1];
%xfin= subs( x_soln, vars, vals)
 
%xfin =
 
%sin(t) + (t*sin(t))/2
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
