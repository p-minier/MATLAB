function msg_len = update_bar(progress, elapsed, prev_len)
        barLength = 30;  % modifiable
        nb = round(progress * barLength);
        bar = ['[' repmat('#',1,nb) repmat('-',1,barLength-nb) ']'];

        remaining = elapsed*(1-progress)/max(progress,eps);

        msg = sprintf('%s %5.1f%% | %5.1fs écoulé | %5.1fs restant', ...
                      bar, progress*100, elapsed, remaining);

        % ---- efface l’affichage précédent ----
        fprintf(1, repmat('\b',1,prev_len));

        % ---- imprime la nouvelle ligne ----
        fprintf(1, '%s', msg);

        msg_len = length(msg);
end

