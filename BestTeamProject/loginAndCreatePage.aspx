<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="loginAndCreatePage.aspx.cs" Inherits="BestTeamProject.loginAndCreatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{font-family:Tw Cen MT; color:#333333}

        .auto-style3 {
            width: 100%;
            height: 207px;
        }
        .auto-style5 {
            width: 561px;
            text-align: center;
        }
        .auto-style8 {
            width: 267px;
            text-align: center;
        }
        .auto-style9 {
            width: 214px;
            text-align: center;
        }
        .auto-style10 {
            width: 273px;
            text-align: center;
        }
        .auto-style11 {
            width: 214px;
            text-align: center;
            height: 30px;
        }
        .auto-style12 {
            width: 267px;
            text-align: center;
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style3">
        <tr>
            <td class="auto-style5" colspan="2">
                <h2>Create Account:</h2>
            </td>
            <td class="auto-style1" colspan="2">
                <h2>Existing Customer Login:</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">First Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="createFirstNameTextBox" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="auto-style10">Email Address:</td>
            <td class="auto-style1">
                <asp:TextBox ID="loginEmailAddressTextBox" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Last Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="createLastNameTextBox" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style1">Password:</td>
            <td class="auto-style1">
                <asp:TextBox ID="loginPasswordTextBox" runat="server" Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email Address:</td>
            <td class="auto-style8">
                <asp:TextBox ID="createEmailAddressTextBox" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="loginButton" runat="server" Text="Login" Width="96px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password:</td>
            <td class="auto-style8">
                <asp:TextBox ID="createPasswordTextBox" runat="server" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Confirm Password:</td>
            <td class="auto-style12">
                <asp:TextBox ID="createConfirmPasswordTextBox" runat="server" Width="199px"></asp:TextBox>
            </td>
            <td class="auto-style13" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="createAccountButton" runat="server" Text="Create Account" Width="149px" />
            </td>
        </tr>
    </table>
    
</asp:Content>
