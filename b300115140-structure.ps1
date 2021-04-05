<#
.SYNOPSIS

    Ce script est une laboratoire Powershell


.DESCRIPTION
    Ce script est utilisé pour le laboratoire de programmation en Powershell.

.NOTES
    Author: 300115140
    Derniere mise à jour: yyyy-mm-dd

#>

[String]$personneNom = "Alice"
[Int]$personneAge = 35

Write-Host "Bonjour $personneNom, tu as $personneAge ans. "

# Test sur l'age de la personne
switch ($personneAge) {
    {$_ -le 25} {Write-Host 'en pleine jeunesse'; break }
    {$_ -le 35} {Write-Host 'en pleine force vive'; break }
    {$_ -le 45} {Write-Host 'en pleine maturité'; break }
    Default {Write-Host 'en pleine serénité'}
}
Clear-Host
$villes = "Toronto","Mississauga","Scarborough","Brampton"

for ($i = 0; $i -le $villes.Count; $i = $i + 1) {
    $villes[$i]
}

"{0}" -F ($villes.Count % 2)
