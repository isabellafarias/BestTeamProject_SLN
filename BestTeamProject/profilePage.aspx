<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="profilePage.aspx.cs" Inherits="BestTeamProject.profilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        *{font-family:Tw Cen MT; color:#333333}

        .auto-style5 {
            text-align: center;
            width: 398px;
        }
        .auto-style6 {
            text-align: center;
            width: 382px;
        }
        .auto-style7 {
            width: 382px;
        }
        .auto-style8 {
            text-align: center;
            width: 382px;
            font-size: x-large;
        }
        .auto-style9 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5">
                <br />
            </td>
            <td class="auto-style6">
                <asp:Image ID="Image1" runat="server" Height="161px" ImageUrl="~/Photos/book.png" Width="175px" CssClass="auto-style9" />
                <br class="auto-style9" />
                <span class="auto-style9">Profile Picture Placeholder</span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">Users First and Last Names</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">Users Email Address</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
