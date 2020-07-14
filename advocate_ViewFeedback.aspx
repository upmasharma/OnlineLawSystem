<%@ Page Title="" Language="C#" MasterPageFile="~/advocate.master" AutoEventWireup="true" CodeFile="advocate_ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>View Feedback</u></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="186px" Width="324px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="fid" HeaderText="Feedback ID" SortExpression="fid" />
            <asp:BoundField DataField="fto" HeaderText="To" SortExpression="fto" />
            <asp:BoundField DataField="ffrom" HeaderText="From" SortExpression="ffrom" />
            <asp:BoundField DataField="fdes" HeaderText="Description" SortExpression="fdes" />
            <asp:BoundField DataField="fdate" HeaderText="Date" SortExpression="fdate" />
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
        SelectCommand="SELECT * FROM [feedback] WHERE ([fto] = @fto)">
        <SelectParameters>
            <asp:SessionParameter Name="fto" SessionField="emailid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



</center>




</asp:Content>

