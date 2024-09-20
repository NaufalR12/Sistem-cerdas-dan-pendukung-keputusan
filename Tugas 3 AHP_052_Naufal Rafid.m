function [Max_Motor_Score ] = ahp()
disp('Matriks Perbandingan Berpasangan pada Kriteria');
%      (G)   (A)  (E)   (B)  
MPBk= [ 1/1   1/2   3/1  1/1;  % (G-Gaya)
       2/1   1/1   4/1  3; % (A-Keandalan)
       1/3   1/4   1/1  1/1;     % (E-Keekonomisan)
       1/1   1/3   1/1  1/1]   % (B-Biaya)


  % normalisasi
  w_MPBk=calc_norm(MPBk)
  
  % hitung eigenvector 
  [m n] = size(w_MPBk);
    for i=1 : m,  
        sumRow = 0;  
        for j=1 :n,  
            sumRow = sumRow + w_MPBk(i,j);  
        end;
    V(i)=(sumRow);
    end;
   
    disp('Eigenvector')
    w_MPBk=transpose(V)/m
%% Membandingkan Gaya :
disp('Perbandingan Gaya: Alternatif Kualitatif Berpasangan');
AKB_G = [ 1/1 1/2 2/1 1/3; 
          2/1 1/1 3/1 1/2; 
          1/2 1/3 1/1 1/4; 
          3/1 2/1 4/1 1/1]
       
w_G =calc_norm(AKB_G)
 
[m n] = size(w_G);
    for i=1 : m,  
        sumRow = 0;  
        for j=1 :n,  
            sumRow = sumRow + w_G(i,j);  
        end;
    V(i)=sumRow;
    end;
    
    disp('Eigenvector')
    w_G=transpose(V)/m % menghitung eigenvector pada matriks kualitatif
    %% Membandingkan Keandalan :
disp('Perbandingan Keandalan: Alternatif Kualitatif Berpasangan');
AKB_A = [ 1/1 1/2 3/1 2/1;
          2/1 1/1 4/1 3/1; 
          1/3 1/4 1/1 1/2;
          1/2 1/3 2/1 1/1]
w_A = calc_norm(AKB_A)  
[m n] = size(w_A);
    for i=1 : m,  
        sumRow = 0;  
        for j=1 :n,  
            sumRow = sumRow + w_A(i,j);  
        end;
    V(i)=(sumRow);
    end;
    
    disp('Eigenvector')
    w_A=transpose(V)/m % menghitung eigenvector pada matriks kualitatif
%% Membandingkan Keekonomisan Bahan Bakar :
disp('Perbandingan Keekonomisan Bahan Bakar: Alternatif Kuantitatif');
  ym = 60;   % yamaha
  hn = 80;   % honda
  sz = 60;   % suzuki
  kw = 80;   % kawasaki
 
  ACM_Fe = [ ym; 
            hn; 
            sz; 
            kw]
        
disp('Eigenvector Kuantitatif Keekonomisan')
  w_E  = calc_norm(ACM_Fe)  % menghitung eigenvector pada matriks kuantitatif
%% Membandingkan Biaya :
disp('Perbandingan Biaya: Alternatif Kuantitatif');
  ym = 16;   % yamaha
  hn = 30;   % honda
  sz = 15;   % suzuki
  kw = 40;   % kawasaki
 
  ACM_Fb = [ ym; 
            hn; 
            sz; 
            kw]
        
  disp('Eigenvector Kuantitatif Biaya')
  w_B  = calc_norm(ACM_Fb)  % menghitung eigenvector pada matriks kuantitatif

  %% Hitung jawaban akhir dan tentukan motor terbaik 
 % eigenvectors: Gaya   Keandalan   Keekonomisan Biayas
 wM         =   [w_G   w_A   w_E  w_B ];
 disp(wM)
 
 % kalikan matriks vektor eigen dengan vektor eigen kriteria untuk medapat skor setiap motor
disp('Nilai akhir untuk: yamaha, honda, suzuki, kawasaki')
 MC_Scores = wM * w_MPBk
 
 % Motor terbaik 
 disp('Nilai Motor terbaik terpilih berdascalc_arkan manfaat (kriteria)')
 Max_MC_benefits = max(MC_Scores)

 function [normvect ] = calc_norm(M) 
        sM = sum(M);
        normvect = M./sM;
        disp('Normalisasi Matriks');
    end
end
