<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="Final_Exam.Page1" %>

<!--
   /*
*  FILE : Page1.aspx
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the html part of the page 1 of Web app of SET app
*/
    -->


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SET Pizza</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet/styles.css">
</head>
<body>
    <div class="heading-container">
        <h1 class="heading">SET Pizza Shop</h1>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <div id="formContainer">
                <p class="span">Enter your full name:</p>
                <br />
                <asp:TextBox ID="name" runat="server" placeholder="e.g. Joe Smith"></asp:TextBox><br />
                <asp:Button class="btnSubmit" runat="server" Text="Submit" CausesValidation="true" OnClick="CheckName_Click" />

                <br />
                <asp:RequiredFieldValidator ID="rfvName"
                    runat="server" ControlToValidate="name"
                    ErrorMessage="Please enter a valid Name" Font-Size="Larger">
                </asp:RequiredFieldValidator><br />

                <asp:RegularExpressionValidator ID="revNoNumbers" runat="server"
                    ControlToValidate="name" ValidationExpression="^[^\d]+$"
                    ErrorMessage="Please do not enter any numbers" Font-Size="Larger">
                </asp:RegularExpressionValidator>
            </div>
        </div>
    </form>
</body>
</html>
