1 choco install bicep
   2 winget install -e --id Microsoft.Bicep
   3 mkdir 29mar_project
   4 ls
   5 rmdir 29mar_project
   6 ls
   7 cd .\Downloads\
   8 mkdir 29mar_project
   9 cd .\29mar_project\
  10 touch main.bicep
  11 New-Item main.bicep
  12 ls
  13 code .
  14 az group create --name bicep-rg --location eastasia
  15 az deployment group create --resource-group bicep-rg --template-file main.bicep