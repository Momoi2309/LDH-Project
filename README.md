# LDH-Project
Proiect Limbaje Descriere Hardware
 Sistem de procesare video implementat pe FPGA


1. Sistem sincron, cu ceas 50MHz, preluat de pe placa Spartan

2. Reset asincron activ 0 (preluat de la un buton)
3. Interfață cu buton rotativ și switch-uri pentru configurare.
Butonul rotativ selectează registrul current ce se scrie (cu valori de la switch-uri) și se afișează pe LCD.
Butonul central determină prin apăsare momentul scrierii registrului selectat.
Switch-urile determină valorile scrise în registrul selectat în momentul apăsării pe butonul rotativ central.
4. Interfață VGA, 640x480, RGB (3 biți de culoare)
5. Interfață cu LCD. Pe rândul de sus se afișează numele registrului de configurare curent selectat. Pe rândul de jos se afișează valoarea registrului în binar și în zecimal. 
6. Sursa imaginii afișată se va selecta prin registrele de configurare. Imaginea afișată provine fie de la de la ieșirea fie de una din intrările modului de procesare de imagine.
7. Configurarea. Registrele de configurare au lățime de 4 biți. Registrul curent (la care se face scriere și afișarea pe LCD) se modifică prin butonul rotativ. Valoarea configurată se modifică prin switch-uri. Prin apăsarea butonului rotativ central se face scrierea în registrul selectat a valorii de la switch-uri. Valoarea registrului selectat este afișată pe LCD.
