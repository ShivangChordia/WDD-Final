<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="Final_Exam.Page4" %>

<!DOCTYPE html>

<!--
   /*
*  FILE : Page4.aspx
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the html part of the page 4 of Web app of SET app
*/
    -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visit Again!</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/styles.css">
</head>
<body>
    <div class="heading-container">
        <h1 class="heading">SET Pizza Shop</h1>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <p class="span">Thank you for choosing SET Pizza Shop, <span id="customerName" runat="server"></span>!</p>
            <p class="infoMessage" id="confirmation" runat="server"></p>
            <asp:Button Class="btnSubmit" runat="server" OnClick="homepage_Click" Text="Order More" />
        </div>

    </form>
</body>
</html>
