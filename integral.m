clear
format longG
k = 49;
a = 0;
b = 11/10;
h = (b-a)/(k);
%función a integrar
f = @(x)(x.^3-11.*x.^2./6+x+11/6);
%f = @(x)(4-x.^2);

% x para rectangulos interiores
    x1 = a+h*(0:(k-1));
    in1 = sum(f(x1)*h)
% x para rectangulos exteriores
    x2 = a+h*(1:k);
    in2 = sum(f(x2)*h)
% x para rectangulos intermedios
    x3 = a+h*(1:k)-h/2;
    in3 = sum(f(x3)*h)
    
