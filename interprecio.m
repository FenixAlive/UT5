clear
k = 49;
a = -1;
b = 1;
h = (b-a)/(k);

%función a integrar
f = @(x)(4-x.^2);
%f = @(x)(x.^3-11.*x.^2./6+x+11/6);
% linspace(a,b,k)
x = a+h*(0:k);
trap = (f(x(1))+sum(2*f(x(2:(end-1))))+f(x(end)))*(h/2);
trap
