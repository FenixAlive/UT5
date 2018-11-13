clear
%f = @(x)(x.^3-11.*x.^2./6+x+11/6);
f = @(x)(exp(-x.^2));
a = -2;
b = 2;
%cambiar n a necesidad de x y w
n = 4;
%el programa elige x y w de acuerdo a n
if n == 2
    t = [sqrt(3)/3 -sqrt(3)/3]
    w = [1 1];
elseif n == 3
   tx = [0 sqrt(15)/5 -sqrt(15)/5];
    w = [8/9 5/9 5/9];
elseif n == 4
    t = (1/35)*sqrt(525 - 70*sqrt(30));
    t3 = (1/35)*sqrt(525 + 70*sqrt(30));
    t = [t -t t3 -t3];
    w = (1/36)*(18+sqrt(30));
    w3 = (1/36)*(18-sqrt(30));
    w = [w w w3 w3];
elseif n == 5
    t = (1/21)*sqrt(245-14*sqrt(70));
    t4 = (1/21)*sqrt(245+14*sqrt(70));
    t = [0 t -t t4 -t4];
    w = (1/900)*(322+13*sqrt(70));
    w4 = (1/900)*(322-13*sqrt(70));
    w = [128/225 w w w4 w4];
end
%formula
    ss = sum(w.*(f(((b-a)/2).*t+(b+a)/2)))*(b-a)/2
s = 0;
for k = 1:n
    s = s+w(k)*f(((b-a)/2)*t(k)+(b+a)/2);
end
s = ((b-a)/2)*s

            
