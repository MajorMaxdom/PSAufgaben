# ============================================================
# AUFGABE 005 - Funktionen
# Geschätzter Zeitaufwand: ~45 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 5.1 - Einfache Funktionen
# ----------------------------------------------------------
# a) Schreibe eine Funktion "Convert-Celsius" die einen
#    Temperaturwert und eine Zieleinheit ("Fahrenheit" oder "Kelvin")
#    als Parameter nimmt und den konvertierten Wert zurückgibt.
#    Rufe die Funktion mit drei verschiedenen Werten auf.
#
# b) Schreibe eine Funktion "Test-GeradeZahl" die $true zurückgibt,
#    wenn eine Zahl gerade ist, sonst $false.
#    Nutze sie in einer Pipeline:
#    1..10 | Where-Object { Test-GeradeZahl $_ }



# ----------------------------------------------------------
# TEILAUFGABE 5.2 - Funktion mit mehreren Parametern
# ----------------------------------------------------------
# Schreibe eine Funktion "New-Benutzername" mit:
#   -Vorname  [string] (Pflichtfeld)
#   -Nachname [string] (Pflichtfeld)
#
# Die Funktion soll:
#   - Einen Benutzernamen generieren: erster Buchstabe des
#     Vornamens + Nachname, alles Kleinbuchstaben
#     Beispiel: "Max" + "Mustermann" → "mmustermann"
#   - Den Benutzernamen zurückgeben
#
# Rufe die Funktion mit 3 verschiedenen Namen auf und gib die
# Ergebnisse aus.



# ----------------------------------------------------------
# TEILAUFGABE 5.3 - Parametervalidierung
# ----------------------------------------------------------
# Erweitere die Funktion "New-Benutzername" um:
#   -Abteilung [string] mit ValidateSet("IT", "HR", "Vertrieb")
#
# Die Funktion soll ein PSCustomObject zurückgeben mit:
#   Benutzername, Vorname, Nachname, Abteilung, Email
# Email = benutzername@firma.local
#
# Teste: Was passiert, wenn du eine ungültige Abteilung eingibst?
