
%Punto 1- Anomalia generada por un mismo contraste de densidad en un cilindro con radio variable cada 5 metros
G=6,67384*(10^(-11)) %N*m^2)/kg^2
p= 1700 %kg/m3 Arena
p2=7874 %kg/m3 Hierro
deltap=p2-p %kg/m3
a= 5 %metros radio
h= 20 %metros profundidad
matriz=zeros(600,2);
for z=1:5
    contador=1;
    a=a+(z.*0.5); 
    for x=-300:300
        gz=((2*pi*G*deltap*(a.^2)*h)./(h.^2+x.^2));
        matriz(contador,1)= contador;
        matriz (contador,2)=gz;
        contador=contador+1;
    end
    
    subplot(2,1,1)
    xlim ([0,600])
    title ' Anomalia generada por un cilindro de hierro con radio variable cada 0,5 metros'
    xlabel 'x'

    hold all
    for i=1:600
         plot(matriz(:,1),matriz(:,2))
    end
end
b=5
w=20
x1=(-300:0.5:300);
y1=(-300:0.5:300);
%ploteador
[X,Y]=meshgrid(x1,y1);
gz2=((2*pi*G*deltap*(b.^2)*w)./(w.^2+X.^2+Y.^2));
subplot(2,1,2)
title 'Anomalia 3d generada por un cilindro de hierro en un capa de arenas'
xlabel 'x'
zlabel 'm/s^2'
ylabel 'y'
mesh(X,Y,gz2)


