var x1 integer >= 0;
var x2 integer >= 0;

maximize lucro: 2 * x1 + 3 * x2;

subject to max_processo_1: 10 * x1 + 5 * x2 <= 300;
subject to max_processo_2: 6 * x1 + 20 * x2 <= 300;