<%@ Page Title="" Language="C#" MasterPageFile="~/advocate.master" AutoEventWireup="true" CodeFile="addSpecialization.aspx.cs" Inherits="addSpecialization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Update Specialization</u></h1>
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Email ID:"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Specialization:"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

</tr>
<tr>
<td>
    <asp:Label ID="Label3" runat="server" Text="New Specialization:"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>

</tr>
<tr>

<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Update Specialization" 
        onclick="Button1_Click" />


</td>

</tr>
</table>



</center>
</asp:Content>

