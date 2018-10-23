function J = costoMulti(X, y, theta)
%Costo con m�ltiples variables

% inicializar valores
m = length(y); 

% variable a retornar
J = 0;

% ============================ SU C�DIGO =================================
cost = 0;
for i = 1:m
    cost += (theta' * X(i,:)' - y(i))^2;
end;

% You need to return the following variables correctly
J = cost / (2 * m);
% =========================================================================
end
