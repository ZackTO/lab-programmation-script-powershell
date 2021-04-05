<#
.SYNOPSIS
    Ce script est un laboratoire Powershell
.DESCRIPTION
    Ce script est utilisé pour le laboratoire de programmation en Powershell.
.NOTES
    Author: zack
    Derniere mise à jour: 2021-04-04
.PARAMETER personneNom
c'est le nom de l'utilisateur
.PARAMETER personneAge
c'est l'âge de l'utilisateur
.PARAMETER personneCollege
c'est le collège l'utilisateur fréquente
.PARAMETER personneProgramme
c'est le programme d'étude de l'utilisateur
#>

# Definition de la fonction
function stagiaire 
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [Alias("Nom_stagiaire")]
        [String]$personneNom,

        [Parameter(Mandatory=$true )]
        [Alias("age_stagiaire")]
        [ValidateRange(12,99)]
        [Int]$personneAge,

        [Parameter(Mandatory=$true)]
        [Alias("etablissement_stagiaire")]
        [String]$personneCollege,

        [Parameter(Mandatory=$true)]
        [Alias("departement_stagiaire")]
        [String]$personneProgramme     
    )

    # message de bienvenue 
    BEGIN {Write-Verbose "Début du script"}
    PROCESS { "Bonjour {0} ! Tu as {1} ans. tu est stagiaire au College {2} dans le departement de {3}" -F $personneNom, $personneAge, $personneCollege, $personneProgramme }       
    END {Write-Verbose "Fin du script"}
}

# Appel de la fonction
Get-Help information_etudiant
stagiaire -verbose
