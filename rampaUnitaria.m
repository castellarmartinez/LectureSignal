function [salida] = rampaUnitaria(entrada)
    %RAMPAUNITARIA Implementación de la función rampa unitaria
    %   Llamada: rampaUnitaria(entrada)
    %   Salida: entrada (si entrada >= 0)
    salida = entrada .* (entrada >= 0);
end