<%@ Page Title="Results" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="searchResultsPage.aspx.cs" Inherits="BestTeamProject.searchResultsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{font-family:Tw Cen MT; color:#333333; font-size:xx-large}
        .auto-style3 {
            width: 221px;
        font-size: medium;
    }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-family: 'Tw Cen MT'" class="auto-style5">Search Results:</h1>
    <br />
    <asp:Table ID="resultsTable" runat="server" Width=100% color="#333333" font-size="xx-large">
        <asp:TableRow runat="server" ID="tableHeader" TableSection="TableHeader" Font-Bold="true">
            <asp:TableCell runat="server">Title</asp:TableCell>
            <asp:TableCell runat="server">Author</asp:TableCell>
            <asp:TableCell runat="server">Price</asp:TableCell>
            <asp:TableCell runat="server">Quantity Available</asp:TableCell>
            <asp:TableCell runat="server"></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
    </asp:Table>
    <br />
</asp:Content>
