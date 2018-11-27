%f = @(x)(2*x-(3/10)*exp(x)+87/10);
%f = @(x)(x.^2.*sin(x)-x.*cos(x)+25);
f = @(x)(x.^3-(11/6).*x.^2+x+11/6);
fprima = @(x)(3.*x.^2-(11.*x)/3+1);
pc = 29/10;
h = 1
r = []
for i =1:10
    h = h*10^-1;
    x = [pc-h pc pc+h];
    y = f(x);
    res = (-y(3)+4*y(2)-3*y(1))/(2*h);
    r = [r; h res abs(res-fprima(pc))];
end
r
