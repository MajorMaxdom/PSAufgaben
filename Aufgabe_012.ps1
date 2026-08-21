# ============================================================
# AUFGABE 012 - Windows Registry
# Geschätzter Zeitaufwand: ~50 Minuten
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 12.1 - Registry lesen
# ----------------------------------------------------------
# a) Lese den Windows-Produktnamen aus der Registry:
#    Pfad: HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion
#    Wert: ProductName, CurrentBuild, RegisteredOwner
#    Gib alle drei Werte formatiert aus.
#
# b) Liste alle Autostart-Programme auf:
#    Pfad: HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
#    Gib Name und Wert (Programmpfad) jedes Eintrags aus.
#
# c) Lese Remote-Desktop-Status aus:
#    Pfad: HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server
#    Wert: fDenyTSConnections
#    0 = RDP aktiviert, 1 = RDP deaktiviert
#    Gib eine verständliche Meldung aus.



# ----------------------------------------------------------
# TEILAUFGABE 12.2 - Registry schreiben (Testbereich)
# ----------------------------------------------------------
# Arbeite NUR in HKCU:\Software\AzubiTest - niemals in HKLM!
#
# a) Erstelle den Schlüssel HKCU:\Software\AzubiTest.
# b) Setze folgende Werte mit New-ItemProperty:
#    - Version (String):       "1.0"
#    - Aktiviert (DWORD):      1
#    - Installiert (String):   aktuelles Datum
# c) Lese alle Werte wieder aus und gib sie aus.
# d) Ändere die Version auf "1.1" (Set-ItemProperty).
# e) Lösche am Ende den gesamten Testschlüssel
#    (Remove-Item -Recurse).



# ----------------------------------------------------------
# TEILAUFGABE 12.3 - Installierte Software auflisten
# ----------------------------------------------------------
# Lese alle installierten Programme aus der Registry:
# Pfad 1: HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\
# Pfad 2: HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\
#
# a) Sammle für beide Pfade alle Unterschlüssel und lese:
#    DisplayName, DisplayVersion, Publisher
#    (manche Einträge haben keinen DisplayName - diese überspringen)
#
# b) Sortiere nach DisplayName und gib die ersten 15 aus.
# c) Wie viele Programme sind insgesamt installiert?
