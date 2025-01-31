function Spatial = MyIFFT2Par(Frequentiel)
    % Obtenez la taille de l'image fréquentielle
    [rows, cols, numChannels] = size(Frequentiel);

    % Initialiser le tableau de sortie
    Spatial = zeros(rows, cols, numChannels);

    % Calculer ifft2 pour chaque canal
    for k = 1:numChannels
        Spatial(:, :, k) = fftshift(Frequentiel(:, :, k));
    end
    % ifft2 takes the 2-D inverse transform of each dimension higher than 2
    Spatial = ifft2(Spatial) * sqrt((rows * cols));
end
