﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_LIBRARY_MANAGEMENT
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; //sign up link button
                    LinkButton3.Visible = false; //log out link button
                    LinkButton7.Visible = false; //hello user link button

                    LinkButton6.Visible = true;  //admin login link button
                    LinkButton11.Visible = false; //Author management link button
                    LinkButton12.Visible = false; //publisher management link button
                    LinkButton8.Visible = false; //book inventory link button
                    LinkButton9.Visible = false; //book issuing link button
                    LinkButton10.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; //sign up link button
                    LinkButton3.Visible = true; //log out link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true;  //admin login link button
                    LinkButton11.Visible = false; //Author management link button
                    LinkButton12.Visible = false; //publisher management link button
                    LinkButton8.Visible = false; //book inventory link button
                    LinkButton9.Visible = false; //book issuing link button
                    LinkButton10.Visible = false; //member management link button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; //sign up link button
                    LinkButton3.Visible = true; //log out link button
                    LinkButton7.Visible = true; //hello user link button
                    LinkButton7.Text = "Hello Admin";

                    LinkButton6.Visible = false;  //admin login link button
                    LinkButton11.Visible = true; //Author management link button
                    LinkButton12.Visible = true; //publisher management link button
                    LinkButton8.Visible = true; //book inventory link button
                    LinkButton9.Visible = true; //book issuing link button
                    LinkButton10.Visible = true; //member management link button
                }
            }
            catch(Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            //for default view when user logsout
            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; //sign up link button
            LinkButton3.Visible = false; //log out link button
            LinkButton7.Visible = false; //hello user link button

            LinkButton6.Visible = true;  //admin login link button
            LinkButton11.Visible = false; //Author management link button
            LinkButton12.Visible = false; //publisher management link button
            LinkButton8.Visible = false; //book inventory link button
            LinkButton9.Visible = false; //book issuing link button
            LinkButton10.Visible = false; //member management link button
        }
        //view profile
        protected void LinkButton7_Click1(object sender, EventArgs e)
        {
            Response.Redirect("userprofilepage.aspx");
        }
    }
}