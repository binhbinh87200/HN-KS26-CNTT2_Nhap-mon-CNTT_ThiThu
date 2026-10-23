# Script: auto_report.ps1

# Tac gia: "long bình"

# Ngay tao: 23/10/2026

 

Write-Host "Dang loc log..."

 

"=== BAO CAO LOI ===" >  logs/daily_report.txt

Get-Content logs/shop.log | Select-String "error" >> logs/daily_report.txt

 

Write-Host "Hoan thanh!"