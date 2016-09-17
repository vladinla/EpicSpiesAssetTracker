<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="EpicSpiesAssetTracker._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Spies: Asset Performance Tracker</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Ass">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/epic-spies-logo.jpg" Width="200px" class="picture" />
        <br />
        <br />
        <span class="auto-style1">Asset Performance Tracker<br />
        </span>
        <br />
        <br />
        Asset Name
        <asp:TextBox ID="assetNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Elections Rigged
        <asp:TextBox ID="electionsTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Acts Of Subterfuge Performed
        <asp:TextBox ID="subterfugeTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="resultButton" runat="server" OnClick="resultButton_Click" Text="Add Asset" BackColor="#CC3300" BorderStyle="Ridge" Font-Bold="True" Font-Size="Medium" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server" class="resultbutton"></asp:Label>
    
    </div>
    </form>
</body>
</html>
