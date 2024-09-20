function [Max_warung] = ahp()
disp('Matriks perbandingan berpasangan pada kriteria');
MPBK = [ 1/1 3/1 2/1 2/1;
         1/3 1/1 1/3 1/2;
         1/2 3/1 1/1 1/1;
         1/2 2/1 1/1 1/1]
     
%normalisasi
w_MPB=calc_norm(MPBK)

%hitung eigenvector
[m n] = size(w_MPB);
for i=1:m,
    sumRow = 0;
    for j=1:n,
        sumRow = sumRow+w_MPB(i,j);
    end;
V(i) = (sumRow);
end;

disp('Eigenvector')
w_MPB= transpose(V)/m

 %%Membandingkan Kualitas
  disp('Perbandingan Kualitas: Alternatif Kualitatif Berpasangan');
   pt_a = 90;
   pt_b = 80;
   pt_c = 75;
   pt_d = 85;
   
   ACM_K =[ pt_a;
            pt_b;
            pt_c;
            pt_d]
   w_K = calc_norm(ACM_K)
   
   %%Membandingkan Fleksibilitas Pembayaran
   disp('Perbandingan Fleksibilitas Pembayaran: Alternatif Kualitatif Berpasangan');
    AKB_FP = [ 1/1 2/1 3/1 4/1;
               1/2 1/1 2/1 3/1;
               1/3 1/2 1/1 2/1;
               1/4 1/3 1/2 1/1 ]
     w_FP = calc_norm(AKB_FP)
         [m n] = size(w_FP);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_FP(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_FP = transpose(V)/m
           
    %%Membandingkan Pemenuhan Pesanan
    disp('Perbandingan Pemenuhan Pesanan: Alternatif Kualitatif Berpasangan');
     AKB_PP = [ 1/1 2/1 1/2 1/3;
                1/2 1/1 1/3 1/4;
                2/1 3/1 1/1 1/2;
                3/1 4/1 2/1 1/1 ]
      w_PP = calc_norm(AKB_PP)
         [m n] = size(w_PP);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_PP(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_PP = transpose(V)/m
           
      %%Membandingkan Waktu
      disp('Perbandingan Waktu: Alternatif Kualitatif Berpasangan');
       AKB_W = [ 1/1 2/1 3/1 1/2;
                 1/2 1/1 2/1 1/3;
                 1/3 1/2 1/1 1/4;
                 2/1 3/1 4/1 1/1 ]
        w_W = calc_norm(AKB_W)
         [m n] = size(w_W);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_W(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_W = transpose(V)/m
           
       %%Hitung Jawaban Terakhir
       wM = [w_K w_FP w_PP w_W];
       disp('Nilai Akhir Untuk : PT A, PT B, PT C, PT D');
       MC_Scores = wM * w_MPB
       
       %%PT Terbaik
       disp('Nilai PT Terbaik terpilih berdasarkan manfaat (kriteria)');
       Max_MC_Benefits = max(MC_Scores)
    function  [normvect] = calc_norm(M)
        sM = sum(M);
        normvect = M./sM;
        disp('Normalisasi Matriks');
    end
end