<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Id is :  <%=Session["Id"] %> -->

    <br /><br />
    <h1 id="titlu" style="color:red;margin-left:30%;margin-right:30%;font-size:300%;font-style:oblique;" runat="server" /> </h1>
    <img id="imagine" runat="server" style="width:40%;height:30%;margin-left:30%;display:inline-block;" />


    <br /> <br />
    <div class="container">
      <div class="jumbotron" id="continut" runat="server" />       
      </div>
      <!-- <asp:Image ID="Image1" runat="server" /> -->
    </div>

    <div id="comentarii"  runat="server" />
        <h2 style="margin-left:13%;font-style:oblique;"> Comentarii </h2>
    </div>

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div style="margin-left:13%;margin-top:1%;border: 2px solid deepskyblue;  border-radius: 25px; background-color:#73AD21;margin-right:13%;">
                <p style="margin-left:5%;color:aqua;margin-top:0.5%;font-size:150%;"> <%# Eval("Comentariu") %> </p>
                <p style="margin-left:5%;"> Comentariu adaugat de <%# Eval("Utilizator") %> la data de <%# Eval("Data") %> </p>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <br /> <br /> 
    <asp:LoginView ID = "loginView1" runat="server" >
        <LoggedInTemplate>
            <div id="adaugaComentarii">
                <p style="margin-left:13%;">
                    <asp:TextBox ID="comentariuNou" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Columns="100" Rows="4" TextMode="MultiLine"></asp:TextBox>
                </p>
                <p style="margin-left:13%;font-style:oblique;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adauga comentariu" />
                </p>
            </div>
        </LoggedInTemplate>
    </asp:LoginView>     

</asp:Content>

