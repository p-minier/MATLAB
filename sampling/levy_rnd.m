function samples = levy_rnd(P, c)
% LEVY_RND Génère un vecteur de lévy avec un paramètre de position nul.
%
%   samples = levy_rnd(P, mu, gamma) génère un vecteur gaussien tronqué de
%   longueur P, où chaque élément est une réalisation d'une variable
%   aléatoire de lévy avec un paramètre de position nul, indépendante et
%   identiquement distribuée (iid).
%
%   Paramètres :
%   - P : Nombre d'échantillons dans le vecteur.
%   - c : Paramètre d'échelle.
%
%   Sortie :
%   - samples : Vecteur de lévy de longueur P.
%
%   Méthode :
%   La génération est basée sur la fonction de répartition inverse.

    samples = c ./ (2*(erfcinv(rand(P, 1)).^2));
end
