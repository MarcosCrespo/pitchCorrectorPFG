% Proyecto fin de grado Marcos Crespo Garcia
% Corrector de tono para voz en tiempo real sobre RaspberryPi


classdef main < matlab.System
 
    % Public, non-tunable properties
    properties(Nontunable)
      Fs = 16000;       % Frec. de muestreo (Hz)
    end
    
    % Public, tunable properties
    properties
      key = "C";
      tonalidad = "M";
    end
    
    %Variables de estado
    properties(DiscreteState)
 
    end
 
    % Variables de estado OCULTAS, NO MODIFICABLES durante la ejecucion.
    properties(Access = private, Nontunable)
      N;              % Tamano del frame de muestras de audio (canales L y R)
      escala;
    end    
 
    % Pre-computed constants
    properties(Access = private)
 
    end
            
    methods(Access = protected)
        % Se ejecuta una sola vez, al inicio.
        function setupImpl(obj,inR,inL)
            % Se utiliza para inicializar variables de estado.
            % inR ==> variable para almacenar el frame de entrada del canal R
            % inL ==> variable para almacenar el frame de entrada del canal L
            % obj ==> distintas variables de estado
            
            obj.N = length(inR);        % Variable del tamano del frame
            obj.escala = calculoEscala(obj.key,obj.tonalidad);
        end
 
        %Lazo principal de ejecuci?n (frame a frame)
        function [outL, outR] = stepImpl(obj,inL,inR)
            % ouL ==> variable para almacenar el frame de salida del canal L
            % ouR ==> variable para almacenar el frame de salida del canal R
            % obj ==> distintas variables de estado

            
            outL=inL;   % Bypass canal L
            outR=inR;   % Bypass canal R
                        
        end
        
        %Inicializa o resetea las variables de estado
        function resetImpl(obj)
            
        end
    end   
end