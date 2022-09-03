#!/bin/bash

## Now
echo 'converting'
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
