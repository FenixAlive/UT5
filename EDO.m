clear
%f = @(x,t)(exp(t));
%f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2));
f = @(x,y)((9*x.^2-2).*cos(3*x.^3-2*x));
fexac = @(x)(sin(3.*x.^3-2*x));
a = 0; %limite inferior
b = 7; %limite superior
h = 10^-2; %Separacion
t0 = 0;
y0 = 0;
%Euler
figure(1);
se = euler(f, fexac, a, b, h, t0, y0);
%Euler Modificado
figure(2);
sem = eulerMod(f,fexac,a,b,h,t0,y0);
%Kutta
figure(3);
sku = kutta(f,fexac,a,b,h,t0,y0);