function sm = eulerMod(f, fexac, a, b, h, t0, y0)
% eulerMod es una función que resuelve ecuaciones diferenciales ordinarias
% mediante el metodo de Euler Modificado
% parametros: f, fexac, a, b, h, t0, y0
% f: Funcion a resolver
% fexac: función real en caso de tenerla para las graficas y error
% a: punto inferior
% b: punto superior
% h: separación de muestra a calcular
% t0: punto inicial creo que es el mismo que a
% y0: resultado de la función evaluada en t0
tn = a:h:b; %espacio lineal
yv = y0;
yn = [];
for n = 1:length(tn)
    k1 = h * f(tn(n),yv);
    k2 = h * f(tn(n) + h, yv + k1);
    yv = yv + (1/2) * (k1 + k2);
    yn = [yn yv];
end
error = abs(yn-fexac(tn));
real = fexac(tn);

subplot(141);
plot(tn, yn, 'b');
title("Euler Modificado");

subplot(142);
plot(tn, real, 'g:');
title("Función Real");

subplot(143);
plot(tn, yn, 'b', tn, fexac(tn), 'g:');
title("Comparación");

subplot(144);
plot(tn, error, 'r');
title("Error");


sm = [tn; yn; real; error];
end
