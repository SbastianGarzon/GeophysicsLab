tic
G=6,67384*(10^(-11)) %N*m^2)/kg^2
p=2700 %kg/m3
p2=2000 %kg/m3
deltap=p-p2 %kg/m3
a= 50 %metros radio
h= 100 %metros profundidad
x=0
matriz=zeros(600,2)
for z=1:10
    contador=1;
    a=a+(z.*5); 
    for x=-300:300
        gz=((2*pi*G*deltap*(a.^2)*h)/(h.^2+x.^2));
        matriz(contador,1)= contador;
        matriz (contador,2)=gz;
        contador=contador+1;
    end
    subplot(2,1,1)
    xlim ([0,600])
    title ' Anomalia generada por un mismo contraste de densidad en un cilindro con radio variable cada 5 metros'
    xlabel 'x'
    ylabel 'm/s^2'
    hold all
    for i=1:600
         plot(matriz(:,1),matriz(:,2))
    end
end
for p=1:10
    contador=1;
    h=h+(p.*4) ;
    for x=-300:300
        gz=((2*pi*G*deltap*(a.^2)*h)/(h.^2+x.^2));
        matriz(contador,1)= contador;
        matriz (contador,2)=gz;
        contador=contador+1;
    end
    subplot(2,1,2)
    title 'Anomalia generada por un mismo contraste de densidad en un cilindro profundidad variable cada 4 metros'
    xlabel 'm/s^2'
    ylabel 'metros'
    xlim ([0,600])
    hold all
    for i=1:600
         plot(matriz(:,1),matriz(:,2))
    end
end
toc
