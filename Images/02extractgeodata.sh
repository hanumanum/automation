IFS=':'

for f in *.JPG
do
    ltd=$(exiftool -GPSLatitude $f)
    lng=$(exiftool -GPSLongitude $f)
    read -a ltdArr <<< "$ltd"
    read -a lngArr <<< "$lng"

    echo $f","${ltdArr[1]/\ deg\ /\ }","${lngArr[1]/\ deg\ /\ } >> "geodata.csv"
done