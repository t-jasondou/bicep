param location string = resourceGroup().location

// Import Graph namespace
import graph as graphNamespace {
  graphInternalData: 'graphInternalData'
}

// Create a user
resource user1 'Microsoft.Graph/users@2022-06-15-preview' = {
  name: 'user1'
  accountEnabled: true
  displayName: 'user080101DisplayName'
  mailNickname: 'user080101MailNickname'
  onPremisesImmutableId: 'user080101Id'
  userPrincipalName: 'user080101PrincipalName@xgk22.onmicrosoft.com'
  passwordProfile: {
    forceChangePasswordNextSignIn: false
    forceChangePasswordNextSignInWithMfa: false
    password: 'user080101Password'
  }
}

// Create a reference to an existing managed identity
// resource existingUser 'Microsoft.ManagedIdentity/userAssignedIdentities@2021-09-30-preview' existing = {
//   name: 'my-managed-identity'
// }

// Create a group
resource myGroup2 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'myGroup2'
  displayName: 'myGroup2'
  mailEnabled: false
  mailNickName: 'myGroup2'
  securityEnabled: true

  resource anotherUser 'members' = {
    name: 'myGroup2'
    '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/${user1.id}'

  }
}

// Add the new user to the group
resource addUser1ToGroup1 'Microsoft.Graph/groups/members@2022-06-15-preview' = {
  name: 'myGroup1'
  '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/${user1.id}'
}

// Create an application
resource testApp 'Microsoft.Graph/applications@2022-06-15-preview' = {
  name: 'testAppName'
  displayName: 'testAppDisplayName'
}

// Create a service principal
resource testAppRoleAssignments 'Microsoft.Graph/servicePrincipals@2022-06-15-preview' = {
  name: 'testSPName'
  appId: testApp.appId

  resource roleAssignment 'appRoleAssignments' = {
    name: 'appRoleAssignmentsName'
    appRoleId: '388c9dd3-eb64-4396-8f29-3290fc5b8a46'
    principalId: '387d849d-2307-49dc-9d4f-b99b14f3d600'
    resourceId: '28940da4-3667-41b5-947f-d486762a50ba'
  }
}

resource testAppRoleAssignments1 'Microsoft.Graph/servicePrincipals/appRoleAssignments@2022-06-15-preview' = {
  name: 'testSP1Name/appRoleAssignments1Name'
  appRoleId: '388c9dd3-eb64-4396-8f29-3290fc5b8a46'
  principalId: '387d849d-2307-49dc-9d4f-b99b14f3d600'
  resourceId: '28940da4-3667-41b5-947f-d486762a50ba'
}

// Create an Azure storage account
resource exampleStorage 'az:Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'storageName'
  location: location
  sku: {
    name: 'storageAccountSkuName'
  }
  properties: {
    accessTier: 'Cool'
  }
  kind: 'StorageV2'

  resource testChild 'blobServices' = {
    name: 'default'
  }
}
