# ============================================================
# AUFGABE 018 - Backup-Automatisierung
# Geschätzter Zeitaufwand: ~65 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 18.1 - ZIP-Archiv erstellen und verifizieren
# ----------------------------------------------------------
# a) Erstelle eine Testverzeichnisstruktur:
#    C:\Temp\Backup_Quelle\ mit 5 Testdateien (beliebiger Inhalt).
#
# b) Komprimiere das Verzeichnis als ZIP mit Zeitstempel:
#    $datum = Get-Date -Format "yyyy-MM-dd_HHmm"
#    Compress-Archive -Path "C:\Temp\Backup_Quelle\*" `
#        -DestinationPath "C:\Temp\Backups\Backup_$datum.zip"
#
# c) Erstelle eine SHA256-Prüfsumme des Archivs:
#    Get-FileHash "C:\Temp\Backups\Backup_$datum.zip" -Algorithm SHA256
#    Speichere die Prüfsumme in eine Textdatei neben dem Archiv.
#
# d) Entpacke das Archiv in C:\Temp\Backup_Test\ und prüfe,
#    ob alle 5 Dateien vorhanden sind.



# ----------------------------------------------------------
# TEILAUFGABE 18.2 - Backup-Funktion mit Protokoll
# ----------------------------------------------------------
# Schreibe eine Funktion "Invoke-Backup" die:
#   - Parameter: -Quelle [string], -Ziel [string]
#   - Die Quelle als ZIP mit Zeitstempel im Zielordner sichert
#   - Prüft ob der Zielordner existiert (sonst anlegen)
#   - Start, Ende und Dauer protokolliert
#   - Ergebnis (Pfad, Größe in MB, Dauer) als PSCustomObject zurückgibt
#
# Rufe die Funktion auf und gib das Ergebnis formatiert aus.



# ----------------------------------------------------------
# TEILAUFGABE 18.3 - Backup-Rotation
# ----------------------------------------------------------
# Schreibe eine Funktion "Invoke-BackupRotation" die:
#   - Parameter: -Ordner [string], -MaxAnzahl [int]
#   - Alle ZIP-Dateien im Ordner nach Datum sortiert
#   - Alte Backups löscht, sobald mehr als MaxAnzahl vorhanden sind
#   - Ausgibt: "Behalten: X, Gelöscht: Y"
#
# Teste indem du 8 leere ZIP-Dateien (New-Item) erstellst
# und die Rotation mit MaxAnzahl = 5 ausführst.
