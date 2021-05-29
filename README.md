# Azure Workbench

[Azure Workbench](https://www.azureworkbench.com/) is a web based Azure diagram drawing tool with features including  
* Validate diagram against Azure resource deployment rules
* Generate Bicep template
* Save, load and share your diagrams 

**Tutorial**    

* [Shortcut Keys](/tutorials/ShortcutKeys.md)
* [My Space](/tutorials/MySpace.md)
* [Workbench Features](/tutorials/WorkbenchFeatures.md)
* [Drawing Diagram](/tutorials/DrawingDiagram.md)

**Bugs and Feature Requests**   

Please create issues for bugs and feature requests, appreciate your feedback.

## Drawing Diagram

You can start drawing from scratch by dragging nodes from Resource Palette onto canvas or load diagrams from QuickStart Templates
<br/>
<img src="./imgs/draw-rp-qt.png" width="900" height="600" />

## Generate Bicep template
*Only resources marked with <span style="color:red">red badge</span> are recognized in Bicep generation, more resources will be made available in coming weeks.
<p align="left">
    <img src="./imgs/bicep-main.png" width="900" height="600" />
</p>
<br/>
Double-click each resource to show its Azure Property Pane and fill up the necessary Azure properties.   
These property values will be populated in Bicep template.
Below shows an example of filling up VM properties for VM image and size.
<br/>
<p align="left">
    <img src="./imgs/bicep-vm-searchimage.png" width="900" height="600" />
</p>
<p align="left">
    <img src="./imgs/bicep-vm-searchsize.png" width="900" height="600" />
</p>  
Example of NSG Inbound and Outboumd rules input.
<br/>
<p align="left">
    <img src="./imgs/bicep-vm-nsg.png" width="900" height="600" />
</p>

