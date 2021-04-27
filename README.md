# WVD ARM Templates and Scripts

## Route Table
The ability to use [service tags](https://docs.microsoft.com/en-us/azure/virtual-network/service-tags-overview) in route tables is now in [public preview](https://azure.microsoft.com/en-us/updates/public-preview-service-tags-for-user-defined-routing/). The new capability can reduce communication problems between WVD session hosts and the WVD service by allowing service traffic to bypass NVAs and proxies through use of the WindowsVirtualDesktop service tag. This functionality is not available in the Azure portal today, so I am providing both an ARM template and PowerShell script to create the route table.

### *Template*
The template and parameters file contained in the "routeTable" folder will achieve the following:
* Create a new route table
* Create a route to send traffic destined for the WVD service to the Internet as a next hop
* Apply the route table to an existing subnet (this should be the subnet(s) containing WVD session hosts).

### *Script*
A PowerShell script called "createWvdRouteTable.ps1" is also available which achieves the same outcome.
