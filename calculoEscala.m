function escala = calculoEscala(key,tonalidad)

switch key

    case "C" 
        frecuencia = 32.7032;
    case "C#" 
        frecuencia = 34.6479;
    case "Db" 
        frecuencia = 34.6479;
    case "D" 
        frecuencia = 36.7081;
    case "D#" 
        frecuencia = 38.8909;
    case "Eb" 
        frecuencia = 38.8909;
    case "E" 
        frecuencia = 41.2035;
    case "F" 
        frecuencia = 43.6536;
    case "F#" 
        frecuencia = 46.2493;
    case "Gb" 
        frecuencia = 46.2493;
    case "G" 
        frecuencia = 48.9995;
    case "G#" 
        frecuencia = 51.9130;
    case "Ab" 
        frecuencia = 51.9130;
    case "A" 
        frecuencia = 55;
    case "A#" 
        frecuencia = 58.2705;
    case "Bb" 
        frecuencia = 58.2705;
    case "B" 
        frecuencia = 61.7354; 
    otherwise
        frecuencia = 32.7032;
        
end

switch tonalidad
    
    case "M"
        
        octava = [
        frecuencia;    
        frecuencia*(2^(2/12));
        frecuencia*(2^(4/12));
        frecuencia*(2^(5/12));
        frecuencia*(2^(7/12));
        frecuencia*(2^(9/12));
        frecuencia*(2^(11/12));
        ];

        escala = [
        octava;
        2*octava;
        4*octava;
        8*octava;
        16*octava;
        ];
        
    case "m"
        
        octava = [
        frecuencia;    
        frecuencia*(2^(2/12));
        frecuencia*(2^(3/12));
        frecuencia*(2^(5/12));
        frecuencia*(2^(7/12));
        frecuencia*(2^(8/12));
        frecuencia*(2^(10/12));
        ];

        escala = [
        octava;
        2*octava;
        4*octava;
        8*octava;
        16*octava;
        ];
        
    otherwise 
        
        octava = [
        frecuencia;    
        frecuencia*(2^(2/12));
        frecuencia*(2^(4/12));
        frecuencia*(2^(5/12));
        frecuencia*(2^(7/12));
        frecuencia*(2^(9/12));
        frecuencia*(2^(11/12));
        ];

        escala = [
        octava;
        2*octava;
        4*octava;
        8*octava;
        16*octava;
        ];
        
end
        
end