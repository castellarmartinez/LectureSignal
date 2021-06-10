clc, clear
addpath(genpath('L4'))

fs = 16000;
%Importación de los audios y los precintos
acordeon = audioread('input_acordeon.wav');
rector = audioread('input_mensaje_rector.wav');
piano = audioread('input_piano.wav');
rock = audioread('input_rock.wav');
soprano = audioread('input_soprano.wav');
estudio = audioread('CIER_estudio_grabacion.wav');
che = audioread('UN_Plaza_che.wav');
catedral = audioread('York_catedral.wav');
impulso = audioread('Precinto.wav');

%******************************%
%           PUNTO 1            %
%******************************%

%********Se reproducen los audios en cada precinto*******%

%**Acordeon**%
acordeonImpulso01 = conv(acordeon(:, 1), impulso(:, 1));
acordeonImpulso02 = conv(acordeon(:, 2), impulso(:, 2));
acordeonImpulso = [acordeonImpulso01, acordeonImpulso02];

sound(acordeonImpulso, fs)
pause(length(acordeonImpulso) / fs + 0.5)

%**Rector**%
rectorImpulso01 = conv(rector(:, 1), impulso(:, 1));
rectorImpulso02 = conv(rector(:, 2), impulso(:, 2));
rectorImpulso = [rectorImpulso01, rectorImpulso02];

sound(rectorImpulso, fs)
pause(length(rectorImpulso) / fs + 0.5)

%**Piano**%
pianoImpulso01 = conv(piano(:, 1), impulso(:, 1));
pianoImpulso02 = conv(piano(:, 2), impulso(:, 2));
pianoImpulso = [pianoImpulso01, pianoImpulso02];

sound(pianoImpulso, fs)
pause(length(pianoImpulso) / fs + 0.5)

%**Rock**%
rockImpulso01 = conv(rock(:, 1), impulso(:, 1));
rockImpulso02 = conv(rock(:, 2), impulso(:, 2));
rockImpulso = [rockImpulso01, rockImpulso02];

sound(rockImpulso, fs)
pause(length(rockImpulso) / fs + 0.5)

%**Soprano**%
sopranoImpulso01 = conv(soprano(:, 1), impulso(:, 1));
sopranoImpulso02 = conv(soprano(:, 1), impulso(:, 2));
sopranoImpulso = [sopranoImpulso01, sopranoImpulso02];

sound(sopranoImpulso, fs)
pause(length(sopranoImpulso) / fs + 0.5)

%******************************%
%           PUNTO 2            %
%******************************%

%**Acordeon**%
acordeonEstudio01 = conv(acordeon(:, 1), estudio(:, 1));
acordeonEstudio02 = conv(acordeon(:, 2), estudio(:, 2));
acordeonEstudio = [acordeonEstudio01, acordeonEstudio02];

acordeonLaChe01 = conv(acordeon(:, 1), che(:, 1));
acordeonLaChe02 = conv(acordeon(:, 2), che(:, 1));
acordeonLaChe = [acordeonLaChe01, acordeonLaChe02];

acordeonCatedral01 = conv(acordeon(:, 1), catedral(:, 1));
acordeonCatedral02 = conv(acordeon(:, 2), catedral(:, 2));
acordeonCatedral = [acordeonCatedral01, acordeonCatedral02];

sound(acordeonEstudio, fs)
pause(length(acordeonEstudio) / fs + 0.5)

sound(acordeonLaChe, fs)
pause(length(acordeonLaChe) / fs + 0.5)

sound(acordeonCatedral, fs)
pause(length(acordeonCatedral) / fs + 0.5)

%**Rector**%
rectorEstudio01 = conv(rector(:, 1), estudio(:, 1));
rectorEstudio02 = conv(rector(:, 2), estudio(:, 2));
rectorEstudio = [rectorEstudio01, rectorEstudio02];

rectorLaChe01 = conv(rector(:, 1), che(:, 1));
rectorLaChe02 = conv(rector(:, 2), che(:, 1));
rectorLaChe = [rectorLaChe01, rectorLaChe02];

rectorCatedral01 = conv(rector(:, 1), catedral(:, 1));
rectorCatedral02 = conv(rector(:, 2), catedral(:, 2));
rectorCatedral = [rectorCatedral01, rectorCatedral02];

sound(rectorEstudio, fs)
pause(length(rectorEstudio) / fs + 0.5)

sound(rectorLaChe, fs)
pause(length(rectorLaChe) / fs + 0.5)

sound(rectorCatedral, fs)
pause(length(rectorCatedral) / fs + 0.5)

%**Piano**%
pianoEstudio01 = conv(piano(:, 1), estudio(:, 1));
pianoEstudio02 = conv(piano(:, 2), estudio(:, 2));
pianoEstudio = [pianoEstudio01, pianoEstudio02];

pianoLaChe01 = conv(piano(:, 1), che(:, 1));
pianoLaChe02 = conv(piano(:, 2), che(:, 1));
pianoLaChe = [pianoLaChe01, pianoLaChe02];

pianoCatedral01 = conv(piano(:, 1), catedral(:, 1));
pianoCatedral02 = conv(piano(:, 2), catedral(:, 2));
pianoCatedral = [pianoCatedral01, pianoCatedral02];

sound(pianoEstudio, fs)
pause(length(pianoEstudio) / fs + 0.5)

sound(pianoLaChe, fs)
pause(length(pianoLaChe) / fs + 0.5)

sound(pianoCatedral, fs)
pause(length(pianoCatedral) / fs + 0.5)

%**Rock**%
rockEstudio01 = conv(rock(:, 1), estudio(:, 1));
rockEstudio02 = conv(rock(:, 1), estudio(:, 2));
rockEstudio = [rockEstudio01, rockEstudio02];

rockLaChe01 = conv(rock(:, 1), che(:, 1));
rockLaChe02 = conv(rock(:, 2), che(:, 1));
rockLaChe = [rockLaChe01, rockLaChe02];

rockCatedral01 = conv(rock(:, 1), catedral(:, 1));
rockCatedral02 = conv(rock(:, 2), catedral(:, 2));
rockCatedral = [rockCatedral01, rockCatedral02];

sound(rockEstudio, fs)
pause(length(rockEstudio) / fs + 0.5)

sound(rockLaChe, fs)
pause(length(rockLaChe) / fs + 0.5)

sound(rockCatedral, fs)
pause(length(rockCatedral) / fs + 0.5)

%**Soprano**%
sopranoEstudio01 = conv(soprano(:, 1), estudio(:, 1));
sopranoEstudio02 = conv(soprano(:, 1), estudio(:, 2));
sopranoEstudio = [sopranoEstudio01, sopranoEstudio02];

sopranoLaChe = conv(soprano(:, 1), che(:, 1));

sopranoCatedral01 = conv(soprano(:, 1), catedral(:, 1));
sopranoCatedral02 = conv(soprano(:, 1), catedral(:, 2));
sopranoCatedral = [sopranoCatedral01, sopranoCatedral02];

sound(sopranoEstudio, fs)
pause(length(sopranoEstudio) / fs + 0.5)

sound(sopranoLaChe, fs)
pause(length(sopranoLaChe) / fs + 0.5)

sound(sopranoCatedral, fs)
pause(length(sopranoCatedral) / fs + 0.5)

%{
    David Castellar Martínez
    9 de junio del 2021
%}