for dir in */
do
  base=$(basename "$dir")
  echo $base 
  zip -r "${base}.zip" "$base"
  #tar -czf "${base}.tar.gz" "$dir"
done