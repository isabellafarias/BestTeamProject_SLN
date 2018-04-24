<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="profilePage.aspx.cs" Inherits="BestTeamProject.profilePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        *{font-family:Tw Cen MT; color:#333333}

        .auto-style5 {
            text-align: center;
            width: 361px;
        }
        .auto-style6 {
            text-align: center;
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
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="nameLabel" runat="server" Text="You must login"></asp:Label>
                <br />
                <asp:TextBox ID="updateFirstNameTextBox" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="updateLastNameTextBox" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="emailLabel" runat="server" Text="to view the profile page."></asp:Label>
                <br />
                <asp:TextBox ID="updateEmailTextBox" runat="server" Visible="False" Width="154px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="initialUpdateButton" runat="server" OnClick="initialUpdateButton_Click" Text="Update Profile Information" Width="153px" />
                <asp:Button ID="updateButton" runat="server" OnClick="updateButton_Click" Text="Update" Visible="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
