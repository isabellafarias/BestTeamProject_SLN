<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="searchResultsPage.aspx.cs" Inherits="BestTeamProject.searchResultsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 221px;
            font-size: medium;
        }
        .auto-style5 {
            width: 212px;
        }
        .auto-style6 {
            width: 167px;
        }
        .auto-style7 {
            width: 110px;
        }
        .auto-style8 {
            width: 129px;
        }
        .auto-style9 {
            width: 206px;
        }
        .auto-style10 {
            width: 92%;
            font-family: "Tw Cen MT";
            font-size: medium;
        }
        .auto-style11 {
            width: 221px;
            height: 23px;
        }
        .auto-style12 {
            width: 110px;
            height: 23px;
        }
        .auto-style13 {
            width: 129px;
            height: 23px;
        }
        .auto-style14 {
            width: 212px;
            height: 23px;
        }
        .auto-style15 {
            width: 167px;
            height: 23px;
        }
        .auto-style16 {
            width: 206px;
            height: 23px;
        }
        .auto-style17 {
            width: 221px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-family: 'Tw Cen MT'">Search Results:</h1>
    <table id="searchTable" class="auto-style10">
        <tr>
            <td class="auto-style17">Product</td>
            <td class="auto-style7">Price</td>
            <td class="auto-style8">Reviews</td>
            <td class="auto-style5">Quantity Available</td>
            <td class="auto-style6">Description</td>
            <td class="auto-style9">Add to Cart</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
        </tr>
    </table>
    <br />
</asp:Content>
