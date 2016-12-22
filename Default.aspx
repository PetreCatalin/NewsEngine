<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:deepskyblue;text-align:center;font-style:oblique;font-size:300%;"> Ultimele stiri </h1>
    <br /><br />

    <div id="divSport">
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" id="parSport"> Sport </h2>

        <div style="display:inline-block;border:solid 3px black;margin-left:10%;height:370px;width:250px;background-color:deepskyblue;">
            <img src="" id="sport1img" runat="server" style="width:246px;height:150px;" />
            <h3 id="sport1h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="sport1ad" runat="server" style="margin-left:10%;"/> </h6>
        <!--    <h5 style="color:grey;margin-left:35%;">  <a href="News.aspx" onclick="sport1_Click"> Cititi Stirea </a> </h5>   -->     
             <asp:Button ID="btnSessionState" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click1" CssClass="col-md-offset-4" ForeColor="Blue" />
        </div>
          
        <div style="display:inline-block;border:solid 3px black;margin-left:5%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="sport2img" runat="server" style="width:246px;height:150px;" />
            <h3 id="sport2h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="sport2ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button1" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click2" CssClass="col-md-offset-4" ForeColor="Blue" />       
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:26%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="sport3img" runat="server" style="width:246px;height:150px;" />
            <h3 id="sport3h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="sport3ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button2" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click3" CssClass="col-md-offset-4" ForeColor="Blue" />    
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:47%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="sport4img" runat="server" style="width:246px;height:150px;" />
            <h3 id="sport4h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="sport4ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button3" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click4" CssClass="col-md-offset-4" ForeColor="Blue" />            
        </div>
        
    </div>

    <br /> <hr />
    <div id="divStiinta" runat="server" />
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" > Stiinta </h2>

         <div style="display:inline-block;border:solid 3px black;margin-left:10%;height:370px;width:250px;background-color:deepskyblue;">
            <img src="" id="stiinta1img" runat="server" style="width:246px;height:150px;" />
            <h3 id="stiinta1h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="stiinta1ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button4" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click5" CssClass="col-md-offset-4" ForeColor="Blue" />             
        </div>
          
        <div style="display:inline-block;border:solid 3px black;margin-left:5%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="stiinta2img" runat="server" style="width:246px;height:150px;" />
            <h3 id="stiinta2h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="stiinta2ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button5" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click6" CssClass="col-md-offset-4" ForeColor="Blue" />            
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:26%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="stiinta3img" runat="server" style="width:246px;height:150px;" />
            <h3 id="stiinta3h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="stiinta3ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button6" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click7" CssClass="col-md-offset-4" ForeColor="Blue" />           
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:47%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="stiinta4img" runat="server" style="width:246px;height:150px;" />
            <h3 id="stiinta4h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="stiinta4ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button7" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click8" CssClass="col-md-offset-4" ForeColor="Blue" />             
        </div>

    </div>

    <br /><hr /> 
    <div id="divTehnologie" runat="server" />
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" > Tehnologie </h2>

        <div style="display:inline-block;border:solid 3px black;margin-left:10%;height:370px;width:250px;background-color:deepskyblue;">
            <img src="" id="tehnologie1img" runat="server" style="width:246px;height:150px;" />
            <h3 id="tehnologie1h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="tehnologie1ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button8" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click9" CssClass="col-md-offset-4" ForeColor="Blue" />            
        </div>
          
        <div style="display:inline-block;border:solid 3px black;margin-left:5%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="tehnologie2img" runat="server" style="width:246px;height:150px;" />
            <h3 id="tehnologie2h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="tehnologie2ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button9" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click10" CssClass="col-md-offset-4" ForeColor="Blue" />           
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:26%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="tehnologie3img" runat="server" style="width:246px;height:150px;" />
            <h3 id="tehnologie3h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="tehnologie3ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button10" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click11" CssClass="col-md-offset-4" ForeColor="Blue" />            
        </div>

        <div style="display:inline-block;border:solid 3px black;margin-left:47%;height:370px;width:250px;position:absolute;background-color:deepskyblue;">
            <img src="" id="tehnologie4img" runat="server" style="width:246px;height:150px;" />
            <h3 id="tehnologie4h" style="font-style:oblique;margin-left:10%;margin-right:10%;" runat="server" /> </h3>
            <h6 id="tehnologie4ad" runat="server" style="margin-left:10%;"/> </h6>
            <asp:Button ID="Button11" runat="server" Text="Cititi Stirea" OnClick="btnSessionState_Click12" CssClass="col-md-offset-4" ForeColor="Blue" />            
        </div>

    </div>

</asp:Content>

