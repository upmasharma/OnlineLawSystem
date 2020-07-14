<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addDetails.aspx.cs" Inherits="addDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Add Details</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Section :"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Crime Type :"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="66px" 
            Width="223px"></asp:TextBox>
    </td>

</tr>
<tr>

<td colspan="2" align="center">

    <asp:Button ID="Button1" runat="server" Text="Register Details" 
        onclick="Button1_Click" />

</td>

</tr>


</table>




</center>





</asp:Content>

