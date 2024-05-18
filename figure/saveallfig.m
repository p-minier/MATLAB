function saveallfig(folder_path)
% SAVEALLFIG Saves all open figure windows as PDF files.
%
%   SAVEALLFIG() saves all open figure windows in the current working
%   directory under a subdirectory named 'figures_saved'. Each figure or 
%   subplot is saved as a separate PDF file.
%
%   SAVEALLFIG(folder_path) saves the figure windows in the specified 
%   folder path. If the specified folder does not exist, it is created.
%
%   Parameters:
%       folder_path (optional) - A string specifying the folder where 
%                                the figures will be saved. If not 
%                                provided, a default folder named 
%                                'figures_saved' in the current working 
%                                directory is used.
%
%   Example:
%       % Save all open figures in the default folder
%       saveallfig();
%
%       % Save all open figures in a specified folder
%       saveallfig('/path/to/my/figures/');
%
%   Note:
%       This function removes the subtitle and title from each subplot
%       before saving. Modify the function if you want to retain these
%       elements.
%
%   See also: FINDOBJ, EXPORTGRAPHICS, MKDIR
%
%   Autor: Pierre Minier (pierre.minier@ims-bordeaux.fr)

% check folder path 
if nargin < 1
    folder_path = pwd + "/" + "figures_saved/";
end
folder_path_char = char(folder_path);
if folder_path_char(end) ~= '/'
    folder_path = folder_path + "/";
end
[~, ~] = mkdir(folder_path);
figure_list = findobj("type", "figure");
for fig_id = 1:numel(figure_list)
    % -- get subplot of the current figure
    fig = figure_list(fig_id);
    handler_list = get(fig, "children");
    ploting_list = findobj(handler_list, "type", "axes");
    ploting_numel = numel(ploting_list);
    for plot_id = 1:ploting_numel
        ploting = ploting_list(plot_id);
        % -- remove unwanted element 
        delete(ploting.Subtitle) % for me I prefer writing titles
        delete(ploting.Title)    % directly in my LaTex documents
        % -- get a name for the file
        if ploting_numel > 1
            fname = "fig" + fig_id + "_" + plot_id + ".pdf";
        else
            fname = "fig" + fig_id + ".pdf";
        end
        fpath = folder_path + fname;
        % -- saving the (sub)figure in a file
        exportgraphics(ploting, fpath)
    end
end
end
