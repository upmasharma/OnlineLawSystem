<%@ Page Title="" Language="C#" MasterPageFile="~/Citizen.master" AutoEventWireup="true" CodeFile="suggestion.aspx.cs" Inherits="suggestion" %>

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
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="section" 
            DataValueField="section" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Conference %>" 
            SelectCommand="SELECT [section] FROM [add_details1]"></asp:SqlDataSource>
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
<td align="right">
    <asp:Label ID="Label4" runat="server" Text="suggestion :"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="66px" 
            Width="223px"></asp:TextBox>
    </td>


</tr>
<tr>

<td colspan="2" align="center">

    <asp:Button ID="Button1" runat="server" Text="Give Suggestion" 
        onclick="Button1_Click" />

</td>

</tr>


</table>




</center>


</asp:Content>

