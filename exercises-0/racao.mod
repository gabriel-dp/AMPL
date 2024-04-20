var xAMS integer >= 0;
var xRE integer >= 0;

maximize lucro: xAMS * 11 + xRE * 12;

subject to max_carne: xAMS * 1 + xRE * 4 <= 10000;
subject to max_cereal: xAMS * 5 + xRE * 2  <= 30000;
