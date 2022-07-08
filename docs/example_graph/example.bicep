// Import Graph namespace
import graph as graphNamespace {
  graphToken: 'graphToken'
}

// Create a user
resource user1 'Microsoft.Graph/users@2022-06-15-preview' = {
  name: 'user1'
  accountEnabled: true
  displayName: 'user1DisplayName'
  mailNickname: 'user1MailNickname'
  onPremisesImmutableId: 'someId'
  userPrincipalName: 'user1PrincipalName'
  passwordProfile: {
    forceChangePasswordNextSignIn: false
    forceChangePasswordNextSignInWithMfa: false
    password: 'user1Password'
  }
}

// Create a reference to an existing managed identity
resource existingUser 'Microsoft.ManagedIdentity/userAssignedIdentities@2021-09-30-preview' existing = {
  name: 'my-managed-identity'
}

// Create a group
resource myGroup1 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'myGroup1'
  displayName: 'Group 50987'
  mailEnabled: false
  mailNickName: 'Group50987'
  securityEnabled: true
}

// Add the new user to the group
resource groupWithNewMember 'Microsoft.Graph/groups/members@2022-06-15-preview' = {
  name: 'groupWithNewMember'
  groupName: myGroup1.name
  memberRef: {
    '@odata.id': user1.id
  }
}

// Add the existing managed identity to the gorup
resource groupWithExistingMember 'Microsoft.Graph/groups/members@2022-06-15-preview' = {
  name: 'groupWithExistingMember'
  groupName: myGroup1.name
  memberRef: {
    '@odata.id': existingUser.properties.principalId
  }
}

// Create an application
resource testApp 'Microsoft.Graph/applications@2022-06-15-preview' = {
  name: 'testAppName'
  displayName: 'testAppDisplayName'
}

// Create a service principal
resource testSP 'Microsoft.Graph/servicePrincipals@2022-06-15-preview' = {
  name: 'testSPName'
  appId: testApp.appId
}

// Create an Azure storage account
resource exampleStorage 'az:Microsoft.Storage/storageAccounts@2021-09-01' = {
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
