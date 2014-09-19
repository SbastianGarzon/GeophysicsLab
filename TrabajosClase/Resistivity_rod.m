x=(-300:0.5:300)
y=(-300:0.5:300)
z=(-300:0.5:300)
I=200;
b=5;
z=100;
rho=400;
rho2=500;
l=20;
L=500;
% ploteador
x=(-300:0.5:300);
y=(-300:0.5:300);
[X,Y]=meshgrid(x,y);
u=(I*(rho2-rho)./(4*pi*b))*log(((X.^2+Y.^2+(b-z).^2).^(1/2)+(b-z))./((X.^2+Y.^2+(b-z).^2).^(1/2)+(b+z)));
resistividad= (u./I)*pi*L.^2*(1/(2*l));
mesh(X,Y,resistividad)
title 'Resistividad producto de una varilla enterrada'
xlabel 'x (m)'
zlabel 'Profundidad'
ylabel 'y (m)'
