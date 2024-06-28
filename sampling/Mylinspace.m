function line = Mylinspace(a, b, v, N)
% a: borne inférieure
% b: borne supérieure
% v: valeur devant être incluse
% N: nombre de points
    
    % pas global à respecter 
    step = (b-a)/N;

    % nombre de points à gauche/droite de la valeur cible
    Npts_gauche = floor((v-a)/(b-a)*N);
    Npts_droite = floor((b-v)/(b-a)*N);
    
    % nouvelles bornes au polus proche
    new_a = v - Npts_gauche * step;
    new_b = v + Npts_droite * step;

    % création de l'intervalle
    gauche = new_a:step:v-step;
    droite = v+step:step:new_b;
    line = [gauche, v, droite];
end