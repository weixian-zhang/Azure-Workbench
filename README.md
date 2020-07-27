# Azure Workbench

Azure Workbench is a web tool that allows you to draw and share Azure diagrams. \
Visit [Workbench](https://www.azureworkbench.com/) and give it a try.

**Tutorial** \
You can find the following tutorial in Workbench.
* [Drawing Diagram](/tutorials/DrawingDiagram.md)
* [Shortcut Keys](/tutorials/ShotcurKeys.md)
* [Workbench Features]
* [Deploy Diagrams to Azure]

**Bugs and Feature Requests** \
Please create issues for bugs and feature requests, appreaciate your feedback.

## Drawing Diagrams

You can start drawing from scratch by dragging nodes from Resource Palette onto canvas or load diagrams from QuickStart Template \
<img src="./imgs/draw-rp-qt.png" width="600" height="250">

## Deploy Diagrams to your Azure Subscriptions

Only resources marked with red badge are deployable. More resources will be made deployable.
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
Workbench requires either the Azure AD Global Admin, App Admin or Cloud App Admin \
to grant [admin consent](https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/grant-admin-consent) so that Workbench can retrieve your Subscription, Resource Group and deploy diagrams to your Azure subscriptions.
After Sign-In and admin consent granted, select Subscription to deploy diagram.
<img src="./imgs/deploy-subselect.png" width="600" height="250">  

**Share & discuss Azure deployment properties**  
Even if you don't wish to deploy diagrams, you can still use Workbench to share and discuss deployment properties  
to your team mates and customers. This can greatly reduce deployment errors and better improve implementation experience.  
<img src="./imgs/draw-resourcevalidation.png" width="600" height="250">
</br>
</br> 
<img src="./imgs/deploy-nsg.png" width="700" height="280">
</br>
</br>
<img src="./imgs/deploy-vmprop.png" width="700" height="280"> 

