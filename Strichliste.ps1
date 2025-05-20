Add-Type -AssemblyName System.Windows.Forms

# Pfad zur Speicherdatei
$counterFile = "$PSScriptRoot\strichliste.txt"

# Wenn Datei existiert, lade den Zählerstand
if (Test-Path $counterFile) {
    $count = Get-Content $counterFile | Out-String
    [int]$counter = $count.Trim()
} else {
    $counter = 0
}

# Fenster erstellen
$form = New-Object System.Windows.Forms.Form
$form.Text = "Strichliste"
$form.Size = New-Object System.Drawing.Size(250, 200)
$form.StartPosition = "CenterScreen"
$form.Topmost = $true

# Label für Anzeige
$label = New-Object System.Windows.Forms.Label
$label.Text = $counter.ToString()
$label.Font = New-Object System.Drawing.Font("Arial", 24, [System.Drawing.FontStyle]::Bold)
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(100, 20)
$form.Controls.Add($label)

# Button: +1
$buttonAdd = New-Object System.Windows.Forms.Button
$buttonAdd.Text = "+1"
$buttonAdd.Location = New-Object System.Drawing.Point(50, 70)
$buttonAdd.Size = New-Object System.Drawing.Size(60, 30)
$buttonAdd.Add_Click({
    $counter++
    $label.Text = $counter.ToString()
    Set-Content -Path $counterFile -Value $counter
})
$form.Controls.Add($buttonAdd)

# Button: Zurücksetzen
$buttonReset = New-Object System.Windows.Forms.Button
$buttonReset.Text = "Reset"
$buttonReset.Location = New-Object System.Drawing.Point(120, 70)
$buttonReset.Size = New-Object System.Drawing.Size(60, 30)
$buttonReset.Add_Click({
    $counter = 0
    $label.Text = "0"
    Set-Content -Path $counterFile -Value $counter
})
$form.Controls.Add($buttonReset)

# Fenster anzeigen
[void]$form.ShowDialog()
