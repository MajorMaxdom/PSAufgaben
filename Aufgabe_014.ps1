# ============================================================
# AUFGABE 014 - WMI/CIM Systemabfragen
# Geschätzter Zeitaufwand: ~55 Minuten
#
# Nutze immer Get-CimInstance statt Get-WmiObject (veraltet).
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 14.1 - Hardware-Informationen
# ----------------------------------------------------------
# a) CPU: Gib Modellname, Anzahl physischer Kerne,
#    logische Prozessoren und aktuelle Auslastung aus.
#    Klasse: Win32_Processor
#
# b) RAM: Gib Gesamtgröße und freien Speicher in GB aus.
#    Berechne die Auslastung in Prozent.
#    Klasse: Win32_OperatingSystem
#    (TotalVisibleMemorySize und FreePhysicalMemory in KB)
#
# c) Festplatten: Gib für jedes logische Laufwerk aus:
#    Buchstabe, Gesamtgröße in GB, freier Speicher in GB,
#    Belegung in Prozent, Dateisystem.
#    Klasse: Win32_LogicalDisk (DriveType -eq 3 = lokale Festplatte)



# ----------------------------------------------------------
# TEILAUFGABE 14.2 - Betriebssystem und Uptime
# ----------------------------------------------------------
# a) Gib folgende BS-Infos aus (Win32_OperatingSystem):
#    Betriebssystemname, Version, BuildNumber, Architektur,
#    Letzter Boot-Zeitpunkt (LastBootUpTime).
#
# b) Berechne die Uptime aus LastBootUpTime:
#    $uptime = (Get-Date) - (Get-CimInstance Win32_OperatingSystem).LastBootUpTime
#    Gib aus: "Uptime: X Tage, Y Stunden, Z Minuten"



# ----------------------------------------------------------
# TEILAUFGABE 14.3 - System-Inventar-Skript
# ----------------------------------------------------------
# Erstelle ein Skript das folgende Informationen sammelt
# und als übersichtlichen Report auf der Konsole ausgibt:
#
#   === SYSTEMINVENTAR: SRV-TEST01 ===
#   Datum:     01.06.2026 10:00
#   OS:        Windows Server 2022 (Build 20348)
#   CPU:       Intel Core i7 - 4 Kerne / 8 logische Prozessoren
#   RAM:       16.0 GB gesamt, 8.3 GB frei (52% belegt)
#   Laufwerke:
#     C:  100.0 GB gesamt,  45.2 GB frei (55% belegt) [NTFS]
#     D:  500.0 GB gesamt, 320.0 GB frei (36% belegt) [NTFS]
#
# Nutze for matierte Ausgabe mit -f Operator oder Here-String.
# Exportiere den Report zusätzlich als Textdatei nach C:\Temp\
