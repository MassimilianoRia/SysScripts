#!/bin/bash
#
# Lo script genscript.sh deve creare 10 file aventi
# nome s1.sh s2.sh s3.sh ... s10.sh
# e aventi come contenuto una sola riga, rispettivamente
#     echo "ciao1"   	dentro s1.sh 
#     echo "ciao2"   	dentro s2.sh 
#        ...
#        ...
#     echo "ciao10"   in s10.sh 
# Nota bene, devono esserci anche i doppi apici "
# a circondare la parola ciaoN
#
# Poi lo script genscript.sh deve mettere in esecuzione
# in sequenza i 10 file creati.
# Infine, dopo che i 10 processi sono terminati, 
# lo script deve eliminare i 10 file creati.


I=0
for (( I=1; $I<=10; I=$I+1 )) ; do
	echo "echo \"ciao${I}\"" > s${I}.sh 
	chmod 700 s${I}.sh 
done
for (( I=1; $I<=10; I=$I+1 )) ; do
	./s${I}.sh 
done
for (( I=1; $I<=10; I=$I+1 )) ; do
	rm ./s${I}.sh 
done

