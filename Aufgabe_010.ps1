# ============================================================
# AUFGABE 010 - Netzwerk-Diagnose
# Geschätzter Zeitaufwand: ~55 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 10.1 - Netzwerkkonfiguration auslesen
# ----------------------------------------------------------
# a) Zeige alle aktiven Netzwerk-Adapter (Status = "Up"):
#    Get-NetAdapter | Where-Object Status -eq "Up"
#    Gib aus: Name, MacAddress, LinkSpeed.
#
# b) Zeige die IPv4-Konfiguration aller aktiven Adapter:
#    Get-NetIPConfiguration | Where-Object { $_.IPv4Address }
#    Gib für jeden Adapter aus:
#    InterfaceAlias, IPv4-Adresse, Default-Gateway, DNS-Server.



# ----------------------------------------------------------
# TEILAUFGABE 10.2 - Verbindungen testen
# ----------------------------------------------------------
# a) Teste folgende Ziele mit Test-Connection -Count 2:
#    127.0.0.1, 8.8.8.8, google.com
#    Gib für jeden: Ziel, Erreichbar (Ja/Nein), Latenz in ms.
#    Nutze -ErrorAction SilentlyContinue für nicht erreichbare Ziele.
#
# b) Schreibe eine Funktion "Test-PortOffen" die prüft, ob
#    ein TCP-Port auf einem Host erreichbar ist:
#      - Parameter: -Host, -Port
#      - Nutze [System.Net.Sockets.TcpClient]
#      - Gibt $true oder $false zurück
#    Teste: 8.8.8.8:53 (DNS) und localhost:135



# ----------------------------------------------------------
# TEILAUFGABE 10.3 - Aktive Verbindungen
# ----------------------------------------------------------
# a) Zeige alle etablierten TCP-Verbindungen:
#    Get-NetTCPConnection -State Established
#    Gib aus: LocalPort, RemoteAddress, RemotePort, OwningProcess (PID).
#
# b) Verknüpfe die Verbindungen mit Prozessnamen:
#    Nutze Get-Process für die PIDs aus OwningProcess.
#    Ausgabe: Prozessname, PID, RemoteAddress, RemotePort.
