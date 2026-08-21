# ============================================================
# AUFGABE 019 - System-Health-Check und HTML-Report
# Geschätzter Zeitaufwand: ~70 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 19.1 - Health-Check-Funktion
# ----------------------------------------------------------
# Schreibe eine Funktion "Get-HealthCheck" die folgendes prüft
# und je ein PSCustomObject pro Prüfpunkt zurückgibt:
#
#   Prüfpunkt          Methode                  WARN-Schwelle
#   CPU-Auslastung     Win32_Processor.Load%     > 80%
#   RAM-Auslastung     Win32_OperatingSystem      > 85%
#   Disk C: frei       Win32_LogicalDisk          < 15% frei
#   Dienste (Autom.)   Get-Service                gestoppt obwohl Autom.
#   Zert.-Ablauf       Cert:\LocalMachine\My      < 30 Tage
#
# Jedes Objekt hat: Prüfpunkt, Status (OK/WARN/ERROR), Wert, Meldung
#
# Gib die Ergebnisse farbig auf der Konsole aus:
#   OK = Grün, WARN = Gelb, ERROR = Rot



# ----------------------------------------------------------
# TEILAUFGABE 19.2 - HTML-Report generieren
# ----------------------------------------------------------
# Nimm die Ergebnisse aus Get-HealthCheck und erstelle
# einen HTML-Report mit ConvertTo-Html:
#
# a) Erstelle CSS-Styling (-Head Parameter):
#    - Tabelle mit abwechselnden Zeilenfarben
#    - Zellen mit class="OK" = grüner Hintergrund
#    - Zellen mit class="WARN" = gelber Hintergrund
#    - Zellen mit class="ERROR" = roter Hintergrund
#
# b) Nutze -PreContent für eine Überschrift:
#    "<h1>System Health Check - $env:COMPUTERNAME</h1>
#     <p>Erstellt: $(Get-Date)</p>"
#
# c) Speichere den Report als C:\Temp\HealthCheck.html
# d) Öffne ihn automatisch im Browser:
#    Start-Process "C:\Temp\HealthCheck.html"



# ----------------------------------------------------------
# TEILAUFGABE 19.3 - Geplante Ausführung einrichten
# ----------------------------------------------------------
# Speichere das Health-Check-Skript als
# C:\Temp\Invoke-HealthCheck.ps1 und richte einen
# geplanten Task ein der es täglich ausführt:
#
# a) Aktion: powershell.exe -NonInteractive -File C:\Temp\Invoke-HealthCheck.ps1
# b) Trigger: Täglich um 07:00 Uhr
# c) Ausführen als: aktueller Benutzer (oder SYSTEM)
# d) Gib nach dem Anlegen die Task-Details aus.
# e) Lösche den Task am Ende wieder (Unregister-ScheduledTask).
