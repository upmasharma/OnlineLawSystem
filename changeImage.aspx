<%@ Page Title="" Language="C#" MasterPageFile="~/advocate.master" AutoEventWireup="true" CodeFile="changeImage.aspx.cs" Inherits="changeImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center style="background-color:#FFFFCC">
     <h1 style="color:ActiveCaption; color:#003300; font-family:Arial, Helvetica, sans-serif; font:bolder; font-size: xx-large; font-weight: bolder; font-style: normal; font-variant: normal; text-decoration: underline;">&nbsp;Change Image</h1>
<br />
    <br />
    <br />
<asp:Image ID="Image1" runat="server" Height="180px" Width="180px" /><br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
     <br />
     <br />
     <br />
    <asp:Button ID="Button2" runat="server" Text="Upload Image" 
        onclick="Button2_Click" CssClass="btn-block" Width="121px" />


</center>
</asp:Content>

