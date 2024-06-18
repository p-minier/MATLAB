function samples = betaprime_rnd(P, alpha, beta)
% BETAPRIME_RND Génère un vecteur de variables aléatoires de la loi bêta-prime.
%
%   samples = betaprime_rnd(P, alpha, beta) génère un vecteur de longueur P
%   contenant des réalisations de variables aléatoires indépendantes et
%   identiquement distribuées (iid) suivant la loi bêta-prime.
%
%   Paramètres :
%   - P : Nombre d'échantillons dans le vecteur.
%   - alpha : Paramètre de forme de la distribution bêta.
%   - beta : Paramètre de forme de la distribution bêta.
%
%   Sortie :
%   - samples : Vecteur de longueur P contenant les échantillons de la loi bêta-prime.
%
%   Méthode :
%   Les échantillons sont générés en utilisant des échantillons de la loi bêta à l'aide de
%   la fonction betarnd, puis en les transformant selon la formule : Y = X / (1 - X)
%
    beta_samples = betarnd(alpha, beta, 1, P);
    samples = beta_samples./(1-beta_samples);
end
