# ============================================================
# AUFGABE 015 - Skript-Parameter und Module
# Geschätzter Zeitaufwand: ~60 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 15.1 - Skript mit Param-Block
# ----------------------------------------------------------
# Erstelle ein neues Skript "Get-Systembericht.ps1" mit
# folgendem Param-Block am Dateianfang:
#
# param(
#     [string]$Computername = $env:COMPUTERNAME,
#     [ValidateSet("Kurz","Vollständig")]
#     [string]$Umfang = "Kurz",
#     [switch]$AlsDatei
# )
#
# - Umfang "Kurz":        CPU-Auslastung, RAM-%, freier Disk-Speicher
# - Umfang "Vollständig": zusätzlich OS-Name, Uptime, Top-5-Prozesse
# - Mit -AlsDatei: Report in C:\Temp\Bericht_COMPUTERNAME.txt speichern
#
# Teste:
#   .\Get-Systembericht.ps1
#   .\Get-Systembericht.ps1 -Umfang Vollständig -AlsDatei



# ----------------------------------------------------------
# TEILAUFGABE 15.2 - Comment-Based Help
# ----------------------------------------------------------
# Füge dem Skript aus 15.1 einen vollständigen Hilfe-Block hinzu:
#
# <#
# .SYNOPSIS
#    [Kurzbeschreibung in einer Zeile]
# .DESCRIPTION
#    [Ausführliche Beschreibung]
# .PARAMETER Computername
#    [Beschreibung]
# .PARAMETER Umfang
#    [Beschreibung + gültige Werte]
# .EXAMPLE
#    .\Get-Systembericht.ps1 -Umfang Vollständig
# .NOTES
#    Autor: Dein Name | Version: 1.0
# #>
#
# Teste mit: Get-Help .\Get-Systembericht.ps1 -Full



# ----------------------------------------------------------
# TEILAUFGABE 15.3 - Einfaches Modul erstellen
# ----------------------------------------------------------
# Erstelle die Datei C:\Temp\MeineTools\MeineTools.psm1
# mit zwei Funktionen:
#
#   Get-SystemUptime: Gibt die Uptime als Zeichenkette zurück
#   (z.B. "3 Tage, 4 Stunden, 12 Minuten")
#
#   Test-AdminRechte: Gibt $true zurück wenn als Admin ausgeführt,
#   sonst $false (und eine Write-Warning-Meldung)
#
# Importiere das Modul mit Import-Module und teste beide Funktionen.
# Entlade es wieder mit Remove-Module MeineTools.
