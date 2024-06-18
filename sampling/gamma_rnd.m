function samples = gamma_rnd(P, alpha, beta)
% GAMMA_RND Génère un vecteur gamma.
%
%   samples = mvn_trn(P, mu, gamma) génère un vecteur gamma de longueur P,
%   où chaque élément est la réalisation d'une variable aléatoire gamma 
%   indépendante et identiquement distribuée (iid).
%
%   Paramètres :
%   - P : Nombre d'échantillons dans le vecteur.
%   - alpha : Paramètre de forme.
%   - beta : Paramètre d'intensité.
%
%   Sortie :
%   - samples : Vecteur gaussien tronqué de longueur P.

    samples = gamrnd(alpha, 1/beta, P, 1);
end
