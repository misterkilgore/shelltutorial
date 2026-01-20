#!/bin/sh
#===============================================================================
# Nome script  : template.sh
# Descrizione  : Breve descrizione di cosa fa lo script
# Autore       : Tuo Nome <email@esempio.com>
# Repository   : https://github.com/tuo-user/example-script
# Licenza      : MIT
# Versione     : 0.1.0
#===============================================================================


#--- Costanti per output colorato ------------------------------------------------
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
NC="\033[0m" # No Color

#--- Funzioni di utilità ----------------------------------------------------------
info()    { echo "${GREEN}✔ $1${NC}"; }
warn()    { echo "${YELLOW}⚠ $1${NC}"; }
error()   { echo "${RED}✖ $1${NC}"; exit 1; }



#--- Logica principale ------------------------------------------------------------
info "Avvio dello script"

# Esempio di comando principale
echo "Eseguo un'operazione di esempio..."
sleep 1
command -v git >/dev/null 2>&1 || error "git non è installato"

# Esempio di controllo risultato
if [ $? -eq 0 ]; then
  info "Operazione completata con successo"
else
  warn "Operazione completata con avvisi"
fi

#--- Fine -------------------------------------------------------------------------
info "Script terminato"
