# Install UBI
powershell -exec bypass -c "Invoke-WebRequest -URI 'https://raw.githubusercontent.com/houseabsolute/ubi/master/bootstrap/bootstrap-ubi.ps1' -UseBasicParsing | Invoke-Expression"

# Install Pylee CLI 
ubi --project pyleeai/cli
