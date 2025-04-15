for f in *; do
  echo "copying from ${f} to ../new/${f}_newname.jpg"
  cp "${f}" "../new/${f}_newname.jpg"
done
