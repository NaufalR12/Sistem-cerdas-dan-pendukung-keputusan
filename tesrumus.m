
sisi_segitiga = 4;
tinggi_prisma = 7;

        % Menghitung luas alas segitiga
        luas_alas = 0.25 * sisi_segitiga^2 * sqrt(3);
        luas_alas
        % Menghitung luas sisi tegak prisma segitiga
        luas_selimut = 3 * sisi_segitiga * tinggi_prisma;
        luas_selimut
        % Menghitung luas permukaan prisma
        luas_permukaan = 2 * luas_alas + luas_selimut;
        luas_permukaan
        % Menghitung volume prisma
        volume = luas_alas * tinggi_prisma;
        volume
        
 tinggi_segitiga = 5;
        sisi_alas = 3;
        tinggi_prisma = 7;

        sisi_miring = sqrt (tinggi_segitiga^2 + sisi_alas^2);
        sisi_miring
        luas_alas = 0.5 * sisi_alas * tinggi_segitiga;
        luas_alas
        luas_selimut = tinggi_prisma * (sisi_miring + tinggi_segitiga + sisi_alas);
        luas_selimut
        luas_permukaan = luas_selimut + (2 * luas_alas);
        luas_permukaan
        volume = luas_alas * tinggi_prisma;
        volume
        
        sisi_alas = 4;
        tinggi_limas = 7;
        sisi_miring_segitiga = sqrt (tinggi_limas^2 + (0.5 * sisi_alas)^2);
        sisi_miring_segitiga
        luas_selimut = 4 * (0.5 * sisi_miring_segitiga * sisi_alas); 
        luas_selimut
        luas_alas =  sisi_alas * sisi_alas;
        luas_alas
        luas_permukaan = luas_alas + luas_selimut;
        luas_permukaan
        volume = (1/3) * luas_alas * tinggi_limas;
        volume
        
        
        panjang = 7;
        lebar = 4;

        luas_alas = panjang * lebar;
        luas_alas
        tinggi_limas = 9;
        %mencari tinggi segitiga yang alasnya adalah sisi lebar
        tinggi_segitiga_l = sqrt ( (0.5 * panjang)^2 + tinggi_limas^2);
        tinggi_segitiga_l
        %mencari tinggi segitiga yang alasnya adalah sisi panjang
        tinggi_segitiga_p = sqrt ( (0.5 * lebar)^2 + tinggi_limas^2);
        tinggi_segitiga_p
        luas_segitiga_l = 0.5 * lebar * tinggi_segitiga_l;
        luas_segitiga_l
        luas_segitiga_p = 0.5 * lebar * tinggi_segitiga_p;
        luas_segitiga_p
        luas_selimut = 2 * luas_segitiga_l + 2 * luas_segitiga_p;
        luas_selimut
        luas_permukaan = luas_alas + luas_selimut;
        luas_permukaan
        volume = (1/3) * luas_alas * tinggi_limas;
        volume