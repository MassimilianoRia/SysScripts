while read matr voto altro ; do 
  echo $voto; 
done < votiok.txt | sort -n | uniq -c | 
while read NUM VOTO ALTRO ; do 
  echo $VOTO $NUM ; 
done

