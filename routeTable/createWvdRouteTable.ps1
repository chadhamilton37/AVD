$udrName = "My User Defined Route Name"
$routeTableName = "My Route Table Name"
$routeTableRg = "My Route Table Resource Group"
$routeTableLocation = "My Azure Region"
$vnetName = "My VNET Name"
$subnetName = "My Subnet Name"
$subnetAddressPrefix = "My Subnet Address Prefix"

$route = New-AzRouteConfig -Name $udrName -AddressPrefix "WindowsVirtualDesktop" -NextHopType "Internet"
$routeTable = New-AzRouteTable -Name $routeTableName -ResourceGroupName $routeTableRg -Location $routeTableLocation -Route $route
$vnet = Get-AzVirtualNetwork -Name $vnetName
Set-AzVirtualNetworkSubnetConfig -Name $subnetName -VirtualNetwork $vnet -RouteTable $routeTable -AddressPrefix $subnetAddressPrefix
$vnet | Set-AzVirtualNetwork