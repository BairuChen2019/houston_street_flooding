#! /bin/sh
QUADS_OF_INTEREST="2995021 2995022 2995023 2995024 2995031 2995032 2995033 2995034 2995041 2995042 2995043 2995044 2995051 2995052 2995053 2995054 2995061 2995062 2995063 2995064 2995071 2995072 2995073 2995074 2995081 2995083 2995101 2995102 2995103 2995104 2995111 2995112 2995113 2995114 2995121 2995122 2995123 2995124 2995131 2995132 2995133 2995134 2995141 2995142 2995143 2995144 2995151 2995152 2995153 2995154 2995161 2995163 2995171 2995172 2995173 2995174 2995181 2995182 2995183 2995184 2995191 2995192 2995193 2995194 2995201 2995202 2995203 2995204 2995211 2995212 2995213 2995214 2995221 2995222 2995223 2995224 2995231 2995232 2995233 2995234 2995241 2995243 2995252 2995254 2995261 2995262 2995263 2995264 2995271 2995272 2995273 2995274 2995281 2995282 2995283 2995284 2995291 2995292 2995293 2995294 2995301 2995302 2995303 2995304 2995311 2995312 2995313 2995314 2995321 2995323 2995332 2995341 2995342 2995351 2995352 2995361 2995362 2995363 2995364 2995371 2995372 2995373 2995374 2995381 2995382 2995383 2995384 2995391 2995392 2995393 2995394 2995401 2995403 3095501 3095502 3095503 3095504 3095511 3095512 3095513 3095514 3095521 3095522 3095523 3095524 3095531 3095532 3095533 3095534 3095541 3095542 3095543 3095544 3095551 3095552 3095553 3095554 3095561 3095563 3095581 3095582 3095583 3095584 3095591 3095592 3095593 3095594 3095601 3095602 3095603 3095604 3095611 3095612 3095613 3095614 3095621 3095622 3095623 3095624 3095631 3095632 3095633 3095634 3095641 3095643"
for QUAD in $QUADS_OF_INTEREST
do
    FILENAME=hgac08-1m_$QUAD.zip
    wget "https://tnris-datadownload.s3.amazonaws.com/d/hgac08-1m/qquad/$QUAD/$FILENAME"
    unzip "$FILENAME" "dem/2008/$FILENAME"
    rm -f $FILENAME
done

echo "Making merged .vrt file of all DEMs"
gdalbuildvrt merged_dem.vrt dem/2008/*.img
