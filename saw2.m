x=[150,15,2,2,3;500,200,2,3,2;200,10,3,1,3;350,100,3,1,2];%input data berdasarkan kriteria
k=[0,1,1,0,1];%nilai atribut, dimana 0= atribut biaya &1= atribut keuntungan
w=[0.25,0.15,0.30,0.25,0.05];% bobot untuk masing-masing kriteria
disp ('nilai input x=')
disp (x)
disp ('bobot yang diberikan w=')
disp (w)
disp ('atribut tiap kriteria k=')
disp (k)

%tahapan 1. normalisasi matriks
[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong

for j=1:n,
 if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end;
end;

disp ('matriks yang sudah ternomalisasi R=')
disp (R)
%tahapan kedua, proses perangkingan
for i=1:m,
 V(i)= sum(w.*R(i,:))
end;
