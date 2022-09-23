#!/bin/bash

echo 'converting'
## Nytteteori
magick oversikt_kons_i.png -crop 1000x250+520+1 grensenytte.png
magick oversikt_kons_i.png -crop 1000x250+520+1 indkurve.png
magick oversikt_kons_i.png -crop 250x290+260+200 indkart.pngn
magick oversikt_kons_i.png -crop 270x300+250+500 budsjbet.png
magick oversikt_kons_i.png -crop 270x300+550+500 opttilp.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsperf.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsnorm.png
magick oversikt_kons_i.png -crop 1000x250+520+1 subsingen.png

## Markedet
magick oversikt_kons_ii.png -crop 1000x600+1+1   egenel.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 kryssel.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 inntel.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 utletter.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 utltilbud.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 ekonsum.png
magick oversikt_kons_ii.png -crop 1000x250+520+1 tarbeid.png
