<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="BabyShop.Test" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .flyOutDiv
        {
             display: none;
             position: absolute;
             width: 400px;
             z-index: 3;
             opacity: 0;
             filter:(progid:DXImageTransform.Microsoft.Alpha(opacity=0));
             font-size: 14px;
             border: solid 1px #CCCCCC;
             background-color: #f0f291;
             padding: 5px;
        }
        .flyOutDivCloseX
        {
         background-color: #666666;
         color: #FFFFFF;
         text-align: center;
         font-weight: bold;
         text-decoration: none;
         border: outset thin #FFFFFF;
         padding: 5px; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" 
                EnableScriptLocalization="true" EnableScriptGlobalization="true" />
            <asp:LinkButton ID="lnkBtnColHelp" runat="server" Text="Click Here" OnClientClick="return false;" />
 
            <div id="moveMe" class="flyOutDiv">
              <div style="float:right;">
             <asp:LinkButton ID="imgBtnCloseColHelp" runat="server" Text="X" OnClientClick="return false;" CssClass="flyOutDivCloseX" />
          </div>
                 <h1>1. Produkt</h1>
                 <h1>2. Produkt</h1>
                 <h1>3. Produkt</h1>
                 <h1>4. Produkt</h1>                   
           </div> 
<ajaxToolKit:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="lnkBtnColHelp">
            <Animations>
                <OnClick>
                    <Sequence>
                        <EnableAction Enabled="false"></EnableAction>
  
                        <StyleAction AnimationTarget="moveMe" Attribute="display" Value="block"/>
                        <Parallel AnimationTarget="moveMe" Duration=".5" Fps="30">
                            <Move Horizontal="200" Vertical="20"></Move>
                            <FadeIn Duration=".5"/>
                        </Parallel>
                        <Parallel AnimationTarget="moveMe" Duration=".5">
                             <Color PropertyKey="color" StartValue="#666666" EndValue="#666666" />
                            <Color PropertyKey="borderColor" StartValue="#666666" EndValue="#666666" />
                        </Parallel>
                    </Sequence>
                </OnClick>
            </Animations>
        
        </ajaxToolKit:AnimationExtender>
        
        <ajaxToolKit:AnimationExtender ID="AnimationExtender2" runat="server" TargetControlID="imgBtnCloseColHelp">
        
            <Animations>
                <OnClick>
                    <Sequence AnimationTarget="moveMe">
                        <Parallel AnimationTarget="moveMe" Duration=".7" Fps="20">
                            <Move Horizontal="-200" Vertical="-20"></Move>
                            <Scale ScaleFactor="0.05" FontUnit="px" />
                            <Color PropertyKey="color" StartValue="#666666" EndValue="#666666" />
                            <Color PropertyKey="borderColor" StartValue="#666666" EndValue="#666666" />
                            <FadeOut />
                        </Parallel>
                        <StyleAction Attribute="display" Value="none"/>
                        <StyleAction Attribute="height" Value=""/>
                        <StyleAction Attribute="width" Value="200px"/>
                        <StyleAction Attribute="fontSize" Value="14px"/>
                        <EnableAction AnimationTarget="lnkBtnColHelp" Enabled="true" />
                    </Sequence>
                </OnClick>
            </Animations>
        
</ajaxToolKit:AnimationExtender>          
    </div>
    </form>
</body>
</html>
