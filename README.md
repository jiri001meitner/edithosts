![edithosts logo](http://l.meitner.cz/edithosts.logo.png)

[Buy me a coffee](http://l.meitner.cz/paypal-edithosts)[![Buy me a coffee](https://farm8.staticflickr.com/7637/16935062915_a9ca9ab564_m.jpg)](http://l.meitner.cz/paypal-edithosts)

# [English](http://edithosts.meitner.cz/en)

# [Czech](http://edithosts.meitner.cz/)

## O projektu

Zde bych Vás rád seznámil s projektem Edithosts na blokování reklamy a malware webů na systému GNU/Linux.

Edithosts je editor souboru /etc/hosts, periodicky stahuje a aktualizuje černou listinu (její smysl je počítači zabránit stahovat nebezpečná data a reklamu ze škodlivých a reklamních webů. Program se umí sám aktualizovat. Ve výchozím nastavení nemusí uživatel nic měnit nebo nastavovat, stačí pouze jednoduše nainstalovat.

Program je ideální možností pro blokování otravných reklam, zabránění sledování a zvýšení bezpečnosti již na úrovni operačního systému. Na rozdíl od doplňků pro prohlížeče pracuje již na úrovni operačního systému (interně využívá přirozených vlastností souboru /etc/hosts a kromě občasných aktualizacích vůbec neběží, nezpomaluje tedy prohlížeč tak jako doplňky typu Adblock Plus. Velkou výhodou programu Edithosts je fungování nezávislé na používaném prohlížeči.

Program jednoduše nainstalujete a již se nemusíte o nic starat. Funguje bezúdržbově a automaticky, včetně aktualizací černé listiny nechtěných webů a samotného programu.

Program umí i dočasnou deaktivaci blokování, po nastavené době v konfiguračním souboru se blokování opět zapne.

Celý program je v složen z jednoduchých bashových scriptů, takže je pro uživatele jednoduše čitelný a konfigurovatelný. Jediné, co je potřeba před instalací udělat, tak mít nainstalovaný [git](apt://git) a mít právo sudo (oprávnění instalovat programy).

[Více na webu programu](http://edithosts.meitner.cz)

***

## Instalace:

	cd /tmp
	git clone https://github.com/jiri001meitner/edithosts.git
	edithosts/install.sh

## Odinstalace:

	/opt/edithosts/uninstall.sh

### Ruční úprava souboru /etc/hosts

	/opt/edithosts/edithosts.sh
>(Slouží pro editaci uživatelské části /etc/hosts (části bez černé listiny, ta je oddělená) ve vašem oblíbeném editoru).
Přímá editace souboru /etc/hosts se nedoporučuje, protože při aktualizaci by došlo k vymazání změn.

***
## Popis

>Edithosts je jednoduchá a účinná cesta k blokování reklamy a malware webů v operačním systému GNU/Linux.

>Program se sám aktualizuje a uživatel se nemusí o nic starat.


### Příklad použití

	/opt/edithosts/uninstall.sh
>Slouží k odinstalaci programu a vrácení všech nastavení.

	/opt/edithosts/autoupdate.sh
>Slouží ke kontrole aktualizací programu a k následné aktualizaci.

	/etc/cron.monthly/updateprogramuedithosts
>Je shodné s výše uvedeným autoupdate.sh a slouží k periodické měsíční kontrole aktualizací programu a k následné aktualizaci.

	/opt/edithosts/cron.weekly-edithosts
>Slouží k aktualizaci černé listiny.

	/etc/cron.weekly/edithosts
>Je shodné s výše uvedeným cron.weekly-edithosts a slouží k týdenní automatické aktualizaci černé listiny.

	/opt/edithosts/edithosts.sh
>Slouží pro editaci uživatelské části /etc/hosts (části bez černé listiny, která je oddělená) ve vašem oblíbeném editoru.

	/opt/edithosts/gethosts.sh
>Slouží pro ruční aktualizaci černé listiny a sloučení s uživatelsky editovatelnou částí, tento script je spouštěn ostatními částmi prorgamu.

	/opt/edithosts/temporarilydisableblocking.sh
	temporarilydisableblocking
>Slouží pro dočasnou deaktivaci blokování, ta je nastavena na 10 minut.

### Zobrazení nápovědy

	man edithosts
>Slouží pro zobrazení nápovědy v terminálu.

### Příspěvek na vývoj
Pokud jste spokojení, budu rád za jakýkoliv příspěvek.

[PayPal účet či platební karta online](http://l.meitner.cz/paypal-edithosts)


>Fio banka: 2100068351/2010

>mBank: 670100-2201542227/6210

>Bitcoiny: 1L8dtEf1EZU1A6mjkaCf78q2mHE4JVuBLP
