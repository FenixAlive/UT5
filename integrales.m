clear
format longG
%función a integrar
%f = @(x)(x.^3-11.*x.^2./6+x+11/6);
%f = @(x)(4-x.^2);
%f = @(x)(exp(-x.^2));
%f = @(x)(x.^2.*sin(x)-x.*cos(x)+25);
f = @(x)(x.^3-(11/6).*x.^2+x+11/6);
k = 55;
a = 0;
b = 11/10;
h = linspace(a,b,k);
dh = h(end)-h(end-1)
%integral interior, exterior e intermedio
s1 = integral(f, a, b, k);
%integral trapecio
s2 = interprecio(f, a, b, k);
%integral simpson 1/3
s3 = simpson3(f, a, b, k);
%integral simpson 8
s4 = simpson8(f, a, b, k);
%integral cuadratura Gaussiana
s5 = [];
for n = 2:5
    s5 = [s5 cuadraturaGaussiana(f, a, b, n)];
end