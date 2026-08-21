# ============================================================
# AUFGABE 011 - Lokale Benutzer- und Gruppenverwaltung
# Geschätzter Zeitaufwand: ~55 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 11.1 - Benutzer und Gruppen anzeigen
# ----------------------------------------------------------
# a) Liste alle lokalen Benutzer auf (Get-LocalUser).
#    Gib aus: Name, Enabled, LastLogon, PasswordLastSet.
#    Filtere: Welche Konten sind deaktiviert?
#
# b) Zeige alle Mitglieder der lokalen Administratoren-Gruppe:
#    Get-LocalGroupMember -Group "Administrators"
#
# c) Liste alle lokalen Gruppen auf (Get-LocalGroup) und
#    gib Name und Description aus.



# ----------------------------------------------------------
# TEILAUFGABE 11.2 - Benutzer und Gruppen erstellen
# ----------------------------------------------------------
# a) Erstelle einen Testbenutzer:
#    - Name: "AzubiTest_User1"
#    - Passwort: "P@ssw0rd123!" (als SecureString)
#    - Beschreibung: "Testbenutzer für PowerShell-Übung"
#    - Konto aktiviert
#
# b) Erstelle eine Testgruppe:
#    - Name: "AzubiTest_Gruppe"
#    - Beschreibung: "Testgruppe für PowerShell-Übung"
#
# c) Füge den Testbenutzer der Testgruppe hinzu
#    (Add-LocalGroupMember).
#    Verifiziere mit Get-LocalGroupMember.



# ----------------------------------------------------------
# TEILAUFGABE 11.3 - Aufräumen und Protokollieren
# ----------------------------------------------------------
# Schreibe ein Cleanup-Skript das:
# a) Den Testbenutzer "AzubiTest_User1" und die Gruppe
#    "AzubiTest_Gruppe" wieder löscht.
# b) Vor dem Löschen eine Bestätigung einfordert (Read-Host:
#    "Wirklich löschen? (j/n)").
# c) Jeden Schritt mit Zeitstempel auf der Konsole ausgibt.
# d) Fehler (z.B. Objekt existiert nicht) sauber abfängt.
