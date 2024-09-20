%matriks nilai tiap alternatif
x = [150,15,2,2,3; 500,200,2,3,2; 250,10,3,1,3; 350,100,3,1,2];

%benefit =1 , cost = 0
k = [0,1,1,0,1];

%bobot tiap kriteria
w = [0.25; 0.15; 0.30; 0.25; 0.05];

%untuk parameter looping dan inisialisasi matriks kosong
[m, n] = size(x);

%matriks normalisasi
R = zeros(m,n);
 
    if k(j) == 1,
        R(:,j) = x(:,j)./max(x(:,j));
    else
        R(:,j) = min(x(:,j))./x(:,j);
    end
end

%matriks setelah dikalikan dan dijumlahkan per alternatif
V = R*w   
for j=1:n,