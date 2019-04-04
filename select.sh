GET_PATH=$(pwd)
PJ_NAME=`echo ${GET_PATH} | awk -F "/" '{ print $NF }'`
JPG_DIR=$PJ_NAME"-jpg"
RAW_DIR=$PJ_NAME"-raw"
SELECT_DIR=$PJ_NAME"-select"

cd $SELECT_DIR
for file in *.jpg *.JPG ; do
    [ -f "$file" ] || continue
     GET_NAME=`echo $file | sed 's/\.[^\.]*$//'`
     cp "../"$RAW_DIR"/"$GET_NAME".ARW" "../"$SELECT_DIR"/"$GET_NAME".ARW"
     echo "Done! Copy "$GET_NAME;
done
