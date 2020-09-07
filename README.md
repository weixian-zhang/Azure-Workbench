# Azure Workbench

[Azure Workbench](https://www.azureworkbench.com/) is a web tool for you to draw and share Azure diagrams.  

**Tutorial**    

* [Drawing Diagram](/tutorials/DrawingDiagram.md)
* [Shortcut Keys](/tutorials/ShortcutKeys.md)
* [Workbench Features](/tutorials/WorkbenchFeatures.md)
* [Deploy Diagrams to Azure](/tutorials/DeployAzure.md)

**Bugs and Feature Requests**   

Please create issues for bugs and feature requests, appreciate your feedback.

## Drawing Diagrams

You can start drawing from scratch by dragging nodes from Resource Palette onto canvas or load diagrams from QuickStart Template \
<img src="./imgs/draw-rp-qt.png" width="700" height="350">

## Deploy Diagrams to your Azure Subscriptions

Only resources marked with red badge are deployable and more resources will be made deployable in coming weeks.
<p align="left">
    <img src="./imgs/draw-rd-redbadge.png" width="150" height="300" align="left" />
</p>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

**Prerequisite before deployment**  

Workbench requires either your Azure AD Global Admin, App Admin or Cloud App Admin \
to grant [admin consent](https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/grant-admin-consent) so that Workbench can retrieve your Subscription, Resource Group and deploy diagrams to your Azure subscriptions.
After Sign-In and admin consent granted, select Subscription to deploy diagram.  

<img src="./imgs/deploy-subselect.png" width="600" height="250">  

**Share & discuss Azure deployment properties**  

Even if you don't wish to deploy diagrams, you can still use Workbench to share and discuss deployment properties  
with your team mates. This can greatly reduce deployment errors and better improve implementation experience.  

<img src="./imgs/draw-resourcevalidation.png" width="700" height="340" />  
Validate certain Azure resources must be in a Subnet
</br>
</br> 
<img src="./imgs/deploy-nsg.png" width="700" height="340" />  
Create NSG security rules on Workbench, Service Tags is supported
</br>
</br>
<img src="./imgs/deploy-vmprop.png" width="700" height="360" />  
Workbench supports creation of VMs with selectable Location, VM Images and Sizes

