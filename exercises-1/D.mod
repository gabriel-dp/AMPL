var x1 integer >= 0;
var x2 integer >= 0;
var x3 integer >= 0;

maximize receita: 330 * x1 + 300 * x2 + 420 * x3;

subject to saldo: 5.1 * x1 + 3.6 * x2 + 6.8 * x3 <= 220;
subject to capacidade: 1 * x1 + (3/4) * x2 + (5/3) * x3 <= 40;
subject to max_pilotos_1: x1 <= (30 + 10) / 2;
subject to max_pilotos_2: x2 <= (20 + 10) / 2;
subject to max_pilotos_3: x3 <= (10 + 0) / 2;