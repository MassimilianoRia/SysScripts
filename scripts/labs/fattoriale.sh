PROD=1
NUM=$1
while ((NUM > 0)); do
 ((PROD=PROD*NUM))
 ((NUM--))
done
echo $PROD
