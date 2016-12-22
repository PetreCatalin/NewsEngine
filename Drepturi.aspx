<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Drepturi.aspx.cs" Inherits="Drepturi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br /> <br />
    <div style="margin-left:38%;">
    <asp:LoginView ID="LoginView3" runat="server">
         <RoleGroups>
                <asp:RoleGroup Roles="Editor,Utilizator Inregistrat">
                </asp:RoleGroup>
         </RoleGroups>

         <LoggedInTemplate>
              <asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                  <Columns>
                      <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                      <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                      <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
                  </Columns>
              </asp:GridView>           
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT u.UserName, r.RoleName, u.LastActivityDate FROM Users AS u INNER JOIN UsersInRoles AS ur ON u.UserId = ur.UserId INNER JOIN Roles AS r ON ur.RoleId = r.RoleId"></asp:SqlDataSource>
          </LoggedInTemplate>
     </asp:LoginView>
    </div>

</asp:Content>

