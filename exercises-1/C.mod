var x1 integer >= 0;
var x2 integer >= 0;

maximize lucro: 8 * x1 + 5 * x2;

subject to max_mercado_1: x1 <= 150;
subject to max_mercado_2: x2 <= 200;
subject to trabalho: 2 * x1 + 1 * x2 <= 400;