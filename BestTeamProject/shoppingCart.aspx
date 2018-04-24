 <%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="BestTeamProject.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{font-family:Tw Cen MT; color:#333333}
        body {
}




        .auto-style5 {
            height: 26px;
        }




        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="totals" style="font-family:Tw Cen MT; color:#333333">
        <table id="totalsTable" aria-dropeffect="none">
            <tr class="topRow" id="topRowID">
                <td class="auto-style5">Item</td>
                <td class="auto-style5">Price</td>
                <td class="auto-style5">Quantity</td>
                <td class="auto-style5">Total</td>
            </tr>

            <asp:Label ID="lblTable" runat="server" Text="results" Visible="False"></asp:Label>

        </table>

        <div id="buttons" class="auto-style1">
            <asp:Button ID="btnPurchase" runat="server" Text="Purchase" class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White" OnClick="btnPurchase_Click"/> <br />
            <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping"  class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White" OnClick="Button2_Click"/> <br />
            <asp:Button ID="btnClear" runat="server" Text="Clear Cart"  class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White" OnClick="Button3_Click"/> <br />
            <br />
            <asp:Label ID="successLabel" runat="server" Text="Thank you for shopping with us!" Visible="False"></asp:Label>
        </div>

    </div>

    <div id="dynamicCart">
        <asp:Label ID="lblEmpty" runat="server" Text="Oops! Your cart is empty! :(" CssClass="emptyCart"></asp:Label>
        <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    </div>
    <br />

    <br />
    <br />


    
    
    
    </asp:Content>
