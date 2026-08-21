# ============================================================
# AUFGABE 008 - CSV und JSON
# Geschätzter Zeitaufwand: ~50 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 8.1 - CSV exportieren und importieren
# ----------------------------------------------------------
# Gegeben:
$Geraete = @(
    [PSCustomObject]@{ Name="SRV-DC01";  IP="192.168.1.10"; Typ="Server"; RAM_GB=32 },
    [PSCustomObject]@{ Name="WS-001";    IP="192.168.1.101"; Typ="Client"; RAM_GB=16 },
    [PSCustomObject]@{ Name="WS-002";    IP="192.168.1.102"; Typ="Client"; RAM_GB=8  },
    [PSCustomObject]@{ Name="NB-CEO";    IP="192.168.1.150"; Typ="Laptop"; RAM_GB=32 },
    [PSCustomObject]@{ Name="SRV-FILE01";IP="192.168.1.11";  Typ="Server"; RAM_GB=16 }
)

# a) Exportiere $Geraete als CSV nach C:\Temp\Geraete.csv.
#    Nutze Semikolon als Trennzeichen (-Delimiter ";").
#
# b) Importiere die CSV sofort wieder und gib sie aus.
#    Filtere: Nur Einträge mit mehr als 16 GB RAM.
#    HINWEIS: Nach dem Import sind alle Werte Strings!
#    Konvertiere RAM_GB mit [int] vor dem Vergleich.



# ----------------------------------------------------------
# TEILAUFGABE 8.2 - JSON schreiben und lesen
# ----------------------------------------------------------
# a) Konvertiere $Geraete zu JSON (ConvertTo-Json) und
#    speichere es in C:\Temp\Geraete.json.
#
# b) Lese die JSON-Datei wieder ein (Get-Content | ConvertFrom-Json).
#    Greife auf den Namen des ersten Geräts zu.
#    Gib alle Server (Typ = "Server") aus.



# ----------------------------------------------------------
# TEILAUFGABE 8.3 - Konfigurationsdatei aus JSON lesen
# ----------------------------------------------------------
# Erstelle eine JSON-Konfigurationsdatei C:\Temp\config.json:
# {
#   "Hostname": "SRV-TEST01",
#   "IP": "192.168.1.50",
#   "Dienste": ["DNS", "DHCP", "FileSharing"]
# }
#
# Lese die Konfiguration ein und gib aus:
#   - Den Hostnamen
#   - Die IP-Adresse
#   - Alle Dienste (in einer foreach-Schleife, nummeriert)
