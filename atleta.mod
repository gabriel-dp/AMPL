var xT integer >= 0;
var xC integer >= 0;

maximize sessoes: xT + xC;

subject to max_tempo: 2 * xT + 2 * xC <= 18;
subject to max_calorias: 1500 * xT + 1000 * xC <= 80000; 
subject to max_dinheiro: 3 * xT + 2 * xC <= 70;
