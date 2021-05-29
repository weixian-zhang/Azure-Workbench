var lawAppInsightProjectName = uniqueString(resourceGroup().id)
var azureFirewallSubnetName = 'AzureFirewallSubnet'
//NSG - nsg-web
resource nsgweb 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
name: 'nsg-web'
location: 'westus'
properties: {
securityRules: [
    {
      name: 'rule-1'
      properties: {
      priority: 300
      sourceAddressPrefix: 'VirtualNetwork'
      protocol: '*'
      destinationPortRange: '*'
      access: 'Deny'
      direction: 'Inbound'
      sourcePortRange: '*'
      destinationAddressPrefix: 'Internet'
      }
    }
     
    {
      name: 'rule-3'
      properties: {
      priority: 1000
      sourceAddressPrefix: 'VirtualNetwork'
      protocol: '*'
      destinationPortRange: '*'
      access: 'Allow'
      direction: 'Outbound'
      sourcePortRange: '*'
      destinationAddressPrefix: 'AzureMonitor'
      }
    }
    
    {
      name: 'rule-4'
      properties: {
      priority: 1050
      sourceAddressPrefix: 'VirtualNetwork'
      protocol: '*'
      destinationPortRange: '*'
      access: 'Allow'
      direction: 'Outbound'
      sourcePortRange: '*'
      destinationAddressPrefix: 'WindowsVirtualDesktop.EastUS2'
      }
    }
     
  ]
} 
}
  
//NSG - nsgmuniz
resource nsgmuniz 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
name: 'nsgmuniz'
location: 'westus'
}
  
//VNet - vnet-internet
resource vnetinternet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: 'vnet-internet'
  location: 'westus'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/24'
      ]
    }
  subnets: [
    {
      name: 'subnet-web'
      properties: {
        addressPrefix: ''
        networkSecurityGroup: {
          id: nsgweb.id
        }
      }
    }
    
    {
      name: 'subnet-web'
      properties: {
        addressPrefix: ''
      }
    }
    
    {
      name: 'subnet-web'
      properties: {
        addressPrefix: ''
      }
    }
    
    {
      name: 'subnet-web'
      properties: {
        addressPrefix: ''
      }
    }
    ] 
  } 
} 
  //VM NIC - nic-vmwebserver
  resource nicvmwebserver 'Microsoft.Network/networkInterfaces@2020-06-01' = {
  name: 'nic-vmwebserver'
  location: 'westus'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: '${vnetinternet.id}/subnets/subnet-web'
          }
          privateIPAllocationMethod: 'Dynamic'
    }
      }
    ]
  }
}
  //VM - vm-webserver
  resource vmwebserver 'Microsoft.Compute/virtualMachines@2020-06-01' = {
  name: 'vm-webserver'
  location: 'westus'
  properties: {
    osProfile: {
      computerName: 'vm-webserver'
      adminUsername: 'AzureUser'
      adminPassword: ''
      linuxConfiguration: {
        provisionVMAgent: true
        ssh: {
          publicKeys: [
            {
              path: '/home/AzureUser/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAiUfBQ024j/9LCCQYiZhV71uqB13m3Ae7Sj4jH65IdnCMQzXgrGxvu+14u+ZiBmUh453L6Zj93KwY2UgCVmt1yUG7gX8H9Gbw+4ewJcwuEDYdVxur2fff+xSB2NOCCePb2XyjOzijXuseXSh+e+IupjegA5wSUMBkLcfBSpXr5a7XCKVq4DRWoIIvQTSPYq1ZBllFUcBVGgTBC4EFuJ1okic7pkda08ZtiVAh91Sv2gmJFsts6ZnEbTmjFXwDM4Nei9CAtS3S0JeVRg6vnZlxLRWDfPnsFOGCd4eGLMQKQAEVqoDuyjGtBoLIrR5coSbBzJ7Nq4eFNrRc2z+kJ04ZIw== rsa-key-20210529'
            }
          ]
        }
      }
          }
    hardwareProfile: {
      vmSize: 'Standard_DC4s_v2'
    }
    storageProfile: {
      imageReference: {
        publisher: 'cognosys'
        offer: 'ubuntu 18 04'
        sku: ''
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
      dataDisks: []
    }
    networkProfile: {
      networkInterfaces: [
        {
          properties: {
            primary: true
          }
          id: nicvmwebserver.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: false
      }
    }
  }
}
  
resource subnetweb 'Microsoft.Network/virtualNetworks/subnets@2020-06-01' = {
  name: '${vnetinternet.name}/${azureFirewallSubnetName}'
  properties: {
    addressPrefix: ''
  }
}
resource pipazfwbicep 'Microsoft.Network/publicIPAddresses@2020-06-01' = {
  name: 'pip-azfw-bicep'
  location: 'westus'
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
}
resource azfw 'Microsoft.Network/azureFirewalls@2020-06-01' = {
  name: 'azfw'
  location: 'westus'
  zones: [
  '1'
  '2'
  '3'
  ]
  properties: {
    ipConfigurations: [
      {
        name: 'IpConf1'
        properties: {
          subnet: {
            id: subnetweb.id
          }
          publicIPAddress: {
            id: pipazfwbicep.id
          }
        }
      }
    ]
    applicationRuleCollections: []
    networkRuleCollections: []
  }
}
  //VM NIC - nic-vmwebserver
  resource nicvmwebserver 'Microsoft.Network/networkInterfaces@2020-06-01' = {
  name: 'nic-vmwebserver'
  location: 'westus'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: '${vnetinternet.id}/subnets/subnet-web'
          }
          privateIPAllocationMethod: 'Dynamic'
    }
      }
    ]
  }
}
  //VM - vm-webserver
  resource vmwebserver 'Microsoft.Compute/virtualMachines@2020-06-01' = {
  name: 'vm-webserver'
  location: 'westus'
  properties: {
    osProfile: {
      computerName: 'vm-webserver'
      adminUsername: 'AzureUser'
      adminPassword: ''
      linuxConfiguration: {
        provisionVMAgent: true
        ssh: {
          publicKeys: [
            {
              path: '/home/AzureUser/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAiUfBQ024j/9LCCQYiZhV71uqB13m3Ae7Sj4jH65IdnCMQzXgrGxvu+14u+ZiBmUh453L6Zj93KwY2UgCVmt1yUG7gX8H9Gbw+4ewJcwuEDYdVxur2fff+xSB2NOCCePb2XyjOzijXuseXSh+e+IupjegA5wSUMBkLcfBSpXr5a7XCKVq4DRWoIIvQTSPYq1ZBllFUcBVGgTBC4EFuJ1okic7pkda08ZtiVAh91Sv2gmJFsts6ZnEbTmjFXwDM4Nei9CAtS3S0JeVRg6vnZlxLRWDfPnsFOGCd4eGLMQKQAEVqoDuyjGtBoLIrR5coSbBzJ7Nq4eFNrRc2z+kJ04ZIw== rsa-key-20210529'
            }
          ]
        }
      }
          }
    hardwareProfile: {
      vmSize: 'Standard_DC4s_v2'
    }
    storageProfile: {
      imageReference: {
        publisher: 'cognosys'
        offer: 'ubuntu 18 04'
        sku: ''
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
      dataDisks: []
    }
    networkProfile: {
      networkInterfaces: [
        {
          properties: {
            primary: true
          }
          id: nicvmwebserver.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: false
      }
    }
  }
}