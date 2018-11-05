clear
k = 5;
a = -1;
b = 1;
h = (b-a)/(k);

%hay tres formas de calcular la integral, elegir c = ?
%1-rectangulos interiores
%2-rectangulos exteriores
%3-rectangulos intermedios

c = 3
if c == 1
% x para rectangulos interiores
    x = a+h*(0:(k-1));
elseif c == 2
% x para rectangulos exteriores
    x = a+h*(1:k);
elseif c == 3
%x para rectangulos intermedios
    %xt = a+h*(1:k+1);
    %x = [];
    %for i = 1:k
    %    x(i) = (xt(i+1)-xt(i))/2;
    %end
    x = a+h*(1:k)+h/2;
end
    
%función a integrar
f = @(x)(4-x.^2);
%formula de integración
in = sum(f(x)*h)
