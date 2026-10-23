# Script: auto_report.ps1

# Tac gia: "long bình"

# Ngay tao: 23/10/2026

 

Write-Host "Dang loc log..."

 

"=== TONG HOP LOG ===" >  logs/tong_hop.txt

Get-Content logs/shop.log | Select-String "warning" >> logs/tong_hop.txt
Get-Content logs/shop.log | Select-String "error" >> logs/tong_hop.txt

 

Write-Host "Hoan thanh!"