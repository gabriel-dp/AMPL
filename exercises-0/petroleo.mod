set PETROLEO := {1, 2, 3 , 4};
set GASOLINA := {"SA", "AZ", "AM"};

var x {p in PETROLEO, g in GASOLINA} >= 0;

maximize lucro: (sum {p in PETROLEO} x[p, "SA"]) * 35 +
                (sum {p in PETROLEO} x[p, "SA"]) * 28 +
                (sum {p in PETROLEO} x[p, "SA"]) * 22 -
                (sum {g in GASOLINA} x[1, g]) * 19 -
                (sum {g in GASOLINA} x[2, g]) * 24 -
                (sum {g in GASOLINA} x[3, g]) * 20 -
                (sum {g in GASOLINA} x[4, g]) * 27;

subject to max_barris_1: sum {g in GASOLINA} x[1, g] <= 3500;
subject to max_barris_2: sum {g in GASOLINA} x[2, g] <= 2200;
subject to max_barris_3: sum {g in GASOLINA} x[3, g] <= 4200;
subject to max_barris_4: sum {g in GASOLINA} x[4, g] <= 1800;

subject to max_espec_1_SA: x[1, "SA"] <= 0.3 * (sum {p in PETROLEO} x[p, "SA"]);
subject to min_espec_2_SA: x[2, "SA"] >= 0.4 * (sum {p in PETROLEO} x[p, "SA"]);
subject to max_espec_3_SA: x[3, "SA"] <= 0.5 * (sum {p in PETROLEO} x[p, "SA"]);

subject to max_espec_1_AZ: x[1, "AZ"] <= 0.3 * (sum {p in PETROLEO} x[p, "AZ"]);
subject to min_espec_2_AZ: x[2, "AZ"] >= 0.1 * (sum {p in PETROLEO} x[p, "AZ"]);

subject to max_espec_1_AM: x[1, "AM"] <= 0.7 * (sum {p in PETROLEO} x[p, "AM"]);