mkdir -p ./pics
TODAY_FOLDER=Pics-`date +%Y%m%d`
mkdir -p ./pics/$TODAY_FOLDER
find -E . -regex ".*\.([jJ][pP][eE]?[gG]|[gG][iI][fF]|[pP][nN][gG]|[bB][mM][pP])" | while read line; do
    echo "Moving file '$line' to ./pics/$TODAY_FOLDER"
    mv $line ./pics/$TODAY_FOLDER
done
