# AVD ARM Templates and Scripts

## Route Table
The ability to use [service tags](https://docs.microsoft.com/en-us/azure/virtual-network/service-tags-overview) in route tables is now in [public preview](https://azure.microsoft.com/en-us/updates/public-preview-service-tags-for-user-defined-routing/). The new capability can reduce communication problems between AVD session hosts and the AVD service by allowing service traffic to bypass NVAs and proxies through use of the WindowsVirtualDesktop service tag. This functionality is not available in the Azure portal today, so I am providing both an ARM template and PowerShell script to create the route table.

### *Template*
The template and parameters file contained in the "routeTable" folder will achieve the following:
* Create a new route table
* Create a route to send traffic destined for the AVD service to the Internet as a next hop
* Apply the route table to an existing subnet (this should be the subnet(s) containing AVD session hosts).

### *Script*
A PowerShell script called "createAVDRouteTable.ps1" is also available which achieves the same outcome.
