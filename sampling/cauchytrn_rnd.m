function samples = cauchytrn_rnd(P, mu, gamma)
% CUACHYTRN_RND Génère un vecteur de cauchy tronqué.
%
%   samples = cauchytrn_rnd(P, mu, gamma) génère un vecteur de cauchy
%   tronqué de longueur P, où chaque élément est une réalisation d'une
%   variable aléatoire de cauchy tronquée, indépendante et identiquement
%   distribuée (iid).
%
%   Paramètres :
%   - P : Nombre d'échantillons dans le vecteur.
%   - mu : Paramètre de position de la distribution.
%   - gamma : Pamraètre d'échelle de la distribution.
%
%   Sortie :
%   - samples : Vecteur gaussien tronqué de longueur P.
%
%   Méthode :
%   La génération est basée sur la fonction de répartition inverse.

    Kt = 1/2 + 1/pi * atan(mu/gamma);
    samples = mu + gamma*tan(pi*(Kt*(rand(P, 1) - 1) + 1/2));
end
