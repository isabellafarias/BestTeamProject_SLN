<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="productPage.aspx.cs" Inherits="BestTeamProject.productPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            *{
            color:#333333;
            font-family:Tw Cen MT;
            }
        .auto-style5 {
            font-size: 100px;
            float: left;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <asp:Image ID="bookImage" runat="server" height="200px" style="float:left" ImageUrl="~/Photos/book.png"/>
        <asp:Label ID="bookTitleLabel" runat="server" Height="200px" Text="Book 1" style="margin-left:20PX; " CssClass="auto-style5" Width="829px"></asp:Label>
        <p style="clear:both">
            <br />
            <asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
        </p>

    </div>
</asp:Content>
