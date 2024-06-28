function freq = fftfreq(N)
% Axe de fréquence normalisé contenant la fréquence nulle
    if mod(N, 2) == 0
        freq = [0:N/2-1, -N/2:-1] / N;
    else
        freq = [0:(N-1)/2, -(N-1)/2:-1] / N;
    end
end
