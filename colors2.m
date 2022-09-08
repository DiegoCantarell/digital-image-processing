
%SE ESTABLECE EL CANVAS A TRABAJAR CON SUS DIMENSIONES Y CANALES
canvas = ones(256,256,3) * 768;   
canvas = uint8(canvas);               
%PINTAMOS CUADRADO ROJO
canvas(1:256, 1:256, [2 3]) = 0;
canvas(1:256, 1:256, 1) = 255;       
%PINTAMOS CUADRADO VERDE
canvas(1:512, 256:512, [1 3]) = 0;  
canvas(1:256, 256:512, 2) = 255;    
%PINTAMOS CUADRADO AZUL
canvas(1:768, 512:768, [1 2]) = 0;
canvas(1:256, 512:768, 3) = 255;
%EN BASE A CORDENADAS, SE LIMPIA EL CANVAS
canvas(256:768, 1:768, [1 2 3]) = 255;
%SE MUESTRA EL CANVAS
imshow(canvas);