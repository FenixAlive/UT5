clear
%fr = @(t)(exp(t));
f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2))
a = 0; %limite inferior
b = 3; %limite superior
h = .1; %Separacion
t0 = 0;
y0 = 1;
%f = @(t,y)(y);
hl = a:h:b; %espacio lineal
%yn = y(t0+1*hl(1)) + hl(1)*f(t0+1*hl(1));
yv = y0 + h * f(t0,y0);
yn = yv;
for n = 2:length(hl)
    tn = t0+hl(n);
    yv = yv + h * f(tn,yv);
    yn = [yn yv];
end
plot(hl, yn, 'b:')
