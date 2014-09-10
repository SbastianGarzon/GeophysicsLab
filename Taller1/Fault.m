G=6.67384*(10^(-11)) %N*m^2)/kg^2
p= 1250 %kg/m3 Arcilla
p2=2700 %kg/m3 Aluminio
deltap=p2-p %kg/m3
a= 1 % ancho de la capa
z1= 4 % profundidad bloque colgante
z2=5 % profunidad bloque yacente
alpha= 120 % angulo
contador=1;
matriz=zeros(600,2);

for x=-300:300
        gz=2*G*deltap*a*(pi+atand((x/z1)+cotd(alpha))-atand((x/z2)+cotd(alpha)));
        matriz(contador,1)= contador;
        matriz (contador,2)=gz;
        contador=contador+1;
end
    xlim ([0,600])
    title ' AnomalÌa generada por una falla de una capa de aluminio'
    xlabel 'x'
    hold all
for i=1:600
         plot(matriz(:,1),matriz(:,2))
end
