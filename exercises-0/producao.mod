var x1 integer >= 0;
var x2 integer >= 0;
var x3 integer >= 0;
var x4 integer >= 0;

minimize custo: x1 * 1 + x2 * 2 + x3 * 3 + x2 * 2;

subject to min_demanda_media: 8 * x1 + 4 * x2 + 3 * x3 + 0 * x4 >= 500;
subject to min_demanda_grande: 0 * x1 + 1 * x2 + 2 * x3 + 3 * x4 >= 350;
