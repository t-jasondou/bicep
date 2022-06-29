import graph as graphNamespace {
  foo: 'bar'
}

resource myGroup1 'Microsoft.Graph/groups@2022-06-15-preview' = {
  name: 'myGroup1'
  displayName: 'Group 50987'
  mailEnabled: false
  mailNickName: 'Group50987'
  securityEnabled: true
}
