# Azure Workbench

[Azure Workbench](https://www.azureworkbench.com/) is a web based Azure diagram drawing tool with features including  
* validate diagram against Azure validation rules
* generate Bicep template
* Save, load and share your diagrams 

**Tutorial**    

* [Drawing Diagram](/tutorials/DrawingDiagram.md)
* [Shortcut Keys](/tutorials/ShortcutKeys.md)
* [Workbench Features](/tutorials/WorkbenchFeatures.md)
* [Deploy Diagrams to Azure](/tutorials/DeployAzure.md)

**Bugs and Feature Requests**   

Please create issues for bugs and feature requests, appreciate your feedback.

## Drawing Diagram

You can start drawing from scratch by dragging nodes from Resource Palette onto canvas or load diagrams from QuickStart Template \
<img src="./imgs/draw-rp-qt.png" width="700" height="350">

## Generate Bicep template

*Only resources marked with red badge are recognized in Bicep generation, more resources will be made available in coming weeks.
<p align="left">
    <img src="./imgs/bicep-main.png" width="700" height="400" />
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
Double-click each resource to show its Azure Property Pane, fill up the necessary Azure properties. These property values will be populated in Bicep template.
Below shows an example of filling up VM properties. VM images and sizes are searchble.
<p align="left">
    <img src="./imgs/bicep-vm-searchimage.png" width="700" height="400" />
</p>
<p align="left">
    <img src="./imgs/bicep-vm-searchsize.png" width="700" height="400" />
</p>

**Share & discuss Azure deployment properties**  

In addition to generate Bicep template, stakeholders can use Workbench to share and discuss about the appropriate Azure properties prior to deployment.
This can greatly reduce deployment errors and better improve implementation experience.  

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

