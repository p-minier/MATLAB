function [] = new(name)
% NEW Crée un nouveau fichier MATLAB avec un en-tête prédéfini ou ouvre un fichier existant.
%
%   Syntaxe :
%       new
%       new(name)
%
%   Description :
%       NEW crée un nouveau fichier MATLAB avec un en-tête prédéfini ou ouvre un fichier
%       existant s'il est spécifié. L'en-tête inclut des commentaires structurés contenant
%       des instructions d'initialisation courantes et des paramètres de simulation. Cette
%       fonction facilite la création de nouveaux scripts en fournissant une structure de
%       base cohérente. Si aucun nom de fichier n'est spécifié, un fichier untitled.m est
%       créé. Si un fichier avec le même nom existe déjà, un nombre est ajouté au nom pour
%       le différencier.
%
%   Entrées :
%       - name : Nom du fichier MATLAB à créer ou à ouvrir (chaîne de caractères).
%
%   Voir aussi :
%       matlab.desktop.editor.newDocument, initEnv
%
%   Auteur :
%       Pierre Minier (pierre.minier@ims-bordeaux.fr)
%

if nargin < 1
    name = "untitled";
    if isfile(name + ".m")
        id = 2;
        while isfile(name + num2str(id) + ".m")
            id = id + 1;
        end
        name = name + num2str(id);
    end
end

name_char = char(name);
if ~strcmp(name_char(end-2:end), ".m") 
    name = name + ".m";
end
fullpath = pwd + "/" + name;

if ~exist(fullpath, "file")
    % -- template de fichier
    script = [
        "%% Initialisation"
        "clear, clc, close all"
        "initEnv" + newline
        "%% Paramètres de la simulation"
        ];
    scriptContent = strjoin(script, newline);

    % -- création du fichier
    fileID = fopen(fullpath, 'w');
    fprintf(fileID, '%s\n', scriptContent);
    fclose(fileID);
end

% ouverture du fichier
matlab.desktop.editor.openDocument(fullpath);
end