function [] = new()
% NEW Crée un nouveau fichier MATLAB avec un en-tête prédéfini.
%
%   Syntaxe :
%       new
%
%   Description :
%       NEW crée un nouveau fichier MATLAB avec un en-tête prédéfini. L'en-tête
%       inclut des commentaires structurés contenant des instructions d'initialisation
%       courantes et des paramètres de simulation. Cette fonction facilite la création
%       de nouveaux scripts en fournissant une structure de base cohérente.
%
%   Voir aussi :
%       matlab.desktop.editor.newDocument, initEnv
%
%   Auteur :
%       Pierre Minier (pierre.minier@ims-bordeaux.fr)
%
script = [
    "%% Initialisation"
    "clear, clc, close all"
    "initEnv" + newline
    "%% Paramètres de la simulation"+ newline
    ];
matlab.desktop.editor.newDocument(strjoin(script, newline));
end
