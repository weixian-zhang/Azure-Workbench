# Azure Workbench

Azure Workbench is a web tool that allows you to draw and share Azure diagrams. \
Visit [Workbench](https://www.azureworkbench.com/) and give it a try. \

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
<img src="./imgs/draw-rd-redbadge.png" width="150" height="300">

Workbench requires either the Azure AD Global Admin, App Admin or Cloud App Admin \
to grant [admin consent](https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/grant-admin-consent) so that Workbench can retrieve your Subscription, Resource Group and deploy diagrams to your Azure subscriptions.
After Sign-In and admin consent granted, select Subscription to deploy diagram.
<img src="./imgs/deploy-subselect.png" width="600" height="250">

