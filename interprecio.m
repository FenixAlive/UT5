clear
k = 50;
a = -1;
b = 1;
h = (b-a)/(k);

%función a integrar
f = @(x)(4-x.^2);

x = a+h*(0:k);
trap = sum(f(x(1))+2*f(x(2:(end-1)))+f(x(end)))*(h/2)
    
