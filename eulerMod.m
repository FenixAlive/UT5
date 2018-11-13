clear
fr = @(t)(exp(t));
a = 0; %limite inferior
b = 5; %limite superior
h = .1; %Separacion
t0 = 0;
y0 = 1;
f = @(t,y)(y);
hl = a:h:b; %espacio lineal
k1 = h * f(t0,y0);
k2 = h * f(t0 + h, y0 + k1);
yv = y0 + (1/2) * (k1 + k2);
yn = yv;
for n = 2:length(hl)
    tn = t0+hl(n);
    k1 = h * f(tn,yv);
    k2 = h * f(tn + h, yv + k1);
    yv = yv + (1/2) * (k1 + k2);
    yn = [yn yv];
end
plot(hl, yn, 'b:', hl, fr(hl), 'g')
