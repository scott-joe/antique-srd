#!/usr/local/bin/zsh
# while getopts u:a:f: flag
# do
#     case "${flag}" in
#         u) username=${OPTARG};;
#         a) age=${OPTARG};;
#         f) fullname=${OPTARG};;
#     esac
# done


for FULL_FILE in ./copy/markdown/*.md
  do
    FILENAME=$(basename -- "$FULL_FILE")
    # EXTENSION="${FILENAME##*.}"
    FILENAME="${FILENAME%.*}"
    echo "Converting $FULL_FILE to ./copy/html/$FILENAME.html"
    # With template

    # if ["$OUTPUT" == "icml"] 
    #   then
    #     pandoc -s "$FULL_FILE" -f markdown -t icml --template="./copy/template.icml" -o "./copy/in-copy/$FILENAME.icml"
    # fi
    
    # if ["$OUTPUT" == "html"]
    #   then
    pandoc -s "$FULL_FILE" -f markdown -t html --css="./styles.css" -o "./copy/html/$FILENAME.html"
    # pandoc -s "./copy/markdown/03--classes.md" -f markdown -t $OUTPUT --css="./styles.css" -o "./copy/html/$FILENAME.html"
    # fi
    
    # Without template
    # pandoc -s "$FULL_FILE" -f markdown -t icml -o "./copy/in-copy/$FILENAME.icml"
  
    # SWAP OUT BOLD FORMATS
    # "$ID/NormalCharacterStyle" FOR "CharacterStyle/$ID/[No character style]"
    # sed "s/KEYWORD/REPLACE/g" ./copy/in-copy/$FILENAME.icml
    
    # pandoc -s "$FULL_FILE" -f markdown -t plain -o "./copy/plain/$FILENAME.txt"
done