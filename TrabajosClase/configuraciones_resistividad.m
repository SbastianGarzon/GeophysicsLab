v1=5 %voltaje
v2=5.5 %voltaje
I= 1 %amp
deltav=v2-v1;
l= 10;
contador=1;
matriz=zeros(400,2);
colormap hsv;
matriz2=zeros(80,2);
cm=colormap
 %Configuracion Schlumberger
for I=0.2:0.01:0.3
    contador=1 
    for L=-100:0.5:100
        rho= pi*L.^2*deltav/(2*l.*I);
        matriz(contador,1)=L;
        matriz(contador,2)=rho;
        contador=contador+1;
    end
    grid on
    subplot(2,2,1)
    title 'Configuracion Schlumberger'
    hold all
    xlabel 'x(m)'
    ylabel 'Resistividad'
    for i=1:400
         plot(matriz(:,1),matriz(:,2))
    end 
end

%configuracion Wenner
for I=0.4:0.01:0.5
    contador=1 
    for a=-20:0.5:20
        rho= 2*pi*a*deltav/I
        matriz2(contador,1)=a;
        matriz2(contador,2)=abs(rho);
        contador=contador+1;
    end
    grid on
    subplot(2,2,2)
    title 'Configuracion Wenner'
    hold all
    xlabel 'a'
    ylabel 'Resistividad'
    axis([0,20,0,160])
    for i=1:80

         plot(matriz2(:,1),matriz2(:,2))
    end 
end
%Metodo Dipolo Dipolo
for I=0.4:0.01:0.5
    contador=1 
    a=10
    for n=-20:0.5:20
        rho= pi*a*n*(n+1)*(n+2)*(deltav/I)
        matriz2(contador,1)=n;
        matriz2(contador,2)=abs(rho);
        contador=contador+1;
    end
    grid on
    subplot(2,2,[3 4])
    title 'Configuracion Dipolo-Dipolo'
    hold all
    xlabel 'a'
    ylabel 'Resistividad'
    axis([0,20,0,(4*10^5)])
    for i=1:80
         plot(matriz2(:,1),matriz2(:,2))
    end 
end
