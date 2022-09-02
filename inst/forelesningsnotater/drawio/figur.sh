#!/bin/bash

## Now
echo 'converting'
magick prodbilder.png -crop 700x300+30+1 prodbildetf.png
