function s = integral(f, a, b, k)
    h = (b-a)/(k);
% x para rectangulos interiores
    x1 = a+h*(0:(k-1));
    in1 = sum(f(x1)*h);
% x para rectangulos exteriores
    x2 = a+h*(1:k);
    in2 = sum(f(x2)*h);
% x para rectangulos intermedios
    x3 = a+h*(1:k)-h/2;
    in3 = sum(f(x3)*h);
    
    fprintf("\nIntegral interior: \t%.15f", in1);
    fprintf("\nIntegral exterior: \t%.15f", in2);
    fprintf("\nIntegral intermedios: \t%.15f\n", in3);
    s = [in1;in2;in3];
end
    
