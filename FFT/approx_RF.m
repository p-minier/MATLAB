function Approximate = approx_RF(True)
% réponse fréquentielle carrée
    [N, M] = size(True);
    assert(N == M);
% calcul de la transformée inverse
    inverse = ifft2(True);
% réponse impulsionnelle tronquée
    RI = abs(fftshift(inverse));
    RI_trn = RI(2:end, 2:end);
% nouvelle réponse fréquentielle
    Approximate = MyFFT2RI(RI_trn, N);