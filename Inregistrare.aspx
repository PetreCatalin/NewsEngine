<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inregistrare.aspx.cs" Inherits="Inregistrare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="form-horizontal col-md-12">
  <div class="jumbotron" style="margin-top:50px;">
       <div id="inregistrare">
       <h2>  Creati Un Cont Nou</h2>
             <br>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" CompleteSuccessText="" UserNameLabelText="Utilizator:" ConfirmPasswordLabelText="Confirmare Parola:" PasswordLabelText="Parola:" CreateUserButtonText="Creare Utilizator" Font-Size="Large" TextBoxStyle-CssClass="form-control" ConfirmPasswordCompareErrorMessage="Cele doua parole trebuie sa coincida." EmailRegularExpressionErrorMessage="Format invalid de e-mail." EmailRequiredErrorMessage="E-mail obligatoriu." EmailRegularExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ContinueButtonText="Continua catre site" DuplicateUserNameErrorMessage="Numele de utilizator este deja folosit" InvalidPasswordErrorMessage="Lungimea minima a parolei: {0}." ContinueDestinationPageUrl="~/Default.aspx" StepStyle-CssClass="form-group" FinishDestinationPageUrl="~/Default.aspx" CompleteSuccessTextStyle-HorizontalAlign="Center">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server" Title="       Contul a fost creat cu succes">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
 <!--       <br />
        <h4 style="margin-left:90px;"> * Campuri obligatorii </h4> -->
    </div>
   </div>
</div>

</asp:Content>

