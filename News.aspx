<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Id is :  <%=Session["Id"] %> -->

    <br /><br />
    <h1 id="titlu" style="color:red;margin-left:30%;margin-right:30%;font-size:300%;font-style:oblique;" runat="server" /> </h1>


    <br /> <br />
    <div class="container">
      <div class="jumbotron" id="continut" runat="server" />       
      </div>
    </div>

</asp:Content>

