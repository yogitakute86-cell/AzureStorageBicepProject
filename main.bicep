param location string = resourceGroup().location 
 param storageAccountName string = 'toylaunch${uniqueString(resourceGroup().id)}' 
  
 resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = { 
   name: storageAccountName 
   location: location 
   sku: { 
     name: 'Standard_LRS' 
   } 
   kind: 'StorageV2' 
   properties: { 
     accessTier: 'Cold' 
   } 
 }

 resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-05-01' = { 
   name: '${storageAccount.name}/default/toylaunch' 
   properties: { 
     publicAccess: 'None' 
   } 
 }

 resource fileShare 'Microsoft.Storage/storageAccounts/fileServices/shares@2023-05-01' = { 
   name: '${storageAccount.name}/default/toylaunch' 
   properties: { 
     shareQuota: 100 
   } 
 }

 resource queue 'Microsoft.Storage/storageAccounts/queueServices/queues@2023-05-01' = { 
   name: '${storageAccount.name}/default/toylaunch' 
 }

 resource table 'Microsoft.Storage/storageAccounts/tableServices/tables@2023-05-01' = { 
   name: '${storageAccount.name}/default/toylaunch' 
 } 
