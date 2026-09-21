Write-Host "========================================" -ForegroundColor Cyan
Write-Host "     AUDITORIA AUTOMATICA DE CALIDAD" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$criterios = @()
$cumplidos = 0
$total = 0

function Revisar-Criterio {
    param(
        [string]$Id,
        [string]$Descripcion,
        [bool]$Cumple
    )

    if ($Cumple) {
        $estado = "PASS"
        $script:cumplidos++
        Write-Host "[PASS] $Id - $Descripcion" -ForegroundColor Green
    }
    else {
        $estado = "FAIL"
        Write-Host "[FAIL] $Id - $Descripcion" -ForegroundColor Red
    }

    $script:criterios += [PSCustomObject]@{
        ID = $Id
        Criterio = $Descripcion
        Resultado = $estado
    }

    $script:total++
}

Write-Host "1. DOCUMENTACION" -ForegroundColor Yellow

Revisar-Criterio "DOC-01" "Existe README.md" (Test-Path "README.md")
Revisar-Criterio "DOC-02" "Existe CHECKLIST-AUDITORIA.md" (Test-Path "CHECKLIST-AUDITORIA.md")
Revisar-Criterio "DOC-03" "Existe SISTEMA-INSIGNIAS.md" (Test-Path "SISTEMA-INSIGNIAS.md")
Revisar-Criterio "DOC-04" "Existe AUDITORIA-CMMI-MOPROSOFT.md" (Test-Path "AUDITORIA-CMMI-MOPROSOFT.md")
Revisar-Criterio "DOC-05" "Existe LICENSE" ((Test-Path "LICENSE") -or (Test-Path "LICENSE.txt"))

Write-Host ""
Write-Host "2. ESTRUCTURA" -ForegroundColor Yellow

Revisar-Criterio "EST-01" "Existe carpeta scripts" (Test-Path "scripts")
Revisar-Criterio "EST-02" "Existe auditor automatico" (Test-Path "scripts\AUDITAR-REPOSITORIO.ps1")

Write-Host ""
Write-Host "3. SEGURIDAD BASICA" -ForegroundColor Yellow

$archivos = Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue |
    Where-Object {
        $_.FullName -notmatch "\\\.git\\" -and $_.FullName -notmatch "AUDITAR-REPOSITORIO\.ps1" -and
        $_.FullName -notmatch "\\node_modules\\"
    }

$patronesRiesgo = "password\s*=", "api[_-]?key\s*=", "secret\s*=", "-----BEGIN .* PRIVATE KEY-----"

$hallazgoSeguridad = $false

foreach ($archivo in $archivos) {
    try {
        $contenido = Get-Content $archivo.FullName -Raw -ErrorAction Stop

        foreach ($patron in $patronesRiesgo) {
            if ($contenido -match $patron) {
                $hallazgoSeguridad = $true
            }
        }
    }
    catch {
    }
}

Revisar-Criterio "SEG-01" "No se detectan patrones basicos de posibles secretos" (-not $hallazgoSeguridad)

Write-Host ""
Write-Host "4. CONTROL DE VERSIONES" -ForegroundColor Yellow

$gitDisponible = $false

try {
    git --version | Out-Null
    $gitDisponible = $true
}
catch {
    $gitDisponible = $false
}

Revisar-Criterio "GIT-01" "Git esta disponible" $gitDisponible
Revisar-Criterio "GIT-02" "Existe repositorio Git" (Test-Path ".git")

Write-Host ""

if ($total -gt 0) {
    $porcentaje = [math]::Round(($cumplidos / $total) * 100, 2)
}
else {
    $porcentaje = 0
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "RESULTADO DE AUDITORIA" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Criterios evaluados : $total"
Write-Host "Criterios cumplidos : $cumplidos"
Write-Host "Cumplimiento        : $porcentaje %"

if ($porcentaje -ge 95) {
    $insignia = "ORO"
}
elseif ($porcentaje -ge 85) {
    $insignia = "PLATA"
}
elseif ($porcentaje -ge 70) {
    $insignia = "BRONCE"
}
else {
    $insignia = "SIN INSIGNIA"
}

Write-Host "Insignia provisional : $insignia" -ForegroundColor Magenta
Write-Host ""

$resultado = @()
$resultado += "# RESULTADO DE AUDITORIA"
$resultado += ""
$resultado += "| Dato | Resultado |"
$resultado += "|---|---|"
$resultado += "| Criterios evaluados | $total |"
$resultado += "| Criterios cumplidos | $cumplidos |"
$resultado += "| Cumplimiento | $porcentaje % |"
$resultado += "| Insignia provisional | $insignia |"
$resultado += ""
$resultado += "## Detalle"
$resultado += ""
$resultado += "| ID | Criterio | Resultado |"
$resultado += "|---|---|---|"

foreach ($criterio in $criterios) {
    $resultado += "| $($criterio.ID) | $($criterio.Criterio) | $($criterio.Resultado) |"
}

$resultado | Set-Content -Encoding UTF8 "RESULTADO-AUDITORIA.md"

Write-Host "Archivo generado: RESULTADO-AUDITORIA.md" -ForegroundColor Green

