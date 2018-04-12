<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="productPage.aspx.cs" Inherits="BestTeamProject.productPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            *{
            color:#333333;
            font-family:Tw Cen MT;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Image ID="Image1" runat="server" height="200px" style="float:left" ImageUrl="~/Photos/book.png"/>
        <asp:Label ID="Label1" runat="server" Height="182px" Text="Book 1" style="float:left; margin-left:20PX; font-size:200px"></asp:Label>
        <p style="clear:both">
            <br />
            <span class="auto-style3">Here is where the description of the book will go
        </span>
        </p>

    </div>
</asp:Content>
