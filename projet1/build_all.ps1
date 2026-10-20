# SmartCardio Guardian - Master Build Script
# Assembles HTML and Compiles Final PDF Document

$ErrorActionPreference = "Stop"

Write-Host ">>> Loading SVG asset libraries..." -ForegroundColor Cyan
. "$PSScriptRoot\svg_assets.ps1"
. "$PSScriptRoot\svg_assets_2.ps1"
. "$PSScriptRoot\svg_assets_3.ps1"
. "$PSScriptRoot\svg_components.ps1"

Write-Host ">>> Loading Page Generators..." -ForegroundColor Cyan
. "$PSScriptRoot\gen_pages_1_10.ps1"
. "$PSScriptRoot\gen_pages_11_20.ps1"
. "$PSScriptRoot\gen_pages_21_30.ps1"
. "$PSScriptRoot\gen_pages_31_44.ps1"

Write-Host ">>> Reading styles.css..." -ForegroundColor Cyan
$css = [System.IO.File]::ReadAllText("$PSScriptRoot\styles.css", [System.Text.Encoding]::UTF8)

Write-Host ">>> Assembling 44 Pages (Bilingual Alternating FR/AR)..." -ForegroundColor Cyan
$htmlBuilder = New-Object System.Text.StringBuilder

[void]$htmlBuilder.AppendLine(@"
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SmartCardio Guardian — PFE Design Report</title>
  <style>
$css
  </style>
</head>
<body>
"@)

# Appending pages 1 to 44
Write-Host "Generating Pages 1 to 10..."
[void]$htmlBuilder.AppendLine((Get-Page1-Cover))
[void]$htmlBuilder.AppendLine((Get-Page2-TOC))
[void]$htmlBuilder.AppendLine((Get-Page3-Ch1-FR))
[void]$htmlBuilder.AppendLine((Get-Page4-Ch1-AR))
[void]$htmlBuilder.AppendLine((Get-Page5-Ch2-FR))
[void]$htmlBuilder.AppendLine((Get-Page6-Ch2-AR))
[void]$htmlBuilder.AppendLine((Get-Page7-Ch3-FR))
[void]$htmlBuilder.AppendLine((Get-Page8-Ch3-AR))
[void]$htmlBuilder.AppendLine((Get-Page9-Ch4-FR))
[void]$htmlBuilder.AppendLine((Get-Page10-Ch4-AR))

Write-Host "Generating Pages 11 to 20..."
[void]$htmlBuilder.AppendLine((Get-Page11-Ch5-FR))
[void]$htmlBuilder.AppendLine((Get-Page12-Ch5-AR))
[void]$htmlBuilder.AppendLine((Get-Page13-Ch6-FR))
[void]$htmlBuilder.AppendLine((Get-Page14-Ch6-AR))
[void]$htmlBuilder.AppendLine((Get-Page15-Ch7-FR))
[void]$htmlBuilder.AppendLine((Get-Page16-Ch7-AR))
[void]$htmlBuilder.AppendLine((Get-Page17-Ch8-FR))
[void]$htmlBuilder.AppendLine((Get-Page18-Ch8-AR))
[void]$htmlBuilder.AppendLine((Get-Page19-Ch9-FR))
[void]$htmlBuilder.AppendLine((Get-Page20-Ch9-AR))

Write-Host "Generating Pages 21 to 30..."
[void]$htmlBuilder.AppendLine((Get-Page21-Ch10-FR))
[void]$htmlBuilder.AppendLine((Get-Page22-Ch10-AR))
[void]$htmlBuilder.AppendLine((Get-Page23-Ch11-FR))
[void]$htmlBuilder.AppendLine((Get-Page24-Ch11-AR))
[void]$htmlBuilder.AppendLine((Get-Page25-Ch12-FR))
[void]$htmlBuilder.AppendLine((Get-Page26-Ch12-AR))
[void]$htmlBuilder.AppendLine((Get-Page27-Ch13-FR))
[void]$htmlBuilder.AppendLine((Get-Page28-Ch13-AR))
[void]$htmlBuilder.AppendLine((Get-Page29-Ch14-FR))
[void]$htmlBuilder.AppendLine((Get-Page30-Ch14-AR))

Write-Host "Generating Pages 31 to 44..."
[void]$htmlBuilder.AppendLine((Get-Page31-Ch15-FR))
[void]$htmlBuilder.AppendLine((Get-Page32-Ch15-AR))
[void]$htmlBuilder.AppendLine((Get-Page33-Ch16-FR))
[void]$htmlBuilder.AppendLine((Get-Page34-Ch16-AR))
[void]$htmlBuilder.AppendLine((Get-Page35-Ch17-FR))
[void]$htmlBuilder.AppendLine((Get-Page36-Ch17-AR))
[void]$htmlBuilder.AppendLine((Get-Page37-Ch18-FR))
[void]$htmlBuilder.AppendLine((Get-Page38-Ch18-AR))
[void]$htmlBuilder.AppendLine((Get-Page39-Ch19-FR))
[void]$htmlBuilder.AppendLine((Get-Page40-Ch19-AR))
[void]$htmlBuilder.AppendLine((Get-Page41-Conclusion-FR))
[void]$htmlBuilder.AppendLine((Get-Page42-Conclusion-AR))
[void]$htmlBuilder.AppendLine((Get-Page43-Annex-FR))
[void]$htmlBuilder.AppendLine((Get-Page44-Annex-AR))

[void]$htmlBuilder.AppendLine(@"
</body>
</html>
"@)

$htmlPath = "$PSScriptRoot\SmartCardio_Guardian_PFE_Design.html"
$pdfPath  = "$PSScriptRoot\SmartCardio_Guardian_PFE_Design.pdf"

Write-Host ">>> Writing master HTML to $htmlPath..." -ForegroundColor Cyan
[System.IO.File]::WriteAllText($htmlPath, $htmlBuilder.ToString(), [System.Text.Encoding]::UTF8)

Write-Host ">>> Compiling PDF via Microsoft Edge Headless engine..." -ForegroundColor Cyan
$edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if (-not (Test-Path $edgePath)) {
  $edgePath = "C:\Program Files\Microsoft\Edge\Application\msedge.exe"
}

$proc = Start-Process -FilePath $edgePath -ArgumentList @(
  "--headless=new",
  "--disable-gpu",
  "--no-pdf-header-footer",
  "--run-all-compositor-stages-before-draw",
  "--print-to-pdf=$pdfPath",
  $htmlPath
) -Wait -PassThru

if (Test-Path $pdfPath) {
  $fileInfo = Get-Item $pdfPath
  $sizeKB = [math]::Round($fileInfo.Length / 1KB, 2)
  Write-Host ">>> SUCCESS! PDF generated successfully: $pdfPath ($sizeKB KB)" -ForegroundColor Green
} else {
  Write-Host ">>> ERROR: PDF generation failed." -ForegroundColor Red
  exit 1
}
