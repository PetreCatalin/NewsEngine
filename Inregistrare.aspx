<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inregistrare.aspx.cs" Inherits="Inregistrare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="form-horizontal col-md-12">
  <div class="jumbotron" style="margin-top:50px;">
       <div id="inregistrare">
       <h2>  Creati Un Cont Nou</h2>
             <br>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CompleteSuccessText="Contul a fost creeat cu succes" UserNameLabelText="Utilizator:" ConfirmPasswordLabelText="Confirmare Parola:" PasswordLabelText="Parola:" CreateUserButtonText="Creare Utilizator" Font-Size="Large" TextBoxStyle-CssClass="form-control" EmailRegularExpression='@"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"' ConfirmPasswordCompareErrorMessage="Cele doua parole trebuie sa coincida." EmailRegularExpressionErrorMessage="Format invalid de e-mail." EmailRequiredErrorMessage="E-mail obligatoriu.">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        <br />
        <h4 style="margin-left:90px;"> * Campuri obligatorii </h4>
    </div>
   </div>
</div>

</asp:Content>

