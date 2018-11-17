%Solo se debe modificar f, n, x y h
clear
n = 10; % 10^-n error
x = 3; %punto de calculo de derivada
h = 10.^(-(1:n));
% f = @(x)(1./(1+x.^2)); %función a derivar
f = @(x)(exp((log(x)-x.^3)./(3*x.^2-cos(5*x.^7))));
fp1 = @(x,h)((f(x+h)-f(x))./h); %primera formula para derivar la de toda la vida
fp2 = @(x,h)((f(x+h)-f(x-h))./(2.*h)); %segunda formula basada en la serie de taylor
%formula para la segunda derivada basada en taylor
d2f = @(x,h)((f(x+h)-2*f(x)+f(x-h))./(h.^2));
%resultados
r2f = [h' fp1(x,h)' fp2(x,h)' d2f(x,h)']



