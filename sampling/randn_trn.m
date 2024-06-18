function samples = randn_trn(P, mu, gamma)
% MVN_TRN Génère un vecteur gaussien tronqué.
%
%   samples = mvn_trn(P, mu, gamma) génère un vecteur gaussien tronqué de
%   dimension P, où chaque élément est une réalisation d'une variable
%   aléatoire gaussienne tronquée, indépendante et identiquement distribuée (iid).
%
%   Paramètres :
%   - P : Nombre d'échantillons dans la matrice.
%   - mu : Moyenne de la distribution gaussienne.
%   - gamma : Précision de la distribution gaussienne (inverse de la variance).
%
%   Sortie :
%   - samples : Vecteur gaussien tronqué de longueur P.
%
%   Méthode :
%   La génération est basée sur la fonction de répartition inverse.

    Kt = 1/2*(1+erf(sqrt(gamma/2)*mu));
    samples = mu + sqrt(2/gamma)*erfinv(1+2*Kt*(rand(P, 1)-1));
end
