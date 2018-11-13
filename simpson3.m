clear
k = 50;
a = 0;
b = 11/10;
h = (b-a)/(k);
x = linspace(a,b,k+1);
%función a integrar
f = @(x)(x.^3-11.*x.^2./6+x+11/6);
%f = @(x)(4-x.^2);
%calculo 1/3 simpson
sim = (f(x(1))+sum(4*f(x(2:2:(end-1))))+sum(2*f(x(3:2:end-1)))+f(x(end)))*(h/3);
sim
s = f(x(1));
for i = 2:length(x)-1
    if mod(i,2) == 0
        s = s+4*f(x(i));
    else
        s = s+2*f(x(i));
    end
end
s = s + f(x(end));
s = s*h/3;
s

