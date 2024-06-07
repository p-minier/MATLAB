function Spatial = MyIFFT2RF(Frequentiel, Taille)
% réponse fréquentielle carrée
    [N, M] = size(Frequentiel);
    assert(N == M);
% calcul de la transformée inverse
    inverse = ifft2(Frequentiel);
% demi-taille du noyau
    if nargin == 1
        half = find(abs(inverse(1, :)) < 10e-7, 1) - 1;
    else
        half = ceil(Taille/2);
    end
% extraction du noyau
    Spatial = abs(fftshift(inverse));
    Spatial = Spatial(N/2-half+2:N/2+half, N/2-half+2:N/2+half);
% normalisation
    Spatial = Spatial ./ sum(Spatial, "all");
end