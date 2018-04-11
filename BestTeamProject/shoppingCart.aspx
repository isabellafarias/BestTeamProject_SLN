<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="BestTeamProject.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="totals" style="">
        <table id="totalsTable">
            <tr class="topRow" id="topRowID">
                <td>Item</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Total</td>
            </tr>
            <tr>
                <td>#28812</td>
                <td >45</td>
                <td >1</td>
                <td >45</td>
            </tr>
            <tr>
                <td >#93415</td>
                <td >85</td>
                <td >1</td>
                <td >85</td>
            </tr>
            <tr>
                <td >#99765</td>
                <td >15</td>
                <td >1</td>
                <td>15</td>
            </tr>
            <tr>
                <td >#34212</td>
                <td >25</td>
                <td >1</td>
                <td>25</td>
            </tr>
            <tr class="totalsRow">
                <td >Total</td>
                <td ></td>
                <td ></td>
                <td >$170</td>
            </tr>
        </table>


        <asp:Button ID="Button1" runat="server" Text="Purchase" class="shoppingCartButton"/> <br />
        <asp:Button ID="Button2" runat="server" Text="Continue Shopping"  class="shoppingCartButton"/> <br />
        <asp:Button ID="Button3" runat="server" Text="Clear Cart"  class="shoppingCartButton"/> <br />


    </div>
    <div class="shoppingItem" style="height: 84px;">
        <asp:Image ID="Image1" class="bookImg" runat="server" Height="83px" ImageUrl="~/Photos/book.png" Width="84px" />
        <asp:Label ID="Label1" class="itemLabel" runat="server" Text="Book 1: Test Book (#28812)"></asp:Label>
        <br />
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

    
    
    </asp:Content>
