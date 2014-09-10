G=6.67384*(10^(-11)) %N*m^2)/kg^2
p= 7874 %kg/m3 Hieroo
p2=1700 %kg/m3 Arena
a= 5 %metros radio
h= 20 %metros profundidad
deltap=p2-p %kg/m3
x1=(-300:0.5:300);
y1=(-300:0.5:300);
%ploteador
[X,Y]=meshgrid(x1,y1);
gz2=((4/3)*pi*G*(a.^3)*deltap*h)./((X.^2+h.^2+Y.^2).^(3/2));
xlabel 'x'
zlabel 'm/s^2'
ylabel 'y'
contourf(X,Y,gz2)
