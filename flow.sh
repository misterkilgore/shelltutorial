#!/bin/sh

echo "Primo esercizio di shell scripting"

echo "Inserisci un numero"

read NUM

if [ $NUM -gt 10 ]; then
    echo "Il numero è maggiore di 10"
else
    echo "Il numero è minore o uguale a 10"
fi

# -eq  : uguale numerico       [ "$a" -eq "$b" ]  
# -ne  : diverso numerico      [ "$a" -ne "$b" ]  
# -gt  : maggiore numerico     [ "$a" -gt "$b" ]  
# -ge  : maggiore o uguale     [ "$a" -ge "$b" ]  
# -lt  : minore numerico       [ "$a" -lt "$b" ]  
# -le  : minore o uguale       [ "$a" -le "$b" ]  

# =    : uguale stringa        [ "$str1" = "$str2" ]  
# !=   : diverso stringa       [ "$str1" != "$str2" ]  
# <    : minore stringa (con [[ ]])  [[ "$str1" < "$str2" ]]  
# >    : maggiore stringa (con [[ ]]) [[ "$str1" > "$str2" ]]  

# -z   : stringa vuota         [ -z "$str" ]  
# -n   : stringa non vuota     [ -n "$str" ]  

# -e FILE : file esiste        [ -e "$file" ]  
# -f FILE : file regolare      [ -f "$file" ]  
# -d FILE : directory          [ -d "$file" ]  
# -r FILE : leggibile          [ -r "$file" ]  
# -w FILE : scrivibile         [ -w "$file" ]  
# -x FILE : eseguibile         [ -x "$file" ]  

echo -n "Effettua una scelta: A, B, C: "
read SCELTA
case $SCELTA in
    A) 
        echo "Hai scelto A"
        ;;
    B)
        echo "Hai scelto B"
        ;;
    C)
        echo "Hai scelto C"
        ;;
    *)
        echo "Scelta sbagliata!"
        ;;
esac

COUNT=1

while [ $COUNT -le 10 ]; do
    echo $COUNT
    ((COUNT++))
done