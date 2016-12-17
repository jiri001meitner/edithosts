#!/bin/bash

# Stažení pro kontrolu aktualizace

cd /tmp || exit
git clone  https://github.com/jiri001meitner/edithosts.git

# Ověření, zdali-je potřeba aktualizovat

versionold=$(head -n 1 /opt/edithosts/version || echo "edithosts:zastaralá")
versionnew=$(head -n 1 /tmp/edithosts/version)

echo "edithosts:Nainstalovaná verze je $versionold, nová verze je $versionnew.".

	if [ $"versionnew" != $"versionold" ] ; then

echo "edithosts:Proběhne aktualizace programu."

# Provedení aktualizace
/tmp/edithosts/update.sh && echo "edithosts:Instalace aktualizace proběhla úspěšně." || echo "edithosts:Instalace aktualizace se nezdařila."

rm /tmp/edithosts -rf && sudo /usr/sbin/gethosts

	else

echo "edithosts:Program edithosts je aktuální a není potřeba aktualizovat"

rm /tmp/edithosts -rf

	fi

exit 0
