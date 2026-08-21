# ============================================================
# AUFGABE 003 - Schleifen
# Geschätzter Zeitaufwand: ~40 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 3.1 - for-Schleife
# ----------------------------------------------------------
# a) Gib mit einer for-Schleife die Zahlen 1 bis 15 aus.
#    Zahlen die durch 3 teilbar sind: "X - Durch 3 teilbar"
#    Alle anderen: nur die Zahl.
#
# b) Berechne die Summe aller Zahlen von 1 bis 100 und gib
#    das Ergebnis aus.



# ----------------------------------------------------------
# TEILAUFGABE 3.2 - foreach-Schleife
# ----------------------------------------------------------
# Gegeben:
$Computer = @("SRV-DC01", "SRV-FILE01", "WS-001", "WS-002", "NB-CEO")

# Iteriere über das Array und gib für jeden Namen aus:
#   - Den Namen in Großbuchstaben
#   - Ob es ein Server ist (Name beginnt mit "SRV"): Ja/Nein
# Nutze danach die Pipeline: Filtere mit Where-Object alle
# Workstations (Name beginnt mit "WS") und gib sie aus.



# ----------------------------------------------------------
# TEILAUFGABE 3.3 - Zahlen-Ratespiel mit while
# ----------------------------------------------------------
# Das Skript "denkt" sich eine Zufallszahl zwischen 1 und 20:
#   $Geheimzahl = Get-Random -Minimum 1 -Maximum 21
# Der Benutzer rät so lange, bis er die Zahl errät.
# Nach jedem Versuch: "Zu hoch", "Zu niedrig" oder "Richtig!"
# Gib am Ende die Anzahl der Versuche aus.
