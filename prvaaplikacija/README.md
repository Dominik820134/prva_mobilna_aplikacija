# prvaaplikacija

Jednostavna mobilna Flutter aplikacija za pregldet informacija o poznatim glazbenim bendovima.

## Opis teme
Aplikacija prikazuje popis odabranih glazbenih sastava(rock, metal, hip-hop), s informacijama o broju njihovih pjesama i kratkim opisom svakog benda.
Korisnih može označiti bendove koje prati, a kod onih koje je već zapratio piše "Pratiš bend".

# Ekrani u aplikaciji
Prvi ekran ("Ekran popisa"):
    -prikazuje popis od 5 glazbnih bendova
    -svaka stavka sadrži odgovarajuću ikonu, naziv benda i podatak o broju pjesama
    -klikom na svaku stavku otvara se ekran s detaljima

Drugi ekran ("Ekran detalja"):
    -prikazuje detaljnije informacije o odabranom bendu (prošireni opis i ikonu)
    -omogućuje korisniku gumb "Zaprati bend" za praćenje
    -sadrži "Natrag" za povratak na početni popis

## Struktura projekta
lib/
-main.dart

>ekrani/
-ekran_popisa.dart
-ekran_detalja.dart

>modeli/
-band.dart