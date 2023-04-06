close all
clear
N=[2 4 10];
D=[1 10 -2 5];
polos=roots(D);
ceros=roots(N);
vPreal=real(polos);
vPimg=img(polos);
vCreal=real(ceros);
vCimg=img(ceros);
figure,plot(vPreal,vPimg,'xr','MarkerSize',5);
hold on;
plot(vCreal,vCimg,'ob','MarkerSize',5);
grid on;
figure;
Gs=tf(N,D);
P=norm(min(real(polos)));
Tm=(2*pi)/(10*P);
Gz=c2d(Gs,Tm);
figure;
step(Gz);