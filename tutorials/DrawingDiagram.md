# Drawing Diagram

**Resource Palette**

The Resource Palette contains Connectors, Shapes, Picture Shapes and Azure resources  
that you can drag onto canvas to start drawing a diagram.  
Non-Azure nodes do not represent an Azure resource and therefore are not deployable to your Azure subscription.
Azure nodes are deployable to Azure and is marked with a red badge.  
More Azure nodes are made deployable weekly. 

**Draw a link from Node**

Straight, Bezier(curved) and Orthogonal(segmented) connector line are known as Link.  
In addition to dragging links onto canvas from Resource Palette, you can directly drag link from any node  
by mouse-over North South East West bounds of a node, you will see a grey box apprearing.  
Grey box is known as a Port to any node, mouse-down on the Port and drag the Link to any node's Port.  

**Copy & Paste**

* You can copy any image from other websites and do <b>"Ctrl V"</b> to paste on Canvas,  
in cases when you can't find an Node that suits your need
<img src="./imgs/../../imgs/tutorial-copyimageotherwebsite.png" width="600" height="300" />   

* "Ctrl C" on one or multi-selected nodes and "Ctrl V" to duplicate selected nodes.
* You can copy nodes from Microsoft Visio and do <b>"Ctrl V"</b> to paste on Canvas  


**Panning (move canvas view)**   
Hold on to Right-mouse button and move mouse to shift canvas view. Canvas has unlimited space for drawing  

**Zoom**  
Hold "Control" key and Mouse Wheel Up/Down to zoom in/out  

**Group & Ungroup**  
* To group  1 or more nodes, select 1 or more nodes and right-click _on canvas or on any node_ and click "Group"  
Or press "Ctrl+G" to group nodes.  

* To ungroup, simply select the group, right-click and click Ungroup.  
  Or press Ctrl+Shift+G.  

**Virtual Network: Add Subnet or Nat Gateway**  
Right-click on Virtual Network (drag from Resource Palette "Networking") and  
select "Add/Remove Subnet" or "Add/Remove NAT Gateway"  

**Subnet: Add Network Security Group or User-Defined Route**  
To add Network Security Group and User-Defined Route, right-click any Subnet  
and click on "Add/Remove NSG" or "Add/Remove Route Table.  

**Subnet: Add VNet-Injectable Services**  
[Certain services](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-for-azure-services#services-that-can-be-deployed-into-a-virtual-network) like Kubernetes Service, Firewall, App Service Environment or API Management Premium must either resides in a shared or dedicated subnet.  
My colleagues and I like to call these services "VIR" or VNet-Injectable Services, Workbench validates them to make sure these VIR are indeed in subnets.  
_To add VIR to Subnet, click on Subnet, then drag the service onto canvas._