f = @(x)(1./(1+x.^2));
fp1 = @(x,h)((f(x+h)-f(x))./h);
fp2 = @(x,h)((f(x+h)-f(x-h))./(2.*h));
n = 8;
x = 1
h = 10.^(-(1:n));
% matriz con resultados  
[h' fp1(x,h)' fp2(x,h)']

d2f = @(x,h)((f(x+h)-2.*f(x)+f(x-h))./(2.*h.^2));
[h' fp1(x,h)' fp2(x,h)' d2f(x,h)']



