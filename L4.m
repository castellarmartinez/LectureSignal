clc, clear
addpath(genpath('L4'))

%Importación de los audios y los precintos
[acordeon, fs] = audioread('input_acordeon.wav');
[rector, fs] = audioread('input_mensaje_rector.wav');
[piano, fs] = audioread('input_piano.wav');
[rock, fs] = audioread('input_rock.wav');
[soprano, fs] = audioread('input_soprano.wav');
[estudio, fs] = audioread('CIER_estudio_grabacion.wav');
[che, fs] = audioread('UN_Plaza_che.wav');
[catedral, fs] = audioread('York_catedral.wav');
[impulso, fs] = audioread('Precinto.wav');

%******************************%
%           PUNTO 1            %
%******************************%

%********Se convinan los canales dereche e izquierdo*******%
acordeon = acordeon(:, 1) + acordeon(:, 2);
rector = rector(:, 1) + rector(:, 2);
piano = piano(:, 1) + piano(:, 2);
rock = rock(:, 1) + rock(:, 2);
estudio = estudio(:, 1) + estudio(:, 2);
catedral = catedral(:, 1) + catedral(:, 2);
impulso = impulso(:, 1) + impulso(:, 2);

%********Se reproducen los audios en cada precinto*******%

%**Acordeon**%
acordeonEstudio = conv(acordeon, estudio);
acordeonLaChe = conv(acordeon, che);
acordeonCatedral = conv(acordeon, catedral);
acordeonRespuestaImpulso = conv(acordeon, impulso);

sound(acordeonEstudio, fs)
sound(acordeonLaChe, fs)
sound(acordeonCatedral, fs)
sound(acordeonRespuestaImpulso, fs)

%**Rector**%
rectorEstudio = conv(rector, estudio);
rectorLaChe = conv(rector, che);
rectorCatedral = conv(rector, catedral);
rectorRespuestaImpulso = conv(rector, impulso);

%**Piano**%
pianoEstudio = conv(piano, estudio);
pianoLaChe = conv(piano, che);
pianoCatedral = conv(piano, catedral);
pianoRespuestaImpulso = conv(piano, impulso);

%**Rock**%
rockEstudio = conv(rock, estudio);
rockLaChe = conv(rock, che);
rockCatedral = conv(rock, catedral);
rockRespuestaImpulso = conv(rock, impulso);

%**Soprano**%
sopranoEstudio = conv(soprano, estudio);
sopranoLaChe = conv(soprano, che);
sopranoCatedral = conv(soprano, catedral);
sopranoRespuestaImpulso = conv(soprano, impulso);


%{
    David Castellar Martínez
    3 de junio del 2021
%}