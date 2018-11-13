clear
%f = @(t,y)(exp(t));
f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2));
a = 0; %limite inferior
b = 5; %limite superior
h = .1; %Separacion
t0 = 0;
y0 = 1;
hl = a:h:b; %espacio lineal
yv = y0;
yn = [];
for n = 1:length(hl)
    tn = t0+hl(n);
    k1 = h * f(tn,yv);
    k2 = h * f(tn + h/2, yv + k1/2);
    k3 = h * f(tn + h/2, yv + k2/2);
    k4 = h * f(tn + h, yv + k3);
    yv = yv + (1/6) * (k1 + 2*k2 +2*k3 + k4);
    yn = [yn yv];
end
plot(hl, yn, 'b:')
