import graph as graphNamespace {
  foo: 'foo'
}

resource testgroup 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'testname'
  properties: {
    displayName: 'groupDisplayName'
    mailEnabled: true
    mailNickName: 'mailNickName'
  }
}

resource anotherGroup 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'testAnotherGroupName'
  properties: {
    displayName: 'anotherGroupDisplayName'
    securityEnabled: true
  }
  
}

resource testApp 'Microsoft.Graph/applications@2022-06-15-preview' = {
  name: 'testAppName'
  displayName: 'testAppDisplayName'
}

resource testSP 'Microsoft.Graph/servicePrincipals@2022-06-15-preview' = {
  name: 'testSPName'
  appId: testApp.appId
}

resource exampleStorage 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'storageName'
  location: 'location'
  sku: {
    name: 'storageAccountSkuName'
  }
  properties: {
    accessTier: 'Cool'
  }
  kind: 'StorageV2'
}
