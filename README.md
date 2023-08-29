[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

<!--
| Dev  | Status | Production  | Status |
| ------------- | ------------- | ------------- | ------------- |
| Api Server  | [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Dev%20-%20ApiServer?branchName=dev)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=10&branchName=dev)    | Api Server | [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Prod%20-%20ApiServer?branchName=master)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=12&branchName=master) |
| Bicep Generator  | [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Dev%20-%20PyBicep?branchName=dev)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=11&branchName=dev)    | Bicep Generator | [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Prod%20-%20PyBicep?branchName=master)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=13&branchName=master)
| Portal  | [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Dev%20-%20Portal?branchName=dev)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=9&branchName=dev)  | Portal |  [![Build Status](https://dev.azure.com/weixzha/AzureWorkbench/_apis/build/status/GitHub%20-%20Prod%20-%20Portal?branchName=master)](https://dev.azure.com/weixzha/AzureWorkbench/_build/latest?definitionId=14&branchName=master)  
-->

Current version: 2.1.0
  * Api Server - ASP.NET Core .Net 5
  * Bicep Generator - Python 3.10 Docker
  * Portal - create-react-app, React 16.13, GoJs 2.1, MaterialUI, BluePrintJs

# Azure Workbench

[Azure Workbench](https://www.azureworkbench.com/) is a web based Azure diagram drawing tool with features including  
* Validate diagram against Azure resource deployment rules
* Generate Bicep template
* Save, manage and share your diagrams 

**Tutorial**    

* [Drawing Diagram](/tutorials/DrawingDiagram.md)
* [Shortcut Keys](/tutorials/ShortcutKeys.md)
* [My Space](/tutorials/MySpace.md)
* [Workbench Features](/tutorials/WorkbenchFeatures.md)  

**Bugs and Feature Requests**   

&nbsp;&nbsp;&nbsp;&nbsp;Please create issues for bugs and feature requests, appreciate your feedback.

## Drawing Diagram

You can start drawing diagram from scratch by dragging icons from Resource Palette on the left onto canvas or load diagrams from QuickStart Templates  
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
    <img src="./imgs/bicep-vm-searchimage.png" width="900" height="450" />
</p>
<p align="left">
    <img src="./imgs/bicep-vm-searchsize.png" width="900" height="450" />
</p>  
Example of NSG Inbound and Outbound rules input.
<br/>
<p align="left">
    <img src="./imgs/bicep-vm-nsg.png" width="1100" height="600" />
</p>  
After entering all necessary Azure properties, click Generate Bicep
<br/>
<p align="left">
    <img src="./imgs/bicep-gentemplate.png" width="900" height="500" />
</p>
Bicep template generated  
<br/>
<p align="left">
    <img src="./imgs/bicep-filetemplate.png" width="900" height="500" />
</p>  

## FreeHand mode  
Right-click to bring up context menu and select Enable FreeHand mode  
<br/>
<p align="left">
    <img src="./imgs/freehand-contextmenu.png" width="900" height="450" />
</p>
<br/>
Upon enabling FreeHand mode, hitting Alt + S will bring up the FreeHand Style panel allowing you to change stroke color.  
<b>*When in FreeHand mode, its not able to open other shapes and Azure icons Style pane</b>
<br/>
<p align="left">
    <img src="./imgs/freehand-stylepane.png" width="900" height="450" />
</p>  
Draw in free hand
<br/>
<p align="left">
    <img src="./imgs/freehand-draw.png" width="900" height="600" />
</p>

