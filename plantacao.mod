var xT >= 0;
var xA >= 0;
var xM >= 0;

maximize lucro: (xT - 400) * 2.16 + (xA - 800) * 1.26 + (xM - 10000) * 0.812;

subject to max_area: xT + xA + xM <= 200000;
subject to max_armazenamento: xT * 0.2 + xA * 0.3 + xM * 0.4 <= 60000;

subject to min_demanda_T: xT >= 400;
subject to min_demanda_A: xA >= 800;
subject to min_demanda_M: xM >= 10000;
