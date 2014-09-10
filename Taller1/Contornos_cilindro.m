G=6.67384*(10^(-11)) %N*m^2)/kg^2
p= 1700 %kg/m3 Arena
p2=7874 %kg/m3 Hierro
deltap=p2-p %kg/m3
a= 5 %metros radio
h= 20 %metros profundidad
G=6.67384*(10^(-11)) %N*m^2)/kg^2
x1=(-300:0.5:300);
y1=(-300:0.5:300);
deltap=p2-p %kg/m3
%ploteador
[X,Y]=meshgrid(x1,y1);
gz=((2*pi*G*deltap*(a.^2)*h)./(h.^2+X.^2));
contourf(X,Y,gz)
