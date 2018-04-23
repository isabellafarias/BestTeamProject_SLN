﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="loginAndCreatePage.aspx.cs" Inherits="BestTeamProject.loginAndCreatePage" %>
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
        .auto-style9 {
            width: 385px;
            text-align: center;
        }
        .auto-style11 {
            width: 385px;
            text-align: center;
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
            height: 30px;
        }
        .auto-style17 {
            text-align: center;
            width: 269px;
        }
        .auto-style18 {
            text-align: center;
            height: 30px;
            width: 269px;
        }
        .auto-style19 {
            width: 431px;
            text-align: center;
        }
        .auto-style20 {
            width: 231px;
            text-align: center;
        }
        .auto-style21 {
            width: 231px;
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
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style1" colspan="2">
                <h2>Existing Customer Login:</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">First Name:</td>
            <td class="auto-style17">
                <asp:TextBox ID="createFirstNameTextBox" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style19">Email Address:</td>
            <td class="auto-style1">
                <asp:TextBox ID="loginEmailAddressTextBox" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Last Name:</td>
            <td class="auto-style17">
                <asp:TextBox ID="createLastNameTextBox" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style19">Password:</td>
            <td class="auto-style1">
                <asp:TextBox ID="loginPasswordTextBox" runat="server" Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email Address:</td>
            <td class="auto-style17">
                <asp:TextBox ID="createEmailAddressTextBox" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style20">
                <asp:CustomValidator ID="emailValidator" runat="server" ControlToValidate="createEmailAddressTextBox" ErrorMessage="Email Address is already in use." ForeColor="Red"></asp:CustomValidator>
            </td>
            <td class="auto-style1" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="loginButton" runat="server" Text="Login" Width="96px" OnClick="loginButton_Click" />
            &nbsp;&nbsp;
                <asp:CustomValidator ID="loginValidator" runat="server" ErrorMessage="Email Address and Password do not match." ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password:</td>
            <td class="auto-style17">
                <asp:TextBox ID="createPasswordTextBox" runat="server" Width="201px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style20">
                &nbsp;</td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Confirm Password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="createConfirmPasswordTextBox" runat="server" Width="199px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:CompareValidator ID="passwordValidator" runat="server" ControlToCompare="createPasswordTextBox" ControlToValidate="createConfirmPasswordTextBox" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="auto-style13" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="createAccountButton" runat="server" Text="Create Account" Width="149px" OnClick="createAccountButton_Click" />
            </td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
