# PowerShell Lernaufgaben

**Dieses ganze Repo wurde KI-Gestützt erstellt.**

Übungsreihe für angehende Fachinformatiker Systemintegration.  
20 Aufgaben mit steigendem Schwierigkeitsgrad, ausgelegt auf **zwei Arbeitstage**.

---

## Voraussetzungen

| Anforderung | Details |
|-------------|---------|
| Betriebssystem | Windows 10/11 oder Windows Server 2019/2022 |
| PowerShell | Version 5.1 (eingebaut) oder PowerShell 7+ |
| Rechte | Lokale Administratorrechte auf der VM |
| Editor | VS Code mit der Erweiterung „PowerShell" von Microsoft (empfohlen) |

### Einmalige Einrichtung

Öffne PowerShell **als Administrator** und führe folgenden Befehl aus:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Das erlaubt das Ausführen lokaler Skriptdateien. Ohne diese Einstellung blockiert Windows alle `.ps1`-Dateien.

---

## Einstieg

**Starte hier:** Lies zuerst die Grundlagendatei komplett durch und führe die Beispiele aktiv im Terminal aus:

```
00_Grundlagen_und_Einstieg.ps1
```

Danach arbeitest du die Aufgaben der Reihe nach durch:

```
Aufgabe_001.ps1  →  Aufgabe_002.ps1  →  ...  →  Aufgabe_020.ps1
```

### Skript ausführen

```powershell
# Im richtigen Ordner:
cd C:\Pfad\zu\powershell_aufgaben

# Skript starten:
.\Aufgabe_001.ps1
```

---

## Aufgabenübersicht

| Nr. | Thema | Schwierigkeit | ca. Zeit |
|-----|-------|:---:|---:|
| 001 | Variablen, Datentypen und Ausgabe | ⭐ | 30 min |
| 002 | Benutzereingaben und Verzweigungen | ⭐ | 35 min |
| 003 | Schleifen (for, foreach, while) | ⭐ | 40 min |
| 004 | Arrays und Hashtables | ⭐⭐ | 45 min |
| 005 | Funktionen | ⭐⭐ | 45 min |
| 006 | Dateisystem-Verwaltung | ⭐⭐ | 50 min |
| 007 | Fehlerbehandlung (try/catch) | ⭐⭐ | 45 min |
| 008 | CSV und JSON | ⭐⭐ | 50 min |
| 009 | Prozesse und Dienste | ⭐⭐ | 50 min |
| 010 | Netzwerk-Diagnose | ⭐⭐⭐ | 55 min |
| 011 | Lokale Benutzerverwaltung | ⭐⭐⭐ | 55 min |
| 012 | Windows Registry | ⭐⭐⭐ | 50 min |
| 013 | Ereignisprotokoll (Event Log) | ⭐⭐⭐ | 55 min |
| 014 | WMI/CIM Systemabfragen | ⭐⭐⭐ | 55 min |
| 015 | Skript-Parameter und Module | ⭐⭐⭐ | 60 min |
| 016 | PowerShell Remoting | ⭐⭐⭐⭐ | 60 min |
| 017 | Active Directory | ⭐⭐⭐⭐ | 65 min |
| 018 | Backup-Automatisierung | ⭐⭐⭐⭐ | 65 min |
| 019 | Health-Check und HTML-Report | ⭐⭐⭐⭐ | 70 min |
| 020 | **Abschlussprojekt: Admin-Toolbox** | ⭐⭐⭐⭐⭐ | 90 min |

**Gesamt: ~16 Stunden (2 Arbeitstage)**

---

## Hinweise zum Arbeiten

### Wie du die Aufgaben bearbeiten sollst

Jede Aufgabe enthält **Code-Kommentare als Aufgabenbeschreibung** — darunter kommt dein Code.  
Lösche die Kommentare nicht. Schreibe deinen Code direkt unter den jeweiligen Kommentarblock.

Beispiel:
```powershell
# Gib deinen Namen aus:

$Name = "Max"          # ← hier startet dein Code
Write-Host $Name
```

### Hilfe in PowerShell

```powershell
Get-Help Get-Process           # Hilfe zu einem Befehl
Get-Help Get-Process -Examples # Nur Beispiele anzeigen
Get-Help Get-Process -Full     # Alle Details
```

### Fehler lesen

PowerShell-Fehlermeldungen sind auf Englisch und sehen einschüchternd aus — sind aber meistens hilfreich:

```
Get-Content : Cannot find path 'C:\test.txt'
```
→ Die Datei `C:\test.txt` existiert nicht.

### Häufige Stolperfallen

| Fehler | Ursache | Lösung |
|--------|---------|--------|
| `.\Aufgabe_001.ps1 is not digitally signed` | Execution Policy | `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser` |
| `Zugriff verweigert` | Fehlende Admin-Rechte | PowerShell als Administrator öffnen |
| Vergleich funktioniert nicht | `=` statt `-eq` benutzt | In PS gilt: `-eq`, `-ne`, `-gt`, `-lt` |
| Variable leer | Einfache statt doppelte Anführungszeichen | `"$Name"` statt `'$Name'` |

---

## Aufgabe 017 — Active Directory

Für Aufgabe 017 muss die VM in einer AD-Domäne sein oder das RSAT-Tool installiert sein:

```powershell
# Auf Windows 10/11 (als Admin):
Add-WindowsCapability -Online -Name "Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0"

# Auf Windows Server:
Install-WindowsFeature -Name RSAT-AD-PowerShell
```

Falls keine AD-Umgebung vorhanden ist: schreibe die Skripte trotzdem und teste sie später in der Schulungsumgebung.

---

## Struktur der Dateien

```
powershell_aufgaben/
├── 00_Grundlagen_und_Einstieg.ps1   ← Hier starten!
├── Aufgabe_001.ps1
├── Aufgabe_002.ps1
├── ...
└── Aufgabe_020.ps1
```

---

## Lernziel

Nach Abschluss aller Aufgaben kannst du:

- PowerShell-Skripte strukturiert schreiben und debuggen
- Das lokale System (Benutzer, Dienste, Prozesse, Registry) per Skript verwalten
- Daten aus CSV, JSON und dem Ereignisprotokoll lesen und verarbeiten
- Netzwerkverbindungen diagnostizieren
- Backups automatisiert erstellen und rotieren
- Systeminformationen per WMI/CIM abfragen
- Remote-Verwaltung mit PowerShell Remoting durchführen
- Active Directory Objekte anlegen und verwalten
- Eine wiederverwendbare Admin-Toolbox entwickeln
