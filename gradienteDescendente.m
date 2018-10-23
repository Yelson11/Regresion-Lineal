function [theta, J_history] = gradienteDescendente(X, y, theta, alpha, num_iters)


% inicialización de algunos valores importantes
m = length(y); % número de training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== SU CODIGO ======================
    % Instrucciones: Ejecute actualización de parámetros
    % Nota: Para debuggear podría ir imprimiendo el costo, con los parámetros encontrados en cada iteración
    sumatoria = 0;
    for j = 1:length(theta)
      for i = 1:m
        hipotesis = theta' * X(i,:)';
        sumatoria += (hipotesis - y(i)) * X(i,j);
      endfor      
      theta(j) = theta(j) - (alpha*(1/m)*sumatoria);
    endfor
    % ============================================================

    % Guardar el costo J de cada iteración
    % -esto no es necesario, pero lo usaremos para graficar más adelante-
    J_history(iter) = costo(X, y, theta);
end

end
