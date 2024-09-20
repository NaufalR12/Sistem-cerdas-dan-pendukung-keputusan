function [Max_PT_awang] = ahp()
disp('Matriks Perbandingan Berpasangan pada Kriteria');
    MPBk = [ 1/1 3/1 2/1 2/1;
             1/3 1/1 1/3 1/2;
             1/2 3/1 1/1 1/1;
             1/2 2/1 1/1 1/1 ]
         
         %normalisasi
         w_MPB = calc_norm(MPBk)
         [m n] = size(w_MPB);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_MPB(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_MPB = transpose(V)/m
           
  %%Membandingkan Kuantitas
  disp('Perbandingan Kuantitas: Alternatif Kualitatif Berpasangan');
   anindita = 90;
   mbalis = 80;
   lembayung = 75;
   rizky = 85;
   
   ACM_K =[ anindita;
            mbalis;
            lembayung;
            rizky]
   w_K = calc_norm(ACM_K)
   
   %%Membandingkan Kedisiplinan Pembayaran
   disp('Perbandingan Kedisiplinan Pembayaran: Alternatif Kualitatif Berpasangan');
    AKB_KP = [ 1/1 2/1 3/1 4/1;
               1/2 1/1 2/1 3/1;
               1/3 1/2 1/1 2/1;
               1/4 1/3 1/2 1/1 ]
     w_KP = calc_norm(AKB_KP)
         [m n] = size(w_KP);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_KP(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_KP = transpose(V)/m
           
    %%Membandingkan Keberlanjutan Pesanan / Repeat Order
    disp('Perbandingan Keberlanjutan Pesanan / Repeat Order: Alternatif Kualitatif Berpasangan');
     AKB_RO = [ 1/1 2/1 1/2 1/3;
                1/2 1/1 1/3 1/4;
                2/1 3/1 1/1 1/2;
                3/1 4/1 2/1 1/1 ]
      w_RO = calc_norm(AKB_RO)
         [m n] = size(w_RO);
           for i=1 : m,
               sumRow = 0;
               for j=1 :n,
                   sumRow = sumRow + w_RO(i,j);
               end;
              V(i) = (sumRow);
           end;
             disp('Eigenvector')
           w_RO = transpose(V)/m
           
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
       wM = [w_K w_KP w_RO w_W];
       disp('Nilai Akhir Untuk : Anindita, Mba lis, Lembayung, Faachril Rizky');
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
     

