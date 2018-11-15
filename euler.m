clear
%f = @(x,t)(exp(t));
%f = @(x,y)(y-(x.^3-x.^2+x).*exp(-x.^2));
f = @(x,y)((9*x.^2-2).*cos(3*x.^3-2*x));
fexac = @(x)(sin(3.*x.^3-2*x));
a = 0; %limite inferior
b = 7; %limite superior
h = 10^-2; %Separacion
t0 = 0;
y0 = 0;
h1 = a:h:b; %espacio lineal
yv = y0 + h * f(t0+a,y0);
yn = yv;
tf = t0;
for n = 2:length(h1)
    tn = t0+h1(n); %arreglar el tn, creo que no se usa t0, o creo que  es lo mismo que hl
    tf = [tf tn];
    yv = yv + h * f(tn,yv);
    yn = [yn yv];
end
figure(1);
plot(h1, yn, 'b', h1, fexac(h1), 'g');
figure(2);
plot(abs(yn-fexac(h1)))
figure(3);
plot(tf, fexac(tf), 'r:')
