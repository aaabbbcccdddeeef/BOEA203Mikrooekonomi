#!/bin/bash

## Now
echo 'converting'
magick prodbilder.png -crop 700x300+30+1 prodbildetf.png
magick oversikt_prod_i.png -crop 275x210+1+55 prodkl.png
magick oversikt_prod_i.png -crop 275x210+275+55 prodkk.png
magick oversikt_prod_i.png -crop 275x210+275+55 isokvant.png
magick oversikt_prod_i.png -crop 300x250+1+350 isokvant.png
magick oversikt_prod_i.png -crop 300x250+1+350 linsub.png
magick oversikt_prod_i.png -crop 300x250+1+350 lensub.png
magick oversikt_prod_i.png -crop 300x250+1+350 okskala.png
magick oversikt_prod_i.png -crop 300x250+1+350 avskala.png
magick oversikt_prod_i.png -crop 300x250+1+350 koskala.png
