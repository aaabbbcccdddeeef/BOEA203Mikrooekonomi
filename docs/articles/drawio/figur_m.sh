#!/bin/bash

echo 'converting'
## Fullkommen konkurranse
magick markedfullkommenanalyse.png -crop 1000x235+520+20 markl.png
magick markedfullkommenanalyse.png -crop 1000x235+520+20 konso.png
magick markedfullkommenanalyse.png -crop 1000x235+520+20 prodo.png
magick markedfullkommenanalyse.png -crop 1000x235+520+20 planl.png
magick markedfullkommenanalyse.png -crop 1000x235+520+20 avgfk.png

## Monopol
magick markedmonopolanalyse.png -crop 1000x235+520+20 monoe.png
magick markedmonopolanalyse.png -crop 1000x235+520+20 monop.png
