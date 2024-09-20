%M-File sebagai fungsi

function [Sisi_miring,Luas,Keliling] = segitiga(Sisi_A,Sisi_B,Sisi_C) 
Sisi_miring = sqrt(Sisi_A^2 + Sisi_B^2); 
Luas = 1/2* Sisi_A * Sisi_B; 
Keliling = Sisi_A + Sisi_B + Sisi_C;

