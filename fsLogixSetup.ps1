write-host 'AIB Customization: Download Fslogix started'
$fsLogixURL="https://aka.ms/fslogix_download"
$installerFile = "C:\Maintenance\fslogix_download.zip"

New-Item -Path "C:\Maintenance" -Name FSLogix -ItemType Directory -ErrorAction SilentlyContinue

Invoke-WebRequest $fsLogixURL -OutFile $installerFile
Expand-Archive $installerFile -DestinationPath C:\Maintenance\FSLogix
write-host 'AIB Customization: Download Fslogix finished'

write-host 'AIB Customization: Start Fslogix installation'
Start-Process -FilePath "C:\Maintenance\FSLogix\FSLogixAppsSetup.exe" -ArgumentList "/install /quiet" -Wait
write-host 'AIB Customization: Finished Fslogix installation'