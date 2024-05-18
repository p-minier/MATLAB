function xxplot(x_bot, x_top, y, lab_bot, lab_top, varargin)
    % plot
    plot(x_bot, y, varargin{:});
    
    % set axes
    ax(1) = gca;
    set(ax(1), "Position", [0.12 0.12 0.75 0.70])
    set(ax(1), "XColor", "k", "YColor", "k");
    ax(2) = axes("Position", get(ax(1), "Position"), ...
                 "XAxisLocation", "top", "Color", "none");
    line(x_top, y, "Parent", ax(2), "Color", "none");  % activate ax(2)
    set(ax, "box", "off")
    ax(2).YAxis.Visible = "off"; % remove extra y-axis
    
    %label the two x-axes
    set(get(ax(1), "xlabel"), "string", lab_bot)
    set(get(ax(2), "xlabel"), "string", lab_top)
end