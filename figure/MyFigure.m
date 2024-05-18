function fig = MyFigure(nl, nc, varargin)
    nb_fig = length(findobj("Type", "figure"));
    screen_size = get(0, "ScreenSize");
    width  = screen_size(3);
    height = screen_size(4);
    w0 = mod(floor(width/10 * (nb_fig+1)), floor(7/10*width));
    h0  = mod(floor(height/10 * (nb_fig+1)), floor(7/10*height));
    fig = figure("Position", [w0, h0, 510*nc, 420*nl], varargin{:});
end
