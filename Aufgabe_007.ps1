# ============================================================
# AUFGABE 007 - Fehlerbehandlung
# Geschätzter Zeitaufwand: ~45 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 7.1 - try/catch/finally
# ----------------------------------------------------------
# Schreibe try/catch-Blöcke für folgende Fehlerquellen:
#
# a) Zugriff auf eine nicht existierende Datei:
#    Get-Content "C:\NichtVorhanden\datei.txt"
#    Gib im catch-Block aus: Fehlermeldung und Fehlertyp.
#    ($_.Exception.Message und $_.Exception.GetType().Name)
#
# b) Konvertierung des Strings "abc" in einen Integer.
#    Im catch: "Ungültige Eingabe: 'abc' ist keine Zahl."
#
# c) Nutze finally in einem der Blöcke, um eine Meldung
#    "Fertig - catch oder nicht" auszugeben.



# ----------------------------------------------------------
# TEILAUFGABE 7.2 - Robuste Dienst-Funktion
# ----------------------------------------------------------
# Schreibe eine Funktion "Get-DienstStatus" die:
#   - Einen Dienstnamen als Parameter nimmt
#   - Den Status ausgibt (Running/Stopped/...)
#   - Bei nicht vorhandenem Dienst eine freundliche Meldung zeigt
#     (kein roter Fehler!)
#   - Andere Fehler mit throw weitergibt
#
# Teste mit: "Spooler" (existiert), "NichtVorhanden" (existiert nicht)



# ----------------------------------------------------------
# TEILAUFGABE 7.3 - Logging-Funktion
# ----------------------------------------------------------
# Schreibe eine Funktion "Write-Log" die:
#   - Parameter: -Message [string], -Level [string] ("INFO"/"WARN"/"ERROR")
#   - Den Eintrag farbig auf der Konsole ausgibt:
#     INFO=Grün, WARN=Gelb, ERROR=Rot
#   - Gleichzeitig in C:\Temp\skript.log schreibt:
#     Format: "2026-06-01 10:00:00 [INFO] Nachricht"
#
# Rufe Write-Log mit je einer INFO-, WARN- und ERROR-Meldung auf.
