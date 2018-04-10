<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="loginAndCreatePage.aspx.cs" Inherits="BestTeamProject.loginAndCreatePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
                <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
            </td>
            <td class="auto-style10">Email Address:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox6" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Last Name:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style1">Password:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox7" runat="server" Width="169px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Email Address:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Password:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Confirm Password:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox5" runat="server" Width="199px"></asp:TextBox>
            </td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
