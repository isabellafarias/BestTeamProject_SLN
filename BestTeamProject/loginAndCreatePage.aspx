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
            height: 32px;
        }
        .auto-style11 {
            width: 898px;
            text-align: right;
            height: 30px;
        }
        .auto-style13 {
            text-align: center;
            height: 30px;
        }
        .auto-style18 {
            text-align: left;
            height: 30px;
            width: 1394px;
        }
        .auto-style25 {
            text-align: center;
            height: 32px;
        }
        .auto-style26 {
            width: 87%;
            height: 207px;
            font-size: large;
        }
        .auto-style27 {
            width: 898px;
            text-align: right;
            height: 33px;
        }
        .auto-style28 {
            text-align: left;
            width: 1394px;
            height: 33px;
        }
        .auto-style30 {
            text-align: center;
            height: 33px;
        }
        .auto-style32 {
            text-align: left;
            width: 1394px;
            height: 25px;
        }
        .auto-style34 {
            text-align: center;
            height: 25px;
        }
        .auto-style35 {
            width: 1119px;
            text-align: right;
            height: 25px;
        }
        .auto-style36 {
            width: 375px;
            text-align: left;
            height: 25px;
        }
        .auto-style37 {
            width: 898px;
            text-align: right;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style26">
        <tr>
            <td class="auto-style5" colspan="2">
                <h2>Create Account:</h2>
            </td>
            <td class="auto-style25" colspan="2">
                <h2>Existing Customer Login:</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">First Name:</td>
            <td class="auto-style32">
                <asp:TextBox ID="createFirstNameTextBox" runat="server" Width="200px" TabIndex="1"></asp:TextBox>
            </td>
            <td class="auto-style35">Email Address:</td>
            <td class="auto-style36">
                <asp:TextBox ID="loginEmailAddressTextBox" runat="server" Width="170px" TabIndex="11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">Last Name:</td>
            <td class="auto-style32">
                <asp:TextBox ID="createLastNameTextBox" runat="server" Width="200px" TabIndex="2"></asp:TextBox>
            </td>
            <td class="auto-style35">Password:</td>
            <td class="auto-style36">
                <asp:TextBox ID="loginPasswordTextBox" runat="server" Width="170px" TextMode="Password" TabIndex="12"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Email Address:</td>
            <td class="auto-style28">
                <asp:TextBox ID="createEmailAddressTextBox" runat="server" Width="200px" TextMode="Email" TabIndex="3"></asp:TextBox>
                <asp:CustomValidator ID="emailValidator" runat="server" ControlToValidate="createEmailAddressTextBox" ErrorMessage="Email Address is already in use." ForeColor="Red"></asp:CustomValidator>
            </td>
            <td class="auto-style30" colspan="2">
                <asp:Button ID="loginButton" runat="server" AutoPostBack="False" Text="Login" Width="96px" OnClick="loginButton_Click" TabIndex="13" />
            &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style27">Credit Card:</td>
            <td class="auto-style28">
                <asp:TextBox ID="creditCardTextBox" runat="server" TabIndex="4" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style30" colspan="2">
                <asp:CustomValidator ID="loginValidator" runat="server" ErrorMessage="Email Address and Password do not match." ForeColor="Red"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">Type:</td>
            <td class="auto-style28">
                <asp:DropDownList ID="typeDropDown" runat="server" Height="16px" TabIndex="5" Width="200px">
                    <asp:ListItem Selected="True">Choose One</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>MasterCard</asp:ListItem>
                    <asp:ListItem>American Express</asp:ListItem>
                    <asp:ListItem>M&amp;G</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style30" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">CVV:</td>
            <td class="auto-style28">
                <asp:TextBox ID="cvvTextBox" runat="server" TabIndex="6" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style30" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="auto-style27">Birth Date (mm/dd/yyy):</td>
            <td class="auto-style28">
                <asp:TextBox ID="birthDateTextBox" runat="server" TabIndex="7" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style30" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">Password:</td>
            <td class="auto-style32">
                <asp:TextBox ID="createPasswordTextBox" runat="server" Width="200px" TextMode="Password" TabIndex="8"></asp:TextBox>
            </td>
            <td class="auto-style34" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Confirm Password:</td>
            <td class="auto-style18">
                <asp:TextBox ID="createConfirmPasswordTextBox" runat="server" Width="199px" TextMode="Password" TabIndex="9"></asp:TextBox>
                <asp:CompareValidator ID="passwordValidator" runat="server" ControlToCompare="createPasswordTextBox" ControlToValidate="createConfirmPasswordTextBox" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="auto-style13" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Button ID="createAccountButton" runat="server" Text="Create Account" Width="149px" OnClick="createAccountButton_Click" TabIndex="10" />
            </td>
        </tr>
    </table>
    
</asp:Content>
