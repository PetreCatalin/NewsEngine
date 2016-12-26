﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sport.aspx.cs" Inherits="Sport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="color:deepskyblue;margin-left:40%;font-style:oblique;"> Categoria Sport </h1>

    <h3 style="margin-left:43%;margin-top:3%;color:deepskyblue;"> Sortati dupa : </h3>
    <p style="margin-left:43%;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="schimb_sortare">
            <asp:ListItem Selected="True" Value="DataAdaugarii">Data Adaugarii</asp:ListItem>
            <asp:ListItem Value="Alfabetic">Alfabetic</asp:ListItem>
        </asp:DropDownList>
    </p>

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
           <div style="margin-left:25%;margin-top:5%;border:solid 2px;margin-right:25%;background-color:deepskyblue;width:50%;">
               <img src=<%# Eval("Poza") %> style="width:100%;"> 
               <h3 style="font-style:oblique;margin-left:20%;margin-right:20%;color:red;"> <%# Eval("Titlu") %>  </h3>
               <br /><br />
               <h4 style="margin-left:20%;margin-right:20%;"/> Stire adaugata la <%# Eval("DataAdaugare") %> </h4>
               <br /><br />
               <p style="margin-left:18%;">         <!-- cu < % #      % > putem scrie continut c#,folosim CommandArgument ca un identificator unic pentru fiecare buton din Repeater -->
               <asp:Button ID="Button1" runat="server" Text="Cititi Stirea" CssClass="col-md-offset-4" ForeColor="Blue" OnClick="Button1_Click" CommandArgument='<%#Eval("Id") %>' />
               </p>
               <br />
              <!-- <asp:HiddenField ID="HidUserID" Value='<%#Eval("Id") %>' runat="server"></asp:HiddenField> -->
           </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

