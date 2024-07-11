set PETROLEO;
set GASOLINA;

param custo {PETROLEO} >= 0;
param max_barris {PETROLEO} >= 0;
param preco {GASOLINA} >= 0;
param max_espec {GASOLINA, PETROLEO} >= 0;
param min_espec {GASOLINA, PETROLEO} >= 0;

var x {p in PETROLEO, g in GASOLINA} >= 0;

maximize lucro: 
    (sum {p in PETROLEO, g in GASOLINA} (x[p, g] * preco[g])) - 
    (sum {p in PETROLEO} (sum {g in GASOLINA} x[p, g]) * custo[p]);

subject to petroleo_max_barris {p in PETROLEO}: 
    sum {g in GASOLINA} x[p, g] <= max_barris[p];

subject to petroleo_gasolina_max_espec {p in PETROLEO, g in GASOLINA}: 
    x[p, g] <= max_espec[g, p] * (sum {pp in PETROLEO} x[pp, g]);

subject to petroleo_gasolina_min_espec {p in PETROLEO, g in GASOLINA}: 
    x[p, g] >= min_espec[g, p] * (sum {pp in PETROLEO} x[pp, g]);