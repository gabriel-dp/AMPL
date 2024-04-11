var xM1 integer >= 0;
var xM2 integer >= 0;
var xM3 integer >= 0;

var xA1 integer >= 0;
var xA2 integer >= 0;
var xA3 integer >= 0;

var xF1 integer >= 0;
var xF2 integer >= 0;
var xF3 integer >= 0;

maximize lucro: 5000 * (xM1 + xM2 + xM3) + 4000 * (xA1 + xA2 + xA3) + 1800 * (xF1 + xF2 + xF3);

subject to max_agua_1: 5.5 * xM1 + 4 * xA1 + 3.5 * xF1 <= 1800;
subject to max_agua_2: 5.5 * xM2 + 4 * xA2 + 3.5 * xF2 <= 2200;
subject to max_agua_3: 5.5 * xM3 + 4 * xA3 + 3.5 * xF3 <= 950;

subject to max_area_fazenda_1: xM1 + xA1 + xF1 <= 400;
subject to max_area_fazenda_2: xM2 + xA2 + xF2 <= 650;
subject to max_area_fazenda_3: xM3 + xA3 + xF3 <= 350;

subject to max_area_cultura_M: xM1 + xM2 + xM3 <= 660;
subject to max_area_cultura_A: xA1 + xA2 + xA3 <= 880;
subject to max_area_cultura_F: xF1 + xF2 + xF3 <= 400;

subject to proporcao_1_2: (xM1 + xA1 + xF1) / 400 == (xM2 + xA2 + xF2) / 650
subject to proporcao_1_3: (xM1 + xA1 + xF1) / 400 == (xM3 + xA3 + xF3) / 350
