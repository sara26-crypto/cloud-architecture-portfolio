param([string]$Target)

Write-Host "=== Testing connectivity to $Target ==="

# 1. ICMP Ping Test
Write-Host "`n[ICMP] Pinging $Target..."
Test-Connection -ComputerName $Target -Count 4 -ErrorAction SilentlyContinue

# 2. Traceroute
Write-Host "`n[Traceroute] Path to $Target..."
tracert $Target

# 3. TCP Port Test - RDP (3389)
Write-Host "`n[TCP] Testing RDP port (3389)..."
Test-NetConnection -ComputerName $Target -Port 3389

# 4. TCP Port Test - Custom HTTP (8080)
Write-Host "`n[TCP] Testing HTTP port (8080)..."
Test-NetConnection -ComputerName $Target -Port 8080
