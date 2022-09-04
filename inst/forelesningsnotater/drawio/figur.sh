#!/bin/bash

echo 'converting'
## Produktfunksjonen
magick prodbilder.png -crop 700x300+30+1 prodbildetf.png
magick oversikt_prod_i.png -crop 275x210+1+55 prodkl.png
magick oversikt_prod_i.png -crop 275x210+275+55 prodkk.png
magick oversikt_prod_i.png -crop 275x210+275+55 isokvant.png
magick oversikt_prod_i.png -crop 300x250+1+350 isokvant.png
magick oversikt_prod_i.png -crop 300x225+1+600 linsub.png
magick oversikt_prod_i.png -crop 320x310+1+800 lensub.png
magick oversikt_prod_i.png -crop 1000x250+375+360 okskala.png
magick oversikt_prod_i.png -crop 1000x250+375+360 koskala.png
magick oversikt_prod_i.png -crop 1000x450+425+830 avskala.png

## Inntekter og kostnader
magick oversikt_prod_ii.png -crop 250x200+1+102 inntf.png
magick oversikt_prod_ii.png -crop 250x200+100+102 kostku.png
magick oversikt_prod_ii.png -crop 250x200+250+102 kostkm.png
magick oversikt_prod_ii.png -crop 200x220+0+375 kosmin.png
magick oversikt_prod_ii.png -crop 260x240+250+375 kosminkk.png
magick oversikt_prod_ii.png -crop 270x240+525+375 kosminka.png
magick oversikt_prod_ii.png -crop 350x600+1+675 submalen.png
magick oversikt_prod_ii.png -crop 500x600+375+675 skalau.png

## Adferd i gode- og arbeidsdmarkedet
magick oversikt_prod_iii.png -crop 1000x250+375+360 kgkufast.png
magick oversikt_prod_iii.png -crop 1000x250+375+360 kgkmfast.png
magick oversikt_prod_iii.png -crop 1000x450+425+830 krbtilp.png
magick oversikt_prod_iii.png -crop 1000x250+375+360 lgkufast.png
magick oversikt_prod_iii.png -crop 1000x250+375+360 lgkmfast.png
magick oversikt_prod_iii.png -crop 1000x450+425+830 lrbtilp.png
magick oversikt_prod_iii.png -crop 1000x450+425+830 ktilbu.png
magick oversikt_prod_iii.png -crop 1000x450+425+830 ltilbu.png
magick oversikt_prod_iii.png -crop 1000x450+425+830 klearb.png

