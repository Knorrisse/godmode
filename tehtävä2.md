# Tehtävä 2

## Tein moduulin alias /etc/puppet/modules/ polkuun. Alias kansioon tein kansiot manifests ja templates. Kansioon templates kopioin bash.bashrc tiedoston polusta /etc/ komennolla (cp /etc/bash.bashrc /etc/puppet/modules/alias/templates/). Muutin tiedoston nimen komennolla (mv /etc/puppet/modules/alias/templates/bash.bashrc /etc/puppet/modules/alias/templates/bash.bashrc.erb). Lisäsin tiedoston alkuun aliaksen (alias t="sudo apt-get install vlc"). Kansioon manifests tein tiedoston init.pp ja siihen kirjoitin:  

class alias {

        file {'/etc/bash.bashrc':
                content => template(‘alias/bash.bashrc.erb’),
	}
}
## Ajoin moduulin komennolla (sudo puppet apply -e ‘class {alias:}’) Avasin toisen komentoikkunan ja ajoin komennon t, mikä ajoi (sudo apt-get install vlc), mikä asensi vlc:n. 

## Asensin git komennolla sudo apt-get install git. Loin repository:n GitHub:iin ja kloonasin sen git clone (repository:n linkki) komennolla. Kopioin alias moduulin komennolla (cp -R /etc/puppet/modules/alias /home/nikolas/godmode/modules). Ajoin komennot (Git add .) ja (Git commit) ja sen jälkeen komennot (git pull) ja (git push). Loin tiedoston “tehtävä 2” ja lisäsin siihen tämän tekstin, jonka jälkeen ajoin samat komennot kuin aikaisemmin.

