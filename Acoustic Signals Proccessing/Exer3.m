%% question 1
x=wavread('speech_utterance.wav');
%energy
e= energy_find (x,20);
figure;
plot (e);
e= energy_find (x,40);
figure;
plot (e);
e= energy_find (x,60);
figure;
plot (e);

%zero crossing rate
za= zcr (x,20);
figure;
plot (za);
za= zcr (x,40);
figure;
plot (za);
za= zcr (x,120);
figure;
plot (za);

%% question 2 

x=wavread('music.wav');
%energy
e= energy_find (x,20);
figure;
plot (e);
e= energy_find (x,40);
figure;
plot (e);
e= energy_find (x,60);
figure;
plot (e);

%zero crossing rate
za= zcr (x,20);
figure;
plot (za);
za= zcr (x,40);
figure;
plot (za);
za= zcr (x,120);
figure;
plot (za);
