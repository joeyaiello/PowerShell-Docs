---
title:   DSC Service Resource
ms.date:  2016-05-16
keywords:  powershell,DSC
description:  
ms.topic:  article
author:  eslesar
manager:  dongill
ms.prod:  powershell
---

# DSC Service Resource

> Applies To: Windows PowerShell 4.0, Windows PowerShell 5.0


The **Service** resource in Windows PowerShell Desired State Configuration (DSC) provides a mechanism to manage services on the target node.

## Syntax

```
Service [string] #ResourceName
{
    Name = [string]
    [ BuiltInAccount = [string] { LocalService | LocalSystem | NetworkService }  ]
    [ Credential = [PSCredential] ]
    [ DependsOn = [string[]] ]
    [ StartupType = [string] { Automatic | Disabled | Manual }  ]
    [ State = [string] { Running | Stopped }  ]
}
```

## Properties

|  Property  |  Description   | 
|---|---| 
| Name| Indicates the service name. Note that sometimes this is different from the display name. You can get a list of the services and their current state with the Get-Service cmdlet.| 
| BuiltInAccount| Indicates the sign-in account to use for the service. The values that are allowed for this property are: **LocalService**, **LocalSystem**, and **NetworkService**.| 
| Credential| Indicates credentials for the account that the service will run under. This property and the __BuiltinAccount__ property cannot be used together.| 
| DependsOn| Indicates that the configuration of another resource must run before this resource is configured. For example, if the ID of the resource configuration script block that you want to run first is __ResourceName__ and its type is __ResourceType__, the syntax for using this property is `DependsOn = "[ResourceType]ResourceName"`.| 
| StartupType| Indicates the startup type for the service. The values that are allowed for this property are: **Automatic**, **Disabled**, and **Manual**| 
| State| Indicates the state you want to ensure for the service.| 

## Example

```powershell
Service ServiceExample
{
    Name = "TermService"
    StartupType = "Manual"
    State = "Running"
} 
```

