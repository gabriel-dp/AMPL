var xA integer >= 0;
var xB integer >= 0;

maximize lucro: 20 * xA + 50 * xB;

subject to min_A_relativo: xA >= (xA + xB) * 0.8;
subject to max_A_absoluto: xA <= 100;
subject to max_material: 2 * xA + 4 * xB <= 240;