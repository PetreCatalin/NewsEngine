﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Editor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="color:red; text-align:center; margin-bottom:20px;"> Adaugati o stire noua </h1>
    <p style="background-color:white;">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:TextBox ID="TextBox1" Rows="20" Columns="203" TextMode="MultiLine" runat="server" BorderStyle="Solid" BorderColor="#000099" BorderWidth="20px" BackColor="White"></asp:TextBox>

    <asp:HtmlEditorExtender ID="HtmlEditorExtender1" EnableSanitization="false" TargetControlID="TextBox1" runat="server"></asp:HtmlEditorExtender>
    <br />

     <div id="mesajDiv" style="visibility:hidden;" runat="server" />
        <strong id="mesaj" runat="server" style="margin-left:35%;font-size:200%;color:red;"/>  </strong>
     </div>
    </p>
    <br />

    <p style="margin-left:34%;">
        Titlul Stirii: <input type="text" id="titlu" name="fname" style="width:400px;" runat="server" /><br>
    </p>
    </br>
    <p style="margin-left:43%;">
         Selectati o poza reprezentativa: <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <br />

    <p style="margin-left:43%;">
        Alegeti o categorie: 
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Sport</asp:ListItem>
            <asp:ListItem>Stiinta</asp:ListItem>
            <asp:ListItem>Tehnologie</asp:ListItem>
        </asp:DropDownList>
    </p>
    <br />
    <p style="margin-left:47%;">
        <asp:Button ID="Button1" runat="server" Text="Adaugare Stire" OnClick="Button1_Click"/>
    </p>
    


</asp:Content>

