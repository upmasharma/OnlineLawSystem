<%@ Page Title="" Language="C#" MasterPageFile="~/ContentHome.master" AutoEventWireup="true" CodeFile="forgotPassword.aspx.cs" Inherits="forgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1><u>Forgot Password</u></h1>
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Enter Email ID :"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </td>
    

</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Send Password" 
        onclick="Button1_Click" />


</td>


</tr>




</table>




</center>



</asp:Content>

