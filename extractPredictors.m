function [X, unitNumber, timeCycles] = extractPredictors(data)
% extractPredictors Estrae predittori e colonne diagnostiche da C-MAPSS
%
% INPUT:
%   data - array numerico importato con readmatrix
%
% OUTPUT:
%   X           - matrice osservazioni x variabili predittive (settings + sensori)
%   unitNumber  - ID motore (diagnostica)
%   timeCycles  - ciclo operativo (diagnostica)

    % Colonna 1 = unit_number
    unitNumber = data(:,1);

    % Colonna 2 = time_in_cycles
    timeCycles = data(:,2);

    % Colonne 3-5 = operational settings
    % Colonne 6-31 = sensori
    X = data(:,3:end);

    % Controllo dimensioni
    [nObs, nVar] = size(X);
    fprintf('Matrice X: %d osservazioni (righe) × %d variabili (colonne)\n', nObs, nVar);
end