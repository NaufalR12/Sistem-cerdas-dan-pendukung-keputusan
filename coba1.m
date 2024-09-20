function coba1( panjang, lebar, tinggi)
    % Menghitung volume balok
    volume = panjang * lebar * tinggi;

    % Menghitung luas permukaan balok
    luas_permukaan = 2 * (panjang*lebar + panjang*tinggi + lebar*tinggi);
    
     % Menampilkan hasil volume dan luas permukaan
  disp(['Volume balok: ', num2str(volume)]);
  disp(['Luas permukaan balok: ', num2str(luas_permukaan)]);