%data rating kecocokan dari masing-masing alternatif
x = [0.75,2000,18,50,500;0.5,1500,20,40,450;0.9,2050,35,35,800]; %x = [A1; A2; A3;]
%cost = 0 dan benefit = 1
%nilai tiap kriteria 1=keuntungan 0=biaya
k = [0,0,0,1,0];

%nilai tiap bobot
w = [5,3,4,4,2];

%inisialisasi ukuran x
[m n] = size(x);

%Normalisasi bobot
%membagi bobot per kriteria dengan jumlah total seluruh bobot
w = w./sum(w);

%melakukan perhitungan vektor s per alternatif
for j=1:n,
    if k(j)==0, w(j)=-1*w(j); % melakukan perkalian dengan kriteria
    end;
end;
for i=1:m;
    S(i)=prod(x(i,:).^w);% setiap C akan di pangkatkan dengan w
end

%proses perankingan
V=S/sum(S)
