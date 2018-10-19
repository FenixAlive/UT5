clear
k = 4;
a = -1;
b = 1;
h = (b-a)/(k);
x = a+h*(0:(k-1));

f = @(x)(4-x.^2);
integral = sum(f(x)*h)
