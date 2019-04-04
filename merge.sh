for file in */*.jpg */*.JPG */*.raw */*.ARW */*.DNG ; do
    [ -f "$file" ] || continue
    mv $file "./"
done

rmdir *