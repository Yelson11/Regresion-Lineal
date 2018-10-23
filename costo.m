function J = costo(X, y, theta)
%Costo de la regresion lineal
%   J = COSTO(X, y, theta) 

% Inicializar par√°metros
m = length(y); % cantidad de examples

% el siguiente es el valor que se necesita retornar correctamente.
J = 0;
% ====================== SU C”DIGO ======================
sumatoria = 0;
for i = 1:m
  hipotesis = theta' * X(i,:)';
  sumatoria += (hipotesis - y(i))^2;
endfor
J = ((1/(2*m)) * sumatoria);
% ========================================================
end
