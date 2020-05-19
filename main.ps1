<#

Example of usage:

PS C:\> Get-Date |^ DayOfWeek
Tuesday


#>


function global:Get-ExpandedProperty {
    [Cmdletbinding()]
    Param(
        [parameter(Mandatory=$true)] [String] $Value,
        [parameter(ValueFromPipeline=$true)] $InputObject
    )
    Process{

    Select-Object -InputObject $InputObject -ExpandProperty $Value

    }
    }

Set-Alias "^" Get-ExpandedProperty


