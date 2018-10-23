function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE normaliza las características



X_norm = X;
numColumns = size(X, 2);
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== SU CÓDIGO ======================
% Instrucciones: para cada dimensión calcular la media
%                de la característica y restarle eso al dataset,
%               guarde la media en mu. Luego calcule la desviación estándar y
%		divida eso entre todas las características, guarde esa desviación en sigma. 
%
mu = mean(X);
sigma = std(X);
for i = 1:numColumns
    X_norm(:,i) = (X(:, i) - mu(i)) / sigma(i);
end;
%
% Nota: octave tiene la funciones mean y std que le pueden ser útiles
%       









% ============================================================

end
