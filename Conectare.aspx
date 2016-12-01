<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Conectare.aspx.cs" Inherits="Conectare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-horizontal col-md-12">
        <div class="jumbotron" style="margin-top:50px;">
            <div id="conectare">
                <h2>  Conectare </h2>
                <br>
                <asp:Login ID="Login1" runat="server" PasswordLabelText="Parola" LoginButtonText="Conectare" UserNameLabelText="Utilizator" TextBoxStyle-CssClass="form-control" TitleText=""></asp:Login>
                </br>
                <h4 style="margin-left:30px;"> * Campuri obligatorii </h4>   
            </div>
        </div>
    </div>
</asp:Content>

