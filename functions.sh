#!/bin/sh

hello_world() {
    echo "HELLO WORLD!"
}

sum() {
    local A=$1
    local B=$2
    SUM=$((A+B))
    echo "La somma è $SUM"
}


hello_world
sum 10 15

# Con la funzione EXTERNAL, vediamo come si comporta lo "scoping" delle variabili
# e come le variabili interagiscono con esterno ed interno delle funzioni

ANSWER=42
MODIFY=BORSETTA
external() {
    echo "La risposta è $ANSWER"
    SECRET=SIGNORA
    local PASSWORD=CAMMINA
    MODIFY=BORSA
}


external
echo "La parola segreta è $SECRET"
echo "Non è possibile invece vedere la variabile interna: $PASSWORD"
echo "L'interno di una funzione può modificare le variabili: $MODIFY"

