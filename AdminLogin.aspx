<%@ Page Title="" Language="C#" MasterPageFile="~/ContentHome.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Login Here</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td  align="right">
    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox></td>
</tr>
<tr>
<td  align="right">
    <asp:Label ID="Label3" runat="server" Text="User Type :"></asp:Label></td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
         <asp:ListItem Text="Advocate" Value="Advocate"></asp:ListItem>
          <asp:ListItem Text="Citizen" Value="Citizen"></asp:ListItem>
        </asp:DropDownList>
        
        </td>
</tr>
<tr>
<td>
  <asp:Button ID="Button1" runat="server" Text="Login Here" Height="30px" 
            Width="120px" onclick="Button1_Click" /></td>
            <td>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login With OTP</asp:HyperLink><br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgotPassword.aspx">Forget Password</asp:HyperLink>
            </td>


</td>

</tr>


</table>


</center>

</asp:Content>

