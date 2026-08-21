# ============================================================
# AUFGABE 020 - Abschlussprojekt: Admin-Toolbox
# Geschätzter Zeitaufwand: ~90 Minuten
#
# Kombiniere alles Gelernte zu einem einzigen, lauffähigen
# Skript mit interaktivem Menü. Das ist dein Vorzeigeprojekt!
# ============================================================

# ----------------------------------------------------------
# AUFGABE - Admin-Toolbox mit interaktivem Menü
# ----------------------------------------------------------
# Erstelle ein Skript "Admin-Toolbox.ps1" mit folgendem Aufbau:
#
# 1. ADMIN-RECHTE PRÜFEN
#    Beim Start: Prüfe ob das Skript als Admin läuft.
#    Falls nicht: Fehlermeldung und Skript beenden.
#
# 2. INTERAKTIVES MENÜ (do-while-Schleife)
#    Zeige nach jeder Aktion das Menü erneut an.
#
#    ╔══════════════════════════════╗
#    ║     IT-Admin Toolbox         ║
#    ╠══════════════════════════════╣
#    ║  1  System-Übersicht         ║
#    ║  2  Netzwerk-Test            ║
#    ║  3  Dienst prüfen/starten    ║
#    ║  4  Backup erstellen         ║
#    ║  5  Log-Datei anzeigen       ║
#    ║  0  Beenden                  ║
#    ╚══════════════════════════════╝
#
# 3. MENÜPUNKTE IMPLEMENTIEREN:
#
#    Menüpunkt 1 - System-Übersicht:
#      Rufe den Systembericht aus Aufgabe 014 auf.
#      (Computername, OS, CPU, RAM, Festplatten)
#
#    Menüpunkt 2 - Netzwerk-Test:
#      Frage den Benutzer nach einem Hostnamen/IP.
#      Teste Erreichbarkeit (Test-Connection -Count 2).
#      Versuche DNS-Auflösung (Resolve-DnsName).
#      Teste Port 80 und 443 (Funktion aus Aufgabe 010).
#      Gib alle Ergebnisse aus.
#
#    Menüpunkt 3 - Dienst prüfen/starten:
#      Frage den Benutzer nach einem Dienstnamen.
#      Zeige Status (Get-Service).
#      Frage ob der Dienst gestartet/gestoppt werden soll.
#      Führe die Aktion aus (try/catch für Fehler).
#
#    Menüpunkt 4 - Backup erstellen:
#      Frage nach Quell- und Zielordner.
#      Erstelle ein ZIP mit Zeitstempel (Aufgabe 018).
#      Führe danach die Backup-Rotation durch (max. 5 Backups).
#      Gib Ergebnis (Dateipfad, Größe) aus.
#
#    Menüpunkt 5 - Log-Datei anzeigen:
#      Zeige die letzten 20 Zeilen der Toolbox-Logdatei.
#      (Erstelle C:\Temp\Admin-Toolbox.log wenn nicht vorhanden)
#
# 4. LOGGING
#    Jede Aktion (Menüpunkt, Zeitpunkt, Ergebnis) wird in
#    C:\Temp\Admin-Toolbox.log protokolliert.
#    Nutze die Write-Log Funktion aus Aufgabe 007.
#
# 5. FEHLERBEHANDLUNG
#    Jeder Menüpunkt ist in einen try/catch-Block eingebettet.
#    Fehler werden protokolliert aber stürzen das Skript nicht ab.
#
# ----------------------------------------------------------
# ABSCHLUSS-CHECKLISTE
# ----------------------------------------------------------
# Bevor du fertig bist, prüfe:
#   [ ] Skript läuft ohne Fehler von Anfang bis Ende
#   [ ] Alle 5 Menüpunkte funktionieren
#   [ ] Admin-Prüfung funktioniert
#   [ ] Logging schreibt in die Datei
#   [ ] Fehler werden abgefangen (teste mit ungültigen Eingaben)
#   [ ] Menü erscheint nach jeder Aktion erneut
#   [ ] "0 - Beenden" beendet das Skript sauber
