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
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **name**: string (Required, DeployTimeConstant): The resource name
* **properties**: [GroupProperties](#groupproperties): Group Properties
* **type**: 'Microsoft.Graph/groups' (ReadOnly, DeployTimeConstant): The resource type

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
* **accountEnabled**: bool
* **apiVersion**: '2022-06-15-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **displayName**: string
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **mailNickName**: string
* **name**: string (Required, DeployTimeConstant): The resource name
* **onPremisesImmutableId**: string
* **passwordProfile**: [PasswordProfile](#passwordprofile): Basic properties of a PasswordProfile.
* **type**: 'Microsoft.Graph/users' (ReadOnly, DeployTimeConstant): The resource type
* **userPrincipalName**: string

## GroupProperties
### Properties
* **displayName**: string (Required)
* **mailEnabled**: bool
* **mailNickName**: string
* **securityEnabled**: bool

## PasswordProfile
### Properties
* **forceChangePasswordNextSignIn**: bool
* **forceChangePasswordNextSignInWithMfa**: bool
* **password**: string (Required)

