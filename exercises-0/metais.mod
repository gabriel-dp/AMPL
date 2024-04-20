var xA >= 0;
var xB >= 0;

maximize receita: 5000 * xA + 3000 * xB;

subject to max_cobre: 0.5 * xB + 0.2 * xA <= 16;
subject to max_zinco: 0.25 * xB + 0.3 * xA <= 11;
subject to max_chumbo: 0.25 * xB + 0.5 * xA <= 15;
