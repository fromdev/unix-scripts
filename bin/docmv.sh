TARGET_DIR="./docs"
mkdir -p $TARGET_DIR
TODAY_FOLDER=Docs-`date +%Y%m%d`
DOC_REGEX=".*\.([dD][oO][cC][xX]?|[pP][dD][fF])"
mkdir -p $TARGET_DIR/$TODAY_FOLDER
find -E . -regex $DOC_REGEX | while read line; do
    echo "Moving file '$line' to $TARGET_DIR/$TODAY_FOLDER"
    mv $line $TARGET_DIR/$TODAY_FOLDER
done
