# ============================================================
# AUFGABE 016 - PowerShell Remoting
# Geschätzter Zeitaufwand: ~60 Minuten
#
# Für diese Aufgabe reicht der localhost als Ziel.
# Falls eine zweite VM vorhanden ist: auch dort testen.
# ============================================================

# ----------------------------------------------------------
# TEILAUFGABE 16.1 - WinRM prüfen und aktivieren
# ----------------------------------------------------------
# a) Prüfe ob WinRM läuft:
#    Get-Service WinRM
#    Test-WSMan localhost
#
# b) Aktiviere WinRM falls nötig (als Admin):
#    Enable-PSRemoting -Force
#    Was richtet Enable-PSRemoting automatisch ein?
#    (Dienst starten, Firewall-Regel, Listener)
#    Notiere deine Beobachtungen als Kommentare.
#
# c) Zeige die konfigurierten Listener:
#    Get-WSManInstance -ResourceURI winrm/config/Listener -Enumerate
#    Auf welchem Port läuft der HTTP-Listener?



# ----------------------------------------------------------
# TEILAUFGABE 16.2 - Invoke-Command
# ----------------------------------------------------------
# a) Führe einen einfachen Befehl remote auf localhost aus:
#    Invoke-Command -ComputerName localhost -ScriptBlock {
#        "Hallo von $env:COMPUTERNAME"
#    }
#
# b) Übergib eine Variable an den Remote-Block ($Using:):
#    $prozessName = "svchost"
#    Invoke-Command -ComputerName localhost -ScriptBlock {
#        Get-Process $Using:prozessName | Select -First 3
#    }
#
# c) Führe den System-Inventar-Bericht aus Aufgabe 014 remote aus.
#    Nutze Invoke-Command -FilePath "C:\Temp\Skript.ps1"
#    (Erstelle dazu ein kleines Testskript, falls nötig.)



# ----------------------------------------------------------
# TEILAUFGABE 16.3 - Persistente Session
# ----------------------------------------------------------
# a) Erstelle eine wiederverwendbare Session:
#    $s = New-PSSession -ComputerName localhost
#
# b) Demonstriere Zustandserhalt über mehrere Aufrufe:
#    Invoke-Command -Session $s -ScriptBlock { $counter = 10 }
#    Invoke-Command -Session $s -ScriptBlock { $counter += 5; $counter }
#    Invoke-Command -Session $s -ScriptBlock { $counter *= 2; $counter }
#    Was gibt jeder Aufruf aus? Erkläre das Verhalten als Kommentar.
#
# c) Schließe die Session sauber:
#    Remove-PSSession $s
#    Zeige danach mit Get-PSSession, dass keine Session mehr offen ist.
