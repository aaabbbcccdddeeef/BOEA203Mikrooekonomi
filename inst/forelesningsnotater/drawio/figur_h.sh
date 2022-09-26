#!/bin/bash

echo 'converting'
## Nytteteori
magick oversikt_kons_i.png -crop 1000x235+520+20 grensenytte.png
magick oversikt_kons_i.png -crop 1000x240+520+270 indkurve.png
magick oversikt_kons_i.png -crop 250x250+1+530 indkart.png
magick oversikt_kons_i.png -crop 270x255+240+537 budsjbet.png
magick oversikt_kons_i.png -crop 270x300+550+500 opttilp.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsperf.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsnorm.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsingen.png

## Markedet
magick oversikt_kons_ii.png -crop 250x250+1+95   egenel.png # Win
magick oversikt_kons_ii.png -crop 350x305+200+70 kryssel.png # Win
magick oversikt_kons_ii.png -crop 1000x250+500+100 inntel.png # Win\n
magick oversikt_kons_ii.png -crop 300x250+100+440 utletter.png # Win\n
magick oversikt_kons_ii.png -crop 300x300+400+425 utltilbud.png # Win\n
magick oversikt_kons_ii.png -crop 300x250+100+780 ekonsum.png # Win\n
magick oversikt_kons_ii.png -crop 300x250+400+790 tarbeid.png # Wim\n
