/*
*  FILE : Server.aspx.cs
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the code Behind for the Server of the Web app to serve ajax calls
*/


using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Exam
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        //Variables to store state of the order details
        public static List<string> toppingsList = new List<string>();
        public static string price;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /* Function: SetPrice(string[] toppings)
       * Parameters: 
       * Description : This is the function that calculates price on every select of a toppi ng on the client side
       * Returns : string
       */
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string SetPrice(string[] toppings)
        {
            List<string> list = new List<string>();

            // Prices for toppings
            double pepperoniPrice = 1.50;
            double mushroomPrice = 1.00;
            double greenOlivesPrice = 1.00;
            double greenPeppersPrice = 1.00;
            double doubleCheesePrice = 2.25;

            // Calculate total price based on selected toppings
            double totalPrice = 10.00;  // Base price with cheese and sauce

            foreach (var topping in toppings)
            {
                switch (topping)
                {
                    case "pepperoni":
                        totalPrice += pepperoniPrice;
                        list.Add("Pepperoni");
                        break;
                    case "mushrooms":
                        totalPrice += mushroomPrice;
                        list.Add("Mushrooms");
                        break;
                    case "greenOlives":
                        totalPrice += greenOlivesPrice;
                        list.Add("GreenOlives");
                        break;
                    case "greenPeppers":
                        totalPrice += greenPeppersPrice;
                        list.Add("GreenPeppers");
                        break;
                    case "doubleCheese":
                        totalPrice += doubleCheesePrice;
                        list.Add("DoubleCheese");
                        break;
                }
            }
            toppingsList = list;
            price = totalPrice.ToString();
            return price; 
        }




        /* Function: GetDetails()
       * Parameters: 
       * Description : This is the function that gives the toppings list back to can ajax/jquery call
       * Returns : string
       */
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetDetails()
        {
            string[] response = toppingsList.ToArray();

            // Convert the list to JSON format
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string jsonResult = serializer.Serialize(response);

            return jsonResult;
        }



        /* Function: GetPrice()
       * Parameters: 
       * Description : This is the function that gives the total price to an ajax call
       * Returns : string
       */
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetPrice()
        {
            return price;
        }
    }
}