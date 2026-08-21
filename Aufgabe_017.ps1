# ============================================================
# AUFGABE 017 - Active Directory
# Geschätzter Zeitaufwand: ~65 Minuten
#
# VORAUSSETZUNG: VM muss in einer AD-Domäne sein ODER RSAT
# muss installiert sein:
#   Add-WindowsCapability -Online -Name "Rsat.ActiveDirectory*"
# Falls kein AD vorhanden: Skripte schreiben und kommentieren,
# dann in der Schulungs-AD testen.
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 17.1 - AD-Umgebung erkunden
# ----------------------------------------------------------
# a) Importiere das Modul und zeige Domäneninformationen:
#    Import-Module ActiveDirectory
#    Get-ADDomain | Select DNSRoot, NetBIOSName, DomainMode,
#                          PDCEmulator, RIDMaster, InfrastructureMaster
#
# b) Zeige die OU-Struktur:
#    Get-ADOrganizationalUnit -Filter * |
#        Select Name, DistinguishedName |
#        Sort-Object DistinguishedName
#
# c) Zeige alle Domain-Controller:
#    Get-ADDomainController -Filter *
#    Gib Name, OS und Standort aus.



# ----------------------------------------------------------
# TEILAUFGABE 17.2 - Benutzer verwalten
# ----------------------------------------------------------
# HINWEIS: Erstelle alle Testobjekte in einer Test-OU!
#   New-ADOrganizationalUnit -Name "AzubiTest" -Path "DC=firma,DC=local"
#
# a) Erstelle zwei Testbenutzer in der Test-OU.
#    Pflichtfelder: Name, SamAccountName, UserPrincipalName,
#    AccountPassword (SecureString), Enabled $true, Path zur OU.
#
# b) Setze für einen Benutzer: Abteilung, Telefon, Beschreibung
#    (Set-ADUser -Identity ... -Department ... )
#
# c) Suche alle Benutzer die sich 30+ Tage nicht eingeloggt haben:
#    $deadline = (Get-Date).AddDays(-30)
#    Get-ADUser -Filter {LastLogonDate -lt $deadline -and Enabled -eq $true} `
#        -Properties LastLogonDate



# ----------------------------------------------------------
# TEILAUFGABE 17.3 - Gruppen und Cleanup
# ----------------------------------------------------------
# a) Erstelle eine Testgruppe (Security, Global) in der Test-OU.
#    Füge beide Testbenutzer hinzu (Add-ADGroupMember).
#    Verifiziere mit Get-ADGroupMember.
#
# b) Erkläre das AGDLP-Prinzip als Kommentar:
#    A = Account, G = Global Group, DL = Domain Local Group, P = Permission
#    Warum ist diese Struktur empfohlen?
#
# c) Cleanup - in dieser Reihenfolge:
#    1. Benutzer aus Gruppe entfernen
#    2. Gruppe löschen
#    3. Benutzer löschen
#    4. Test-OU löschen (mit -Recursive)
