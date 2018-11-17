function ss3 = simpson3(f, a, b, k)
h = (b-a)/(k);
x = linspace(a,b,k+1);
%calculo 1/3 simpson
sim = (f(x(1))+sum(4*f(x(2:2:(end-1))))+sum(2*f(x(3:2:end-1)))+f(x(end)))*(h/3);
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
fprintf("\nIntegral Simpson 1/3:\t %.15f \n", s);
ss3 = s;
end

