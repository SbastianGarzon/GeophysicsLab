%Punto 1- Anomalia generada por un mismo contraste de densidad en un cubo con radio variable cada 5 metros
G=6.67384*(10^(-11)) %N*m^2)/kg^2
p= 1700 %kg/m3 Arena
p2=7874 %kg/m3 Hierro
deltap=p2-p %kg/m3
h2=25;
h1=20;
x1=(-300:0.5:300);
y1=(-300:0.5:300);
deltap=p2-p %kg/m3
%ploteador
[X,Y]=meshgrid(x1,y1);
gcubo1 = G*deltap*(h2-h1).^2*((1./(X.^2+h1.^2+Y.^2).^(1./2)-(1./(X.^2 + h2.^2+Y.^2).^(1./2))))
xlabel 'x'
zlabel 'm/s^2'
ylabel 'y'
contourf(X,Y,gcubo1)
