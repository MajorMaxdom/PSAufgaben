# ============================================================
# AUFGABE 004 - Arrays und Hashtables
# Geschätzter Zeitaufwand: ~45 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 4.1 - Arrays filtern und auswerten
# ----------------------------------------------------------
# Gegeben:
$Temperaturen = @(23, 17, 31, 28, 19, 25, 14, 33, 27, 21, 18, 29)

# a) Sortiere das Array aufsteigend und gib es aus.
# b) Berechne Minimum, Maximum und Durchschnitt.
#    Nutze: $Temperaturen | Measure-Object -Min -Max -Average
# c) Filtere mit Where-Object alle Temperaturen über 25 Grad
#    und gib sie aus.



# ----------------------------------------------------------
# TEILAUFGABE 4.2 - Array von Hashtables
# ----------------------------------------------------------
# Gegeben:
$Mitarbeiter = @(
    @{ Name = "Anna Müller";   Abteilung = "IT";       Gehalt = 3800 },
    @{ Name = "Ben Schmidt";   Abteilung = "Vertrieb"; Gehalt = 3200 },
    @{ Name = "Clara Weber";   Abteilung = "IT";       Gehalt = 4100 },
    @{ Name = "David Fischer"; Abteilung = "HR";       Gehalt = 3500 }
)

# a) Gib alle Mitarbeiter der IT-Abteilung aus.
# b) Wer verdient mehr als 3500 Euro?
# c) Berechne das Durchschnittsgehalt aller Mitarbeiter.



# ----------------------------------------------------------
# TEILAUFGABE 4.3 - Hashtable für Konfiguration
# ----------------------------------------------------------
# a) Erstelle eine Hashtable $Netzwerk mit mindestens 5 Einträgen:
#    IP-Adresse, Subnetzmaske, Gateway, DNS1, Hostname.
#
# b) Gib alle Key-Value-Paare in einer foreach-Schleife aus.
#    Format: "Hostname    = SRV-DC01"
#
# c) Prüfe mit .ContainsKey(), ob der Schlüssel "DNS2" vorhanden ist.
#    Füge ihn hinzu, falls nicht.
