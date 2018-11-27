clear
%f = @(t,y)(y);
%f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2));
%f = @(x,y)((9*x.^2-2).*cos(3*x.^3-2*x));
f = @(t,y)(t.*(y-t.^2.*sin(t)+t.*cos(t)+pi)+3.*t.*sin(t)+t.^2.*cos(t)-cos(t));
%f = @(t,y)(2-.3*t.^2*exp(t)-.6*t*exp(t));
%f = @(t,y)(2*(2-t)*y);
%fexac = @(x)(exp(-x.^2+4*x));
%fexac = @(t)(exp(t.^2./2).*(-exp(-t.^2/2).*(t.*(cos(t)-t.*sin(t))+pi)));
fexac = @(x)(sin(3.*x.^3-2*x));
a = 0; %limite inferior
b = 5; %limite superior
h = 10^-2; %Separacion
t0 = 0;
y0 = -pi;
%Euler
figure(1);
se = euler(f, fexac, a, b, h, t0, y0);
%Euler Modificado
figure(2);
sem = eulerMod(f,fexac,a,b,h,t0,y0);
%Kutta
figure(3);
sku = kutta(f,fexac,a,b,h,t0,y0);
ite = 14
[se(2,ite) sem(2,ite) sku(2,ite)]