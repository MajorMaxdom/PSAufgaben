# ============================================================
#
#   POWERSHELL GRUNDLAGEN FÜR FACHINFORMATIKER
#   Systemintegration - Lernunterlage
#
#   Diese Datei erklärt die Grundlagen von PowerShell und
#   bereitet dich auf die Aufgaben 001-020 vor.
#   Lies jeden Abschnitt sorgfältig durch und führe die
#   Beispiele aktiv im Terminal aus!
#
# ============================================================


# ===========================================================
# ABSCHNITT 1 - WAS IST POWERSHELL?
# ===========================================================
#
# PowerShell ist eine Kommandozeilenumgebung UND eine
# Skriptsprache von Microsoft, die speziell für die
# Systemadministration entwickelt wurde.
#
# Versionen:
#   - Windows PowerShell 5.1: In Windows eingebaut,
#     nur auf Windows. Das ist die Standard-Version.
#   - PowerShell 7+: Open Source, läuft auch auf Linux/Mac.
#     Muss separat installiert werden.
#
# Wo findest du PowerShell?
#   - Start-Menü → "Windows PowerShell"
#   - Rechtsklick auf Start → "Windows PowerShell (Admin)"
#   - Tastenkombination: Win + X → Windows PowerShell
#   - In der Suchleiste: "powershell"
#
# Admin-Rechte prüfen:
#   Der Titel der PowerShell-Konsole zeigt "Administrator"
#   wenn du mit erhöhten Rechten arbeitest.
#   Im Skript prüfen:
#   ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")


# ===========================================================
# ABSCHNITT 2 - POWERSHELL ISE UND VS CODE
# ===========================================================
#
# Du hast mehrere Möglichkeiten, PowerShell-Skripte zu schreiben:
#
# 1. PowerShell ISE (Integrated Scripting Environment)
#    - In Windows eingebaut
#    - Starten: Win+R → "powershell_ise"
#    - Gut für Einsteiger: Syntax-Hervorhebung, Tab-Vervollständigung
#
# 2. Visual Studio Code (VS Code) - EMPFOHLEN
#    - Kostenlos von Microsoft
#    - Erweiterung: "PowerShell" von Microsoft installieren
#    - Viele weitere Funktionen: Debugger, Git, Themes
#    - Tastenkürzel: F5 = Skript ausführen
#                    F8 = Markierten Code ausführen
#                    Ctrl+Shift+P = Befehlspalette
#
# 3. Notepad++ mit PowerShell-Plugin
#    - Einfacher Texteditor mit Syntax-Hervorhebung
#
# WICHTIG: Speichere deine Skripte immer mit der Endung .ps1


# ===========================================================
# ABSCHNITT 3 - DIE EXECUTION POLICY
# ===========================================================
#
# Standardmäßig blockiert Windows das Ausführen von Skripten.
# Das ist eine Sicherheitsfunktion!
#
# Aktuelle Einstellung prüfen:
Get-ExecutionPolicy
#
# Für die Ausbildung: Erlaube lokale Skripte (als Administrator):
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#
# Was bedeutet RemoteSigned?
#   - Lokale Skripte (.ps1): dürfen ausgeführt werden
#   - Skripte aus dem Internet: müssen signiert sein
#
# Andere Werte:
#   Restricted  = gar keine Skripte (Standard auf neuem System)
#   AllSigned   = alle Skripte müssen signiert sein
#   Unrestricted = alles erlaubt (NICHT empfohlen!)
#   Bypass      = alles erlaubt, keine Warnung (nur für Deployment)


# ===========================================================
# ABSCHNITT 4 - GRUNDLEGENDE BEGRIFFE
# ===========================================================
#
# Cmdlet (sprich: "Command-let")
#   PowerShell-Befehle folgen dem Schema: Verb-Substantiv
#   Beispiele:
#     Get-Process    (Prozesse anzeigen)
#     Set-Content    (Dateiinhalt schreiben)
#     New-Item       (Neues Element erstellen)
#     Remove-Item    (Element löschen)
#     Start-Service  (Dienst starten)
#     Stop-Service   (Dienst stoppen)
#
# Wichtige Verben (auf Englisch):
#   Get    = Informationen abrufen
#   Set    = Wert setzen/ändern
#   New    = Neu erstellen
#   Remove = Löschen
#   Start  = Starten
#   Stop   = Stoppen
#   Test   = Prüfen (gibt $true/$false zurück)
#   Invoke = Ausführen/Aufrufen
#   Export = Exportieren
#   Import = Importieren
#
# Tab-Vervollständigung:
#   Tippe Get-Pro und drücke Tab → Get-Process
#   Drücke Tab mehrfach für verschiedene Optionen
#
# Hilfe abrufen:
Get-Help Get-Process         # Hilfe für einen Befehl
Get-Help Get-Process -Full   # Vollständige Hilfe
Get-Help Get-Process -Examples # Nur Beispiele anzeigen
# Update-Help  # Hilfe aktualisieren (einmalig, als Admin)


# ===========================================================
# ABSCHNITT 5 - VARIABLEN
# ===========================================================
#
# Variablen beginnen IMMER mit einem Dollarzeichen $

# Wert zuweisen:
$meinName = "Max Mustermann"
$alter = 21
$groesse = 1.80
$istAdmin = $false

# Ausgeben:
Write-Host $meinName     # Gibt den Wert aus
Write-Host "Mein Name: $meinName"   # In Anführungszeichen: automatische Auswertung
Write-Host 'Mein Name: $meinName'   # Einfache Anführungszeichen: KEIN Auflösen!
# Ausgabe doppelte Anführungszeichen: "Mein Name: Max Mustermann"
# Ausgabe einfache Anführungszeichen: "Mein Name: $meinName"

# Datentypen:
[string]$text    = "Hallo"       # Zeichenkette
[int]$zahl       = 42            # Ganze Zahl
[double]$komma   = 3.14          # Dezimalzahl
[bool]$wahr      = $true         # Wahrheitswert ($true oder $false)
[datetime]$heute = Get-Date      # Datum und Uhrzeit
[array]$liste    = 1, 2, 3       # Array (Liste)

# Typ einer Variable prüfen:
$zahl.GetType().Name    # Gibt "Int32" aus
$text.GetType().Name    # Gibt "String" aus

# Besondere Variablen (immer vorhanden):
$true        # Der Wahrheitswert "wahr"
$false       # Der Wahrheitswert "falsch"
$null        # "Nichts" / kein Wert
$_           # Das aktuelle Pipeline-Objekt (mehr dazu später)
$PSVersionTable.PSVersion    # Aktuelle PowerShell-Version
$env:USERNAME      # Aktueller Benutzername (Umgebungsvariable)
$env:COMPUTERNAME  # Name des Computers
$env:TEMP          # Pfad zum Temp-Ordner


# ===========================================================
# ABSCHNITT 6 - AUSGABE-CMDLETS
# ===========================================================
#
# Es gibt verschiedene Wege, etwas auszugeben:

Write-Host "Hallo Welt"              # Direkt auf dem Bildschirm
Write-Host "Text" -ForegroundColor Green  # Mit Farbe
Write-Host "Text" -BackgroundColor Red    # Mit Hintergrundfarbe

Write-Output "Hallo"  # In die Pipeline - für Weiterverarbeitung
Write-Warning "Warnung!"    # Gelbe Warnmeldung mit "WARNUNG:"
Write-Error "Fehler!"       # Rote Fehlermeldung
Write-Verbose "Details..."  # Nur mit -Verbose sichtbar
Write-Debug "Debug-Info"    # Nur mit -Debug sichtbar

# Verfügbare Farben: Black, Blue, Cyan, DarkBlue, DarkCyan,
# DarkGray, DarkGreen, DarkMagenta, DarkRed, DarkYellow,
# Gray, Green, Magenta, Red, White, Yellow

# Formatierung:
$pi = 3.14159265
"Pi hat den Wert {0:N2}" -f $pi     # Ausgabe: "Pi hat den Wert 3,14"
"Heute ist der {0:dd.MM.yyyy}" -f (Get-Date)  # Datums-Formatierung


# ===========================================================
# ABSCHNITT 7 - DIE PIPELINE
# ===========================================================
#
# Das Pipeline-Symbol | übergibt das Ergebnis eines Befehls
# an den nächsten Befehl. Das ist eines der mächtigsten
# Konzepte in PowerShell!

# Ohne Pipeline: zwei separate Schritte
$prozesse = Get-Process
$sortiert = $prozesse | Sort-Object CPU -Descending

# Mit Pipeline: in einer Zeile
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

# Wichtige Pipeline-Cmdlets:
# Sort-Object      - Sortieren
# Where-Object     - Filtern (wie eine if-Bedingung)
# Select-Object    - Spalten/Felder auswählen
# ForEach-Object   - Schleife über jeden Eintrag
# Format-Table     - Als Tabelle ausgeben
# Format-List      - Als Liste ausgeben
# Out-File         - In Datei schreiben
# Export-Csv       - Als CSV speichern
# ConvertTo-Json   - In JSON konvertieren

# Beispiele:
Get-Process | Where-Object { $_.CPU -gt 10 }        # Prozesse mit CPU > 10
Get-Service | Where-Object { $_.Status -eq "Running" } | Select-Object Name
Get-ChildItem C:\Windows | Sort-Object Length -Descending | Select-Object -First 5

# Where-Object Kurzschreibweise (PS 3+):
Get-Service | Where-Object Status -eq "Running"
# statt: Get-Service | Where-Object { $_.Status -eq "Running" }


# ===========================================================
# ABSCHNITT 8 - OPERATOREN
# ===========================================================
#
# Vergleichsoperatoren (NICHT == wie in anderen Sprachen!):
$a = 5
$a -eq 5      # equal: gleich              (True)
$a -ne 3      # not equal: ungleich        (True)
$a -gt 3      # greater than: größer als   (True)
$a -ge 5      # greater or equal           (True)
$a -lt 10     # less than: kleiner als     (True)
$a -le 5      # less or equal              (True)

# String-Vergleiche (Groß-/Kleinschreibung ignorieren):
"Hallo" -eq "hallo"     # True (Groß/Klein ignoriert)
"Hallo" -ceq "hallo"    # False (c = case-sensitive)
"Hallo" -like "H*"      # True (* = Platzhalter)
"Hallo" -notlike "X*"   # True
"Hallo" -match "H.llo"  # True (regulärer Ausdruck)

# Logische Operatoren:
$true -and $false   # False  (beide müssen wahr sein)
$true -or $false    # True   (mindestens einer muss wahr sein)
-not $true          # False  (Umkehrung)
!$true              # False  (Kurzform von -not)

# Rechenoperatoren:
10 + 3   # 13 (Addition)
10 - 3   # 7  (Subtraktion)
10 * 3   # 30 (Multiplikation)
10 / 3   # 3.333... (Division)
10 % 3   # 1  (Modulo: Rest bei Division)
2 ** 8   # 256 (Potenz, PS 7+)
[math]::Pow(2, 8)  # 256 (Potenz, funktioniert in PS 5.1)


# ===========================================================
# ABSCHNITT 9 - WICHTIGE ALLTAGSBEFEHLE
# ===========================================================
#
# Diese Befehle wirst du täglich brauchen:

# Aktuelles Verzeichnis:
Get-Location    # Zeigt aktuelles Verzeichnis (wie "pwd")
Set-Location C:\Windows   # Verzeichnis wechseln (wie "cd")
Set-Location ..           # Einen Ordner zurück

# Dateien und Ordner:
Get-ChildItem   # Inhalt anzeigen (wie "dir" oder "ls")
Get-ChildItem -Recurse          # Rekursiv alle Unterordner
Get-ChildItem *.txt             # Nur .txt-Dateien
New-Item -ItemType File "test.txt"    # Datei erstellen
New-Item -ItemType Directory "Ordner"  # Ordner erstellen
Remove-Item "test.txt"          # Löschen
Remove-Item "Ordner" -Recurse   # Ordner mit Inhalt löschen
Copy-Item "quelle.txt" "ziel.txt"     # Kopieren
Move-Item "alt.txt" "neu.txt"   # Verschieben/Umbenennen

# Dateiinhalt:
Get-Content "datei.txt"         # Inhalt anzeigen
Set-Content "datei.txt" "Text"  # Inhalt komplett setzen
Add-Content "datei.txt" "Text"  # Text hinzufügen

# Prozesse:
Get-Process           # Alle Prozesse
Get-Process notepad   # Bestimmten Prozess suchen
Stop-Process -Name notepad  # Prozess beenden
Start-Process notepad        # Anwendung starten

# Dienste:
Get-Service           # Alle Dienste
Get-Service "Spooler" # Bestimmten Dienst suchen
Start-Service "Spooler"   # Dienst starten
Stop-Service "Spooler"    # Dienst stoppen

# Netzwerk:
Test-Connection google.com       # Ping
Test-Connection google.com -Count 1 -Quiet  # Ping (nur True/False)
Get-NetIPAddress                 # IP-Konfiguration
ipconfig                         # Klassische Windows-Variante (auch nutzbar!)


# ===========================================================
# ABSCHNITT 10 - SKRIPTE SCHREIBEN UND AUSFÜHREN
# ===========================================================
#
# Ein Skript ist einfach eine Textdatei mit der Endung .ps1
#
# Skript ausführen - mehrere Methoden:
#   1. Im Terminal: .\MeinSkript.ps1
#      Das .\ ist wichtig! Es bedeutet "im aktuellen Ordner"
#   2. Mit vollständigem Pfad: C:\Skripte\MeinSkript.ps1
#   3. In VS Code: F5-Taste
#   4. In der ISE: F5-Taste oder grüner "Run"-Button
#
# WICHTIG: PowerShell sucht NICHT automatisch im aktuellen
# Ordner nach Skripten (Sicherheitsmaßnahme).
# Daher immer .\SkriptName.ps1 mit Punkt-Schrägstrich!
#
# Als Admin ausführen:
#   Rechtsklick auf Skript → "Als Administrator ausführen"
#   ODER in einer Admin-PowerShell: Start-Process powershell.exe -Verb RunAs
#
# Kommentare in Skripten:
# Das hier ist ein einzeiliger Kommentar (beginnt mit #)

<#
    Das ist ein mehrzeiliger Kommentar.
    Alles zwischen den Rauten und spitzen Klammern
    wird von PowerShell ignoriert.
    Nützlich für längere Erklärungen.
#>

# Fehlersuche (Debugging):
# Schritt 1: Set-PSDebug -Trace 1  (zeigt jeden ausgeführten Befehl)
# Schritt 2: In VS Code: F9 = Haltepunkt setzen, F5 = Debugger starten
# Schritt 3: Zwischenergebnisse mit Write-Host ausgeben


# ===========================================================
# ABSCHNITT 11 - ERSTE SCHRITTE IM TERMINAL
# ===========================================================
#
# Führe diese Befehle nacheinander in deiner PowerShell aus,
# um dich mit der Umgebung vertraut zu machen:

# 1. Version prüfen:
$PSVersionTable.PSVersion

# 2. Wer bin ich?
$env:USERNAME
$env:USERDOMAIN
whoami

# 3. Wo bin ich?
Get-Location

# 4. Was ist auf dem Desktop?
Get-ChildItem "$env:USERPROFILE\Desktop"

# 5. Alle laufenden Dienste anzeigen:
Get-Service | Where-Object Status -eq "Running" | Select-Object -First 10

# 6. Top 5 Prozesse nach RAM:
Get-Process | Sort-Object WorkingSet -Descending | Select-Object Name, @{N='RAM_MB';E={[math]::Round($_.WorkingSet/1MB,1)}} -First 5

# 7. Freier Festplattenspeicher:
Get-PSDrive -PSProvider FileSystem

# 8. IP-Adresse anzeigen:
Get-NetIPAddress -AddressFamily IPv4 | Where-Object InterfaceAlias -notlike "*Loopback*"


# ===========================================================
# ABSCHNITT 12 - HÄUFIGE ANFÄNGERFEHLER
# ===========================================================
#
# FEHLER 1: Skript startet nicht (Execution Policy)
# Lösung: Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#
# FEHLER 2: Skript nicht gefunden
# Falsch:  MeinSkript.ps1
# Richtig: .\MeinSkript.ps1
#
# FEHLER 3: Zugriff verweigert
# Lösung: PowerShell als Administrator starten
#
# FEHLER 4: Vergleich mit = statt -eq
# Falsch:  if ($a = 5) { ... }      # Das ist eine ZUWEISUNG!
# Richtig: if ($a -eq 5) { ... }    # Das ist ein VERGLEICH
#
# FEHLER 5: Anführungszeichen-Verwirrung
# Doppelte "  ": Variablen werden ausgewertet ($name wird zu "Max")
# Einfache '  ': Alles als Text, kein Auflösen von Variablen
#
# FEHLER 6: Pfade mit Leerzeichen
# Falsch:  Get-Content C:\Meine Dokumente\datei.txt
# Richtig: Get-Content "C:\Meine Dokumente\datei.txt"
#
# FEHLER 7: Backslash vs. Forward-Slash
# PowerShell akzeptiert beide: C:\Temp UND C:/Temp
# Aber in Strings: \\ für einen echten Backslash
# Besser: Nutze Join-Path für Pfad-Konstruktion:
#   Join-Path $env:TEMP "meinOrdner"  → C:\Users\...\AppData\Local\Temp\meinOrdner


# ===========================================================
# ABSCHNITT 13 - NÜTZLICHE TASTENKÜRZEL IM TERMINAL
# ===========================================================
#
# Tab                 - Befehl/Pfad vervollständigen
# Tab (mehrfach)      - Alle Möglichkeiten durchblättern
# Ctrl+C              - Laufenden Befehl abbrechen
# Pfeil Hoch/Runter   - Befehlsverlauf durchsuchen
# Ctrl+R              - Befehlsverlauf rückwärts durchsuchen
# F7                  - Befehlsverlauf als Liste
# Pos1 / End          - Zum Zeilenanfang/-ende
# Ctrl+Links/Rechts   - Wortweise bewegen
# Ctrl+A              - Alles markieren
# Strg+L oder cls     - Bildschirm leeren (clear)
# Ctrl+Z              - Rückgängig (im Editor)
#
# In VS Code:
# F5                  - Skript ausführen (oder Debugger)
# F8                  - Markierten Code ausführen
# Ctrl+Shift+P        - Befehlspalette
# Ctrl+`              - Terminal öffnen/wechseln
# Ctrl+K Ctrl+C       - Kommentar hinzufügen
# Ctrl+K Ctrl+U       - Kommentar entfernen


# ===========================================================
# ABSCHNITT 14 - JETZT BIST DU DRAN!
# ===========================================================
#
# Bevor du mit Aufgabe 001 beginnst, übe folgende Befehle:
#
# Übung 1: Erstelle eine Variable mit deinem Namen und gib sie aus.
# Übung 2: Erstelle eine Variable mit dem aktuellen Datum.
#          Tipp: Get-Date
# Übung 3: Gib alle laufenden Dienste aus, die mit "W" beginnen.
#          Tipp: Get-Service | Where-Object Name -like "W*"
# Übung 4: Zähle, wie viele Prozesse gerade laufen.
#          Tipp: (Get-Process).Count
# Übung 5: Erstelle einen Ordner auf dem Desktop.
#          Tipp: New-Item -ItemType Directory "$env:USERPROFILE\Desktop\MeinTest"
#
# Wenn du mit diesen Übungen fertig bist und sie verstehst,
# bist du bereit für Aufgabe_001.ps1!
#
# VIEL ERFOLG!
# ===========================================================
