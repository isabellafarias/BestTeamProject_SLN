<%@ Page Title="" Language="C#" MasterPageFile="~/WebTemplate.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="BestTeamProject.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *{font-family:Tw Cen MT; color:#333333}
        body {
}




        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="totals" style="font-family:Tw Cen MT; color:#333333">
        <table id="totalsTable">
            <tr class="topRow" id="topRowID">
                <td>Item</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Total</td>
            </tr>

            <asp:Label ID="lblTable" runat="server" Text="results" Visible="False"></asp:Label>

        </table>

        <div id="buttons">
            <asp:Button ID="topButton" runat="server" Text="Purchase" class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White"/> <br />
            <asp:Button ID="Button2" runat="server" Text="Continue Shopping"  class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White"/> <br />
            <asp:Button ID="Button3" runat="server" Text="Clear Cart"  class="shoppingCartButton" BackColor="#2F92C2" ForeColor="White"/> <br />
        </div>

    </div>

    <div id="dynamicCart">
        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label> <br /> <br />
        <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    </div>
    <br />
    <br />
    <br />


    
    
    
    </asp:Content>
