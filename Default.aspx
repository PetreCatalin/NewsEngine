<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:deepskyblue;text-align:center;font-style:oblique;font-size:300%;"> Ultimele stiri </h1>
    <br /><br />

    <div id="divSport" runat="server" />
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" id="parSport"> Sport </h2>

    </div>

    <br />
    <div id="divStiinta" runat="server" />
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" > Stiinta </h2>

    </div>

    <br />
    <div id="divTehnologie" runat="server" />
        <h2 style="padding-left:10%;color:deepskyblue;font-style:oblique;" > Tehnologie </h2>

    </div>

</asp:Content>

