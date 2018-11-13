clear
%f = @(t,y)(exp(t));
f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2));
a = 0; %limite inferior
b = 3; %limite superior
h = .1; %Separacion
t0 = 0;
y0 = 1;
hl = a:h:b; %espacio lineal
yv = y0;
yn = [];
for n = 1:length(hl)
    tn = t0+hl(n);
    k1 = h * f(tn,yv);
    k2 = h * f(tn + h, yv + k1);
    yv = yv + (1/2) * (k1 + k2);
    yn = [yn yv];
end
plot(hl, yn, 'b:')
