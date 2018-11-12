clear
k = 6;
a = -2;
b = 2;
h = (b-a)/(k);
x = linspace(a,b,k+1);
%función a integrar
%f = @(x)(4-x.^2);
%f = @(x)(x.^3-11.*x.^2./6+x+11/6);
f = @(x)(exp(-x.^2));
%calculo 1/3 simpson
%trap = (f(x(1))+sum(4*f(x(2:2:(end-1)))+2*f(x(3:2:end-2)))+f(x(end)))*(h/3);
%trap
s = f(x(1));
for i = 1:length(x)-3
    if mod(i,3) == 0
        s = s+2*f(x(i+1));
    else
        s = s+3*f(x(i+1));
    end
end
s = s + f(x(end));
s = s*3*h/8;
s

