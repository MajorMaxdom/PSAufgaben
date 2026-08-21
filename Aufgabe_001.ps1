# ============================================================
# AUFGABE 001 - Variablen und Ausgabe
# Geschätzter Zeitaufwand: ~30 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 1.1 - Variablen erstellen und ausgeben
# ----------------------------------------------------------
# Erstelle folgende Variablen und gib sie mit Write-Host aus:
#   - Deinen Vornamen (String)
#   - Dein Alter (Integer)
#   - Ob du heute gearbeitet hast (Boolean: $true / $false)
# Formatiere die Ausgabe so: "Name: Max | Alter: 21 | Gearbeitet: True"



# ----------------------------------------------------------
# TEILAUFGABE 1.2 - Datentypen prüfen und konvertieren
# ----------------------------------------------------------
# a) Erstelle eine Variable $Zahl mit dem String-Wert "42".
#    Gib den Datentyp aus (.GetType().Name).
#    Konvertiere sie zu einem Integer ([int]) und addiere 8 dazu.
#    Gib das Ergebnis aus.
#
# b) Versuche, den String "abc" zu einem Integer zu konvertieren.
#    Fange den Fehler mit try/catch ab und gib eine
#    verständliche Fehlermeldung aus.



# ----------------------------------------------------------
# TEILAUFGABE 1.3 - String-Operationen
# ----------------------------------------------------------
# Gegeben:
$Satz = "  PowerShell ist ein Automatisierungs-Tool!  "

# a) Entferne führende und abschließende Leerzeichen (.Trim()).
# b) Wandle den String in Großbuchstaben um (.ToUpper()).
# c) Prüfe mit -match, ob das Wort "PowerShell" enthalten ist.
#    Gib "Gefunden" oder "Nicht gefunden" aus.
# d) Gib aus, wie viele Zeichen der String nach Trim() hat (.Length).
