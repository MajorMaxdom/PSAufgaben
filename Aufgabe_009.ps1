# ============================================================
# AUFGABE 009 - Prozesse und Dienste
# Geschätzter Zeitaufwand: ~50 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 9.1 - Prozesse analysieren
# ----------------------------------------------------------
# a) Zeige die Top-5-Prozesse nach RAM-Verbrauch.
#    Gib aus: Name, PID, RAM in MB (WorkingSet / 1MB, gerundet).
#    Nutze Format-Table -AutoSize für die Ausgabe.
#
# b) Suche nach dem Prozess "notepad":
#    - Wenn nicht gefunden: starte Notepad (Start-Process notepad).
#    - Wenn gefunden: gib PID und Startzeit aus.
#    Nutze Get-Process mit -ErrorAction SilentlyContinue.



# ----------------------------------------------------------
# TEILAUFGABE 9.2 - Dienste verwalten
# ----------------------------------------------------------
# a) Zeige alle Dienste die automatisch starten sollen (StartType
#    = Automatic), aber gerade gestoppt sind (Status = Stopped).
#    Das sind potenzielle Problemfälle.
#    Gib Name und DisplayName aus.
#
# b) Zeige den Status des Druckerspooler-Dienstes ("Spooler").
#    Wenn er läuft: stoppe ihn, warte 2 Sekunden, starte ihn neu.
#    Wenn er gestoppt ist: starte ihn.
#    Nutze try/catch für Berechtigungsfehler.



# ----------------------------------------------------------
# TEILAUFGABE 9.3 - Geplante Aufgaben
# ----------------------------------------------------------
# a) Liste alle aktivierten geplanten Aufgaben auf:
#    Get-ScheduledTask | Where-Object State -eq "Ready"
#    Gib Name und TaskPath der ersten 10 Einträge aus.
#
# b) Erstelle eine geplante Aufgabe:
#    - Name: "AzubiTest_Aufgabe"
#    - Aktion: powershell.exe -Command "Write-Host 'Test'"
#    - Trigger: Täglich um 07:00 Uhr
#    Lösche sie danach sofort wieder mit Unregister-ScheduledTask.
