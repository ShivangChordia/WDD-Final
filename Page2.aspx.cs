﻿/*
*  FILE : Page2.aspx.cs
*  PROJECT : PROG2001 – WEB DEVELOPMENT AND DESIGN - Final Exam
*  PROGRAMMER : Shivang Chordia - schordia1092@conestogac.on.ca - 8871092
              Divya Patel - dpatel0488@conestogac.on.ca - 8870488
*  FIRST VERSION : 7th Dec 2023
*  DESCRIPTION : The File contains the code Behind for the Page 2 of the Web app
*/





using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Exam
{
    public partial class Page2 : System.Web.UI.Page
    {

        /* Function: Page_Load(object sender, EventArgs e)
       * Parameters: 
       * Description : This is the function that executes on page load
       * Returns : void
       */
        protected void Page_Load(object sender, EventArgs e)
        {
            //If it is redirected from other page
            if (PreviousPage != null && PreviousPageViewState != null)
            {
                string val = (string)PreviousPageViewState["Name"];
                greeting.InnerHtml = val;
            }
            // Is it is not redirected or posted on itself 
            else if (IsPostBack == false)
            {
                Server.Transfer("Page1.aspx");
            }
            
        }

        /* Function:  submitOrder(object sender, EventArgs e)
       * Parameters: 
       * Description : This is the function that sends to the next page
       * Returns : void
       */
        protected void submitOrder(object sender, EventArgs e)
        {
            ViewState["Name"]=greeting.InnerHtml;
            Server.Transfer("Page3.aspx");
        }


        /* Function: StateBag PreviousPageViewState
       * Parameters: 
       * Description : This is the function that extracts the Previous page's viewstate
       * Returns : StateBag
       * Credit : MyFirstWebApp:M8-WDD-prof-SeanClarke
       */
        private StateBag PreviousPageViewState
        {
            get
            {
                StateBag returnValue = null;
                if (Page.PreviousPage != null)
                {
                    Object objPreviousPage = (Object)PreviousPage;
                    MethodInfo objMethod = objPreviousPage.GetType().GetMethod("ReturnViewState");      //System.Reflection class
                    return (StateBag)objMethod.Invoke(objPreviousPage, null);
                }
                return returnValue;
            }
        }


        /* Function: StateBag ReturnViewState()
        * Parameters: 
        * Description : This is the function that gives viewstate of current page 
        * Returns : StateBag
        */
        public StateBag ReturnViewState()
        {
            return ViewState;
        }
    }
}