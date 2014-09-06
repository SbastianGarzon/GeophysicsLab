G=6,67384*(10^(-11))
p=2000
p2=3000
deltap=p-p2
a=50 %radio
h=15 &profundidad
x=0
y=0
contador=1
x=(-30:0.5:30);
y=(-30:0.5:30);
%ploteador
[X,Y]=meshgrid(x,y);
gz=((4/3)*pi*G*(a.^3)*deltap*h)./((X.^2+h.^2+Y.^2).^(3/2));
subplot(1,2,1)
mesh(X,Y,gz)
subplot(1,2,2)
contourf(X,Y,gz)
