<%@ Page Title="" Language="C#" MasterPageFile="~/Citizen.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Give Feedback</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Feedback ID :"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="To :"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label></td>

    <td>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="60px" 
            Width="223px"></asp:TextBox></td>

</tr>

<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Give Feedback" 
        onclick="Button1_Click" />

</td>


</tr>



</table>





</center>



</asp:Content>

