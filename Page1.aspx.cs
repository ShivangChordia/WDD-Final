/*
*  FILE : Page1.aspx.cs
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the code Behind for the Page 1 of the Web app
*/


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Final_Exam
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /* Function: CheckName_Click(object sender, EventArgs e)
        * Parameters: object sender, EventArgs e
        * Description : This is the function that check the events after clicking submit for name
        * Returns : void
        */
        protected void CheckName_Click(object sender, EventArgs e)
        {
            string fullName = name.Text;

            // Split the full name using whitespaces
            string[] nameParts = fullName.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

            //Setting viewstate variable
            ViewState["Name"] = nameParts[0];

            //Transferring to different page
            Server.Transfer("Page2.aspx");
        }

        /* Function: StateBag ReturnViewState()
        * Parameters: 
        * Description : This is the function that gives viewstate of current page 
        * Returns : StateBag
        * Credit : MyFirstWebApp:M8-WDD-prof-SeanClarke
        */
        public StateBag ReturnViewState()
        {
            return ViewState;
        }
    }
}