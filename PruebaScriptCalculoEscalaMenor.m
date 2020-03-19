%Prueba calculo de escalas


%Escala menor

tonica = 32.7032;

octava1 = [
tonica;    
tonica*(2^(2/12));
tonica*(2^(3/12));
tonica*(2^(5/12));
tonica*(2^(7/12));
tonica*(2^(8/12));
tonica*(2^(10/12));
];

escala1 = [
octava1;
2*octava1;
4*octava1;
8*octava1;
16*octava1;
];