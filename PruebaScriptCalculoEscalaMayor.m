%Prueba calculo de escalas


%Escala mayor

tonica = 55;

octava1 = [
tonica;    
tonica*(2^(2/12));
tonica*(2^(4/12));
tonica*(2^(5/12));
tonica*(2^(7/12));
tonica*(2^(9/12));
tonica*(2^(11/12));
];

escala1 = [
octava1;
2*octava1;
4*octava1;
8*octava1;
16*octava1;
];

