<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="BestTeamProject.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 68px;
        }
        .auto-style4 {
            width: 71px;
        }
        .auto-style5 {
            width: 76px;
        }
        .auto-style6 {
            width: 68px;
            height: 23px;
        }
        .auto-style7 {
            width: 71px;
            height: 23px;
        }
        .auto-style8 {
            width: 76px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 68px;
            height: 22px;
        }
        .auto-style11 {
            width: 71px;
            height: 22px;
        }
        .auto-style12 {
            width: 76px;
            height: 22px;
        }
        .auto-style13 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="shoppingItem" style="height: 84px;">
        <asp:Image ID="Image1" class="bookImg" runat="server" Height="83px" ImageUrl="~/Photos/book.png" Width="84px" />
        <asp:Label ID="Label1" class="itemLabel" runat="server" Text="Book 1: Test Book (#28812)"></asp:Label>
        <asp:Label ID="Label2" class="priceLabel" runat="server" Text="$45"></asp:Label>
        <div class="options">
            <asp:Label ID="Label3" class="remove" runat="server" Text="Delete"></asp:Label>
            <asp:Label ID="midBar"  runat="server" Text=" | "></asp:Label>
            <asp:Label class="quantityLabel"  runat="server" Text="Quantity: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" class="quantity" value="1"></asp:TextBox>
        </div>
    </div>
     <div class="shoppingItem" style="height: 84px;">
        <asp:Image ID="Image2" class="bookImg" runat="server" Height="83px" ImageUrl="~/Photos/book.png" Width="84px" />
        <asp:Label ID="Label4" class="itemLabel" runat="server" Text="Book 2: Sequel to the Test (#93415)"></asp:Label>
        <asp:Label ID="Label5" class="priceLabel" runat="server" Text="$85"></asp:Label>
        <div class="options">
            <asp:Label ID="Label6" class="remove" runat="server" Text="Delete"></asp:Label>
            <asp:Label ID="Label7"  runat="server" Text=" | "></asp:Label>
            <asp:Label class="quantityLabel"  runat="server" Text="Quantity: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" class="quantity" value="1"></asp:TextBox>
        </div>
    </div>
        <div class="shoppingItem" style="height: 84px;">
        <asp:Image ID="Image3" class="bookImg" runat="server" Height="83px" ImageUrl="~/Photos/book.png" Width="84px" />
        <asp:Label ID="Label8" class="itemLabel" runat="server" Text="Book 3: Rise of the Test (#99765)"></asp:Label>
        <asp:Label ID="Label9" class="priceLabel" runat="server" Text="$15"></asp:Label>
        <div class="options">
            <asp:Label ID="Label10" class="remove" runat="server" Text="Delete"></asp:Label>
            <asp:Label ID="Label11"  runat="server" Text=" | "></asp:Label>
            <asp:Label class="quantityLabel"  runat="server" Text="Quantity: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" class="quantity" value="1"></asp:TextBox>
        </div>
    </div>
        <div class="shoppingItem" style="height: 84px;">
        <asp:Image ID="Image4" class="bookImg" runat="server" Height="83px" ImageUrl="~/Photos/book.png" Width="84px" />
        <asp:Label ID="Label12" class="itemLabel" runat="server" Text="Book 4: The Final Chapter (#34212)"></asp:Label>
        <asp:Label ID="Label13" class="priceLabel" runat="server" Text="$25"></asp:Label>
        <div class="options">
            <asp:Label ID="Label14" class="remove" runat="server" Text="Delete"></asp:Label>
            <asp:Label ID="Label15"  runat="server" Text=" | "></asp:Label>
            <asp:Label class="quantityLabel"  runat="server" Text="Quantity: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="quantity" value="1"></asp:TextBox>
        </div>
    </div>
    <div id="totals" style="">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Item</td>
                <td class="auto-style4">Price</td>
                <td class="auto-style5">Quantity</td>
                <td>Total</td>
            </tr>
            <tr>
                <td class="auto-style6">#28812</td>
                <td class="auto-style7">45</td>
                <td class="auto-style8">1</td>
                <td class="auto-style9">45</td>
            </tr>
            <tr>
                <td class="auto-style6">#93415</td>
                <td class="auto-style7">85</td>
                <td class="auto-style8">1</td>
                <td class="auto-style9">85</td>
            </tr>
            <tr>
                <td class="auto-style3">#99765</td>
                <td class="auto-style4">15</td>
                <td class="auto-style5">1</td>
                <td>15</td>
            </tr>
            <tr>
                <td class="auto-style3">#34212</td>
                <td class="auto-style4">25</td>
                <td class="auto-style5">1</td>
                <td>25</td>
            </tr>
            <tr>
                <td class="auto-style10">Total</td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style13">$170</td>
            </tr>


        </table>
    </div>
    
    </asp:Content>
