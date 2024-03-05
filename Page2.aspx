<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Final_Exam.Page2" %>

<!DOCTYPE html>

<!--
   /*
*  FILE : Page2.aspx
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the html part of the page 2 of Web app of SET app
*/
    -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Build Your Pizza</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="Script/scriptPG2.js"></script>
    <link rel="stylesheet" type="text/css" href="StyleSheet/styles.css">
</head>
<body>
    <div class="heading-container">
        <h1 class="heading">SET Pizza Shop</h1>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <p class="spanContainers">Ciao <span class="span" id="greeting" runat="server"></span></p>
            <p class="infoMessage">At the SET Pizza Shop, you can only order one (1) large pizza. It comes automatically with sauce and cheese.</p>
            <br />
            <p id="toppingSelector">Select your toppings:</p>
            <input type="checkbox" class="toppingList" id="pepperoni" name="topping" value="pepperoni">
            Pepperoni $1.5<br>
            <input type="checkbox" class="toppingList" id="mushrooms" name="topping" value="mushrooms">
            Mushrooms $1<br>
            <input type="checkbox" class="toppingList" id="greenOlives" name="topping" value="greenOlives">
            Green Olives $1<br>
            <input type="checkbox" class="toppingList" id="greenPeppers" name="topping" value="greenPeppers">
            Green Peppers $1<br>
            <input type="checkbox" class="toppingList" id="doubleCheese" name="topping" value="doubleCheese">
            Double Cheese $2.25<br>
            <br />
            <p class="spanContainers">Total Price: $<span class="span" id="totalPrice"></span></p>
            <asp:Button class="btnSubmit" OnClick="submitOrder" runat="server" Text="Make It!" />
        </div>
    </form>
</body>
</html>
