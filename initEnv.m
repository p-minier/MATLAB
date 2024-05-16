function initEnv()
% INITENV initialise l'environnement de travail.
%
%   Syntaxe :
%       initEnv
%
%   Description :
%       INITENV recherche les dossiers dans la racine de l'utilisateur (userpath) et 
%       ajoute ces dossiers au chemin de recherche de MATLAB à l'aide de la fonction 
%       addpath. Cela permet d'accéder facilement aux routines génériques nécessaires 
%       pour le travail quotidien.
%
%   Voir aussi :
%       addpath, userpath
%
%   Auteur :
%       Pierre Minier (pierre.minier@ims-bordeaux.fr)
%
    files = dir(userpath);
    dirTest = [files.isdir];
    folders = files(dirTest);
    names = {folders(3:end).name};
    paths = strcat(userpath+"/", names);
    addpath(paths{:})
end
