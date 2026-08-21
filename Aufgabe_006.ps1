# ============================================================
# AUFGABE 006 - Dateisystem
# Geschätzter Zeitaufwand: ~50 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 6.1 - Ordner und Dateien anlegen
# ----------------------------------------------------------
# a) Lege folgende Verzeichnisstruktur unter C:\Temp\ITTest\ an:
#      C:\Temp\ITTest\Skripte\
#      C:\Temp\ITTest\Logs\
#      C:\Temp\ITTest\Konfiguration\
#    Prüfe mit Test-Path vor dem Anlegen, ob der Ordner schon existiert.
#
# b) Erstelle in C:\Temp\ITTest\Konfiguration\ eine Datei
#    "server.conf" mit Set-Content und diesem Inhalt:
#      Hostname=SRV-DC01
#      IP=192.168.1.10
#      DNS=192.168.1.10
#      Gateway=192.168.1.1
#
# c) Füge mit Add-Content eine weitere Zeile hinzu:
#      Backup=täglich 02:00



# ----------------------------------------------------------
# TEILAUFGABE 6.2 - Dateien lesen und verarbeiten
# ----------------------------------------------------------
# a) Lese die server.conf zeilenweise (Get-Content) und parse
#    sie in eine Hashtable: Schlüssel = links vom "=",
#    Wert = rechts vom "=". Leere Zeilen überspringen.
#    Gib die Hashtable aus.
#
# b) Suche mit Select-String in der Datei nach "IP".
#    Gib Zeilennummer und Inhalt des Treffers aus.



# ----------------------------------------------------------
# TEILAUFGABE 6.3 - Dateien kopieren und aufräumen
# ----------------------------------------------------------
# a) Erstelle 5 Test-Dateien in C:\Temp\ITTest\Logs\:
#    log_001.log bis log_005.log (je mit beliebigem Inhalt).
#
# b) Kopiere alle .log-Dateien in einen neuen Unterordner
#    C:\Temp\ITTest\Logs\Archiv\. Benenne sie dabei um:
#    Füge das Präfix "archiv_" vor den Dateinamen.
#
# c) Lösche die Original-.log-Dateien aus dem Logs-Ordner
#    (nicht aus Archiv). Gib am Ende die Struktur mit
#    Get-ChildItem -Recurse aus.
