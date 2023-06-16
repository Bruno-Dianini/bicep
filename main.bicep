@description('Specifies the location for resources.')
param location string = 'eastus'

param storageAccountName string = 'testebicepsk'


resource saStorageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
