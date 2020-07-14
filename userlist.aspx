<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h1><u>Registration Report</u></h1>
    <div style="overflow:scroll;width:800px;">
    <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Enter Values to Search :"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" /></td>
    
    </tr>
    
    
    </table>
  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         GridLines="Vertical" DataKeyNames="emailID" 
        onrowdeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="User ID" 
                SortExpression="userID" />
                 <asp:TemplateField HeaderText="Image" SortExpression="image">
        <ItemTemplate><asp:Image ID="fruitimage"   runat="server" ImageAlign="Left" ImageUrl='<%# Bind("image") %>'  Height="150px" Width="170px" /></ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="emailID" HeaderText="Email ID" 
                SortExpression="emailID" />
            <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="father_Name" HeaderText="Father Name" 
                SortExpression="father_Name" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
           
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postal_Code" HeaderText="Postal Code" 
                SortExpression="postal_Code" />
            <asp:BoundField DataField="country" HeaderText="Country" 
                SortExpression="country" />
            <asp:BoundField DataField="phone_no" HeaderText="Phone No" 
                SortExpression="phone_no" />
                <asp:BoundField DataField="uspl" HeaderText="Specialization" 
                SortExpression="uspl" />
            <asp:BoundField DataField="rdate" HeaderText="rdate" SortExpression="rdate" />
             <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" 
                ShowHeader="True" />
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
        SelectCommand="SELECT [userID], [emailID], [fname], [lname], [gender], [father_Name], [dob], [address], [city], [state], [postal_Code], [country], [phone_no], [rdate],[image] FROM [registration] WHERE ([utype] = @utype)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Citizen" Name="utype" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</center>
</asp:Content>

