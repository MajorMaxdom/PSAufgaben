# ============================================================
# AUFGABE 002 - Benutzereingaben und Verzweigungen
# Geschätzter Zeitaufwand: ~35 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 2.1 - Eingabe einlesen und prüfen
# ----------------------------------------------------------
# a) Frage den Benutzer mit Read-Host nach seinem Alter.
#    Konvertiere die Eingabe zu einem Integer.
#    Gib folgende Meldungen aus:
#      - Unter 18:      "Minderjährig - kein Zugriff"
#      - 18 bis 64:     "Erwachsener - Zugriff erlaubt"
#      - 65 und älter:  "Senior - Zugriff erlaubt"
#
# b) Prüfe zusätzlich: Falls die Eingabe keine Zahl ist
#    ([int]::TryParse()), gib eine Fehlermeldung aus.



# ----------------------------------------------------------
# TEILAUFGABE 2.2 - Switch-Anweisung
# ----------------------------------------------------------
# Frage den Benutzer nach einem Wochentag (1-7).
# Nutze switch, um den Namen des Wochentages auszugeben.
# Bei einer ungültigen Eingabe: "Ungültige Eingabe (1-7)"
# Beispiel: Eingabe 3 → Ausgabe "Mittwoch"



# ----------------------------------------------------------
# TEILAUFGABE 2.3 - Taschenrechner
# ----------------------------------------------------------
# Frage den Benutzer nach zwei Zahlen und einer Operation (+, -, *, /).
# Berechne das Ergebnis mit switch.
# Bei Division durch 0: sinnvolle Fehlermeldung ausgeben.
# Gib die Berechnung lesbar aus, z.B.: "10 / 2 = 5"
