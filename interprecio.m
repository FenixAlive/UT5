function st = interprecio(f, a, b, k)

h = (b-a)/(k);

x = a+h*(0:k);
trap = (f(x(1))+sum(2*f(x(2:(end-1))))+f(x(end)))*(h/2);

fprintf("\nIntegral Trapecio: \t%.15f\n", trap);
st = trap;
end
