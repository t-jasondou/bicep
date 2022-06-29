# Microsoft.Graph @ 2022-06-15-preview

## Resource Microsoft.Graph/applications@2022-06-15-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **appId**: string
* **displayName**: string (Required)
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **name**: string (Required, DeployTimeConstant): The resource name
* **type**: 'Microsoft.Graph/applications' (ReadOnly, DeployTimeConstant): The resource type

## Resource Microsoft.Graph/groups@2022-06-15-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **displayName**: string (Required)
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **mailEnabled**: bool
* **mailNickName**: string
* **name**: string (Required, DeployTimeConstant): The resource name
* **securityEnabled**: bool
* **type**: 'Microsoft.Graph/groups' (ReadOnly, DeployTimeConstant): The resource type

## Resource Microsoft.Graph/groups/members@2022-06-15-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **groupName**: string
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **memberRef**: [Reference](#reference): Properties of reference
* **name**: string (Required, DeployTimeConstant): The resource name
* **type**: 'Microsoft.Graph/groups/members' (ReadOnly, DeployTimeConstant): The resource type

## Resource Microsoft.Graph/servicePrincipals@2022-06-15-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **appId**: string (Required)
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **name**: string (Required, DeployTimeConstant): The resource name
* **type**: 'Microsoft.Graph/servicePrincipals' (ReadOnly, DeployTimeConstant): The resource type

## Resource Microsoft.Graph/users@2022-06-15-preview
* **Valid Scope(s)**: Unknown
### Properties
* **accountEnabled**: bool (Required)
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **displayName**: string (Required)
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **mailNickname**: string (Required)
* **name**: string (Required, DeployTimeConstant): The resource name
* **onPremisesImmutableId**: string (Required)
* **passwordProfile**: [PasswordProfile](#passwordprofile) (Required): Basic properties of a PasswordProfile.
* **type**: 'Microsoft.Graph/users' (ReadOnly, DeployTimeConstant): The resource type
* **userPrincipalName**: string (Required)

## PasswordProfile
### Properties
* **forceChangePasswordNextSignIn**: bool
* **forceChangePasswordNextSignInWithMfa**: bool
* **password**: string (Required)

## Reference
### Properties
* **@odata.id**: string

