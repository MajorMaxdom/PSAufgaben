# ============================================================
# AUFGABE 013 - Ereignisprotokoll (Event Log)
# Geschätzter Zeitaufwand: ~55 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 13.1 - Ereignisse lesen und filtern
# ----------------------------------------------------------
# a) Lese die letzten 20 Einträge aus dem System-Log:
#    Get-EventLog -LogName System -Newest 20
#    Gib aus: TimeGenerated, EntryType, Source, EventID, Message
#    (Message auf 80 Zeichen kürzen).
#
# b) Filtere mit Get-WinEvent nach Fehlern der letzten 24 Stunden:
#    Get-WinEvent -FilterHashtable @{
#        LogName   = "System"
#        Level     = 2
#        StartTime = (Get-Date).AddHours(-24)
#    }
#    Wie viele Fehler gab es? Welche Quellen (ProviderName) tauchen auf?
#
# c) Suche nach Systemstart-Ereignissen (Event ID 6005):
#    Wann wurde das System zuletzt neu gestartet?



# ----------------------------------------------------------
# TEILAUFGABE 13.2 - Anmeldeprotokolle auswerten
# ----------------------------------------------------------
# Suche im Security-Log nach:
# a) Erfolgreichen Anmeldungen (Event ID 4624):
#    Get-WinEvent -FilterHashtable @{LogName="Security"; Id=4624} -MaxEvents 10
#    Gib Zeitstempel und Benutzername aus.
#    HINWEIS: Benutzername steckt in $event.Properties[5].Value
#
# b) Fehlgeschlagene Anmeldeversuche (Event ID 4625):
#    Wie viele gab es heute? Gibt es auffällige Benutzer?
#
# HINWEIS: Falls der Security-Log nicht lesbar ist (Zugriffsrechte),
# schreibe den Code trotzdem und kommentiere, dass Admin-Rechte nötig sind.



# ----------------------------------------------------------
# TEILAUFGABE 13.3 - Eigene Ereignisse schreiben
# ----------------------------------------------------------
# a) Erstelle eine eigene Ereignisquelle und schreibe je einen
#    INFO-, WARN- und ERROR-Eintrag:
#    New-EventLog -LogName Application -Source "AzubiTest"
#    Write-EventLog -LogName Application -Source "AzubiTest" `
#        -EventId 1000 -EntryType Information -Message "Test OK"
#
# b) Lese die selbst geschriebenen Einträge sofort wieder aus.
#    Zeige alle Einträge mit Source "AzubiTest".
#
# c) Räume auf: Remove-EventLog -Source "AzubiTest"
