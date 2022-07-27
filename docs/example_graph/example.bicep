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
resource myGroup2 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'myGroup2'
  displayName: 'myGroup2'
  mailEnabled: false
  mailNickName: 'myGroup2'
  securityEnabled: true

  resource anotherUser 'members' = {
    name: 'anotherUserName'
    '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/${user1.id}'

  }
}

// Add the new user to the group
resource groupWithNewMember 'Microsoft.Graph/groups/members@2022-06-15-preview' = {
  name: 'groupWithNewMember'
  '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/${existingUser.id}'
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

  resource roleAssignment 'appRoleAssignments' = {
    name: 'roleAssignmentName'
    appRoleId: 'appRoleId'
    principalId: testSP.id
    resourceId: 'resourceId'
  }
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
