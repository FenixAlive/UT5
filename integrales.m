clear
format longG
%función a integrar
f = @(x)(x.^3-11.*x.^2./6+x+11/6);
%f = @(x)(4-x.^2);
%f = @(x)(exp(-x.^2));
k = 49;
a = 0;
b = 11/10;

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