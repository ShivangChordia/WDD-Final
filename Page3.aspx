<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Final_Exam.Page3" %>

<!DOCTYPE html>

<!--
   /*
*  FILE : Page3.aspx
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the html part of the page 3 of Web app of SET app
*/
    -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirm Order</title>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="Script/scriptPG3.js"></script>
    <link rel="stylesheet" type="text/css" href="StyleSheet/styles.css">
</head>
<body>
    <div class="heading-container">
        <h1 class="heading">SET Pizza Shop</h1>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <p class="spanContainers">Ciao <span class="span" id="greeting" runat="server"></span></p>
            <p class="infoMessage">Order Details:</p>
            <ul class="toppingList" id="toppingsList"></ul>
            <br />
            <p class="spanContainers">Total Price: $<span class="span" id="totalPrice"></span></p>

            <asp:Button class="btnSubmit" runat="server" Text="Confirm" OnClick="ConfirmButton_Click" />
            <asp:Button class="btnSubmit" runat="server" Text="Cancel" OnClick="CancelButton_Click" />

        </div>
    </form>
</body>
</html>
