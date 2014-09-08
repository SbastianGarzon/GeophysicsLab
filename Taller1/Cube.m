%Punto 1- Anomalia generada por un mismo contraste de densidad en un cilindro con radio variable cada 5 metros
G=6,67384*(10^(-11)) %N*m^2)/kg^2
p= 1700 %kg/m3 Arena
p2=7874 %kg/m3 Hierro
deltap=p2-p %kg/m3
h= 20 %metros profundidad
matriz=zeros(600,2);
c=5
for z=1:5
    contador=1;
    c=c+(z.*0.5); 
    for x=-300:300
        gcubo = (G*deltap*(c.^2))*((x.^2+h.^2).^(-1/2))-((x.^2+(h+c).^2).^(-1/2))
        matriz(contador,1)= contador;
        matriz (contador,2)=gcubo;
        contador=contador+1;
    end
    
    subplot(2,1,1)
    xlim ([0,600])
    title ' Anomalia generada por una cubo de hierro con lado variable cada 0,5 metros'
    xlabel 'x'

    hold all
    for i=1:600
         plot(matriz(:,1),matriz(:,2))
    end
end

c=5
h=20
x1=(-300:0.5:300);
y1=(-300:0.5:300);
%ploteador
[X,Y]=meshgrid(x1,y1);
gcubo1 = (G*deltap*(c.^2))*((X.^2+h.^2+(Y.^2)).^(-1/2))-((X.^2+(h+c).^2+(Y.^2)).^(-1/2));
subplot(2,1,2)
title 'Anomalia 3d generada por un cubo de hierro en un capa de arena'
xlabel 'x'
zlabel 'm/s^2'
ylabel 'y'
mesh(X,Y,gcubo1)
