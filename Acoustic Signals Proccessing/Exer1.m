%% question 1 

for(i=1:10)
    d(:,i)= tone(i);
    %sound(d(:,i));
    %pause ;
end

%% question 2

D1=abs(fft(d(:,1))); % upologizw metro dft gia 1 kai 8
figure;
plot(D1);
xlabel ('k')
ylabel ('|D1[k]|')
D8=abs(fft(d(:,8)));
figure;
plot(D8);
xlabel ('k')
ylabel ('|D8[k]|')
% x axis se k (->w)
% diaxwrismos korufwn


%% question3 

d1= tone (1);
d2= tone (2);
d3= tone (3);
d4= tone (4);
d7= tone (7);
d0= tone (10);
sil = zeros (1,100);
s= [d0 sil d3 sil d1 sil d1 sil d2 sil d0 sil d7 sil d4]; % gia ola ta pshfia tou AM mou 
wavwrite (s,8192, '03112074_tone_sequence.wav');
%wavwrite -1<=A<=1 kanonikopoihsh me max(abs())

%% question 4 

N= 1000;
w_ham= hamming(N);
w_rec= ones(1,N);
% pollaplasiazw ena tono me ena para8yro kai pairnw fft
%for rect 
fft_rect1= fft(w_rec.*s(1:1000));
fft_rect2= fft(w_rec.*s(1101:2100));
fft_rect3= fft(w_rec.*s(2201:3200));
fft_rect4= fft(w_rec.*s(3301:4300));
fft_rect5= fft(w_rec.*s(4401:5400));
fft_rect6= fft(w_rec.*s(5501:6500));
fft_rect7= fft(w_rec.*s(6601:7600));
fft_rect8= fft(w_rec.*s(7701:8700));
%for hamming
fft_ham1= fft(w_ham'.*s(1:1000));
fft_ham2= fft(w_ham'.*s(1101:2100));
fft_ham3= fft(w_ham'.*s(2201:3200));
fft_ham4= fft(w_ham'.*s(3301:4300));
fft_ham5= fft(w_ham'.*s(4401:5400));
fft_ham6= fft(w_ham'.*s(5501:6500));
fft_ham7= fft(w_ham'.*s(6601:7600));
fft_ham8= fft(w_ham'.*s(7701:8700));


%% question 5 
% entopismos korufwn me hamming logw kaluterhs poiothtas apotelsmatwn
% psaxnw gia platos>205
% opws auto fainetai an dei kaneis ta diagrammata twn fft_ham_i
% ka8e tonou pou vriskete mesa ston pinaka s = 03112083
p1= find(abs(fft_ham1)>205);
p2= find(abs(fft_ham2)>205);
p3= find(abs(fft_ham3)>205);
p4= find(abs(fft_ham4)>205);
p5= find(abs(fft_ham5)>205);
p6= find(abs(fft_ham6)>205);
p7= find(abs(fft_ham7)>205);
p8= find(abs(fft_ham8)>205);


% parathrw apo tis idanikes times gia to k oti kamia den upervainei to 200
% sumfwna me thn sxesh k=1000*w/2pi ara o pinakas x 8a periexei ta 2
% eggutera k stis touch one suxnothtes gia ka8ena apo tous tonous 03112083.
% o pinakas x 8a einai mia lista opou ana 2 times 8a einai ta zhtoumena k
% gia ka8e tono pou me endiaferei.
t=1;
for i= 1:4
    if p1(i) < 200 
        x(t)=p1(i);
        t=t+1;
    end
end

for i= 1:4
    if p2(i) < 200 
        x(t)=p2(i);
        t=t+1;
    end
end

for i= 1:4
    if p3(i) < 200 
        x(t)=p3(i);
        t=t+1;
    end
end

for i= 1:4
    if p4(i) < 200 
        x(t)=p4(i);
        t=t+1;
    end
end

for i= 1:4
    if p5(i) < 200 
        x(t)=p5(i);
        t=t+1;
    end
end

for i= 1:4
    if p6(i) < 200 
        x(t)=p6(i);
        t=t+1;
    end
end

for i= 1:4
    if p7(i) < 200 
        x(t)=p7(i);
        t=t+1;
    end
end

for i= 1:4
    if p8(i) < 200 
        x(t)=p8(i);
        t=t+1;
    end
end
%perittes theseis xamhles suxnothtes kai arties se upshles
y=2*pi/1000;
x=x*y;
% o pinakas twra exei ta w poy einai pio konta sta "thewrhtika"
%% question 6 

ttdecode (s);

%% question 7 

load ('my_touchtones.mat');
% easySig kai hardSig uparxoun
%wavwrite(easySig , 'easySig.wav')
ttdecode (easySig);
ttdecode (hardSig)

