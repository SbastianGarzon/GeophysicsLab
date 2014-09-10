%Punto 1- Anomalia generada por un mismo contraste de densidad en un cubo con radio variable cada 5 metros
G=6.67384*(10^(-11)); %N*m^2)/kg^2
p= 1700 %kg/m3 Arena
p2= 7874; %kg/m3 Hierro
deltap=p2-p; %kg/m3
h1=20 %metros lado
h2=25 %metros profundidad
matriz=zeros(600,2);
for z=1:5
    contador=1;
    h2=25;
    h2=h2+(z.*0.5); 
    for x=-300:300
        gcubo = G*deltap*(h2-h1).^2*((1./(x.^2+h1.^2).^(1./2)-(1./(x.^2 + h2.^2).^(1./2))))
        matriz(contador,1)= contador;
        matriz (contador,2)=gcubo;
        contador=contador+1;
    end
    xlim ([0,600])
    title ' Anomalia generada por un cubo de hierro con lado variable cada 0,5 metros'
    xlabel 'x'

    hold all
    for i=1:600
         plot(matriz(:,1),matriz(:,2))
    end
end
