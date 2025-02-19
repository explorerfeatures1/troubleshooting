$ip = "10.20.14.65"
$ports = 1..65535

foreach ($port in $ports) {
    $tcpConnection = Test-NetConnection -ComputerName $ip -Port $port -WarningAction SilentlyContinue
    if ($tcpConnection.TcpTestSucceeded) {
        Write-Host "Порт $port открыт"
    }
}
