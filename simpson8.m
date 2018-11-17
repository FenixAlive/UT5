function ss8 = simpson8(f, a, b, k)

h = (b-a)/(k);
x = linspace(a,b,k+1);

%calculo 3/8 simpson
trap = (f(x(1))+3.*sum(f(x(2:3:(end-1))))+3.*sum(f(x(3:3:(end-1))))+2.*sum(f(x(4:3:end-1)))+f(x(end)))*(3*h)/8;
trap; % otra forma de sacar la solucion
s = f(x(1));
for i = 1:length(x)-2
    if mod(i,3) == 0
        s = s+2*f(x(i+1));
    else
        s = s+3*f(x(i+1));
    end
end
s = s + f(x(end));
s = s*3*h/8;
fprintf("\nIntegral simpson 8:\t %.15f\n", s);
ss8 = s;
end
