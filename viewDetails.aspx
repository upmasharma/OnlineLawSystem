<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewDetails.aspx.cs" Inherits="viewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1><u>view Details</u></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" Height="259px" Width="684px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="section" HeaderText="Section" 
                SortExpression="section" />
            <asp:BoundField DataField="ctype" HeaderText="Crime Type" SortExpression="ctype" />
            <asp:BoundField DataField="cdes" HeaderText="Description" SortExpression="cdes" />
            <asp:BoundField DataField="sugg" HeaderText="Suggestion" SortExpression="sugg" />
            <asp:BoundField DataField="uname" HeaderText="User Name" SortExpression="uname" />
            <asp:BoundField DataField="rdate" HeaderText="Date" SortExpression="rdate" />
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



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Conference %>" 
        SelectCommand="SELECT * FROM [suggestion]"></asp:SqlDataSource>



</center>





</asp:Content>

