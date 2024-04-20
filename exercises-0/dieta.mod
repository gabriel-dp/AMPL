var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;
var x5 >= 0;
var x6 >= 0;

minimize custo: x1 * 35 + x2 * 30 + x3 * 60 + x4 * 50 + x5 * 27 + x6 * 22;

subject to min_vitamina_A: x1 * 1 + x2 * 0 + x3 * 2 + x4 * 2 + x5 * 1 + x6 * 2 >= 9;
subject to min_vitamina_C: x1 * 0 + x2 * 1 + x3 * 3 + x4 * 1 + x5 * 3 + x6 * 2 >= 19;
