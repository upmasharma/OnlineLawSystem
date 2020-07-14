<%@ Page Title="" Language="C#" MasterPageFile="~/Citizen.master" AutoEventWireup="true" CodeFile="search_keyword.aspx.cs" Inherits="search_keyword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Search Keyword</u></h1>
 <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Enter Values to Search :"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" /></td>
    
    </tr>
    
    
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="section" 
             Height="169px" Width="337px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="section" HeaderText="Section" ReadOnly="True" 
                SortExpression="section" />
            <asp:BoundField DataField="ctype" HeaderText="Crime Type" SortExpression="ctype" />
            <asp:BoundField DataField="cdes" HeaderText="Description" SortExpression="cdes" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>




       



</center>



</asp:Content>

