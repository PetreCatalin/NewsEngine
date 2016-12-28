<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tehnologie.aspx.cs" Inherits="Tehnologie" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:deepskyblue;margin-left:40%;font-style:oblique;"> Categoria Tehnologie </h1>

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
               <p style="margin-left:18%;">
               <asp:Button ID="Button1" runat="server" Text="Cititi Stirea" CssClass="col-md-offset-4" ForeColor="Blue" OnClick="Button1_Click" CommandArgument='<%#Eval("Id") %>' />
               </p>
               <br />
               <p style="margin-left:44%;">
               <asp:LoginView ID="LoginView2" runat="server">
                      <RoleGroups>
                          <asp:RoleGroup Roles="Editor">
                              <ContentTemplate>
                                  <asp:Button ID="Button2" runat="server" Text="Stergeti Stirea" CssClass="btn-danger" CommandArgument='<%#Eval("Id") %>' OnClick="Button2_Click" OnClientClick="return confirm('Are you sure you want delete this news?');"/>
                              </ContentTemplate>
                          </asp:RoleGroup>
                      </RoleGroups>
               </asp:LoginView>
               </p>
           </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

