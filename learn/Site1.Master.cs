using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace learn
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                    try
                    {
                        if (Session["role"] is null)
                        {
                            btn_user_login.Visible = true; // user login link button
                            btn_signup.Visible = true; // sign up link button

                            btn_logout.Visible = false; // logout link button
                            btn_profile.Visible = false; // hello user link button


                            btn_admin_login.Visible = true; // admin login link button
                            btn_auth_mang.Visible = false; // author management link button
                            btn_publ_manag.Visible = false; // publisher management link button
                            btn_book_inventory.Visible = false; // book inventory link button
                            btn_book_issuing.Visible = false; // book issuing link button
                            //LinkButton10.Visible = false; // member management link button

                        }
                        else if (Session["role"].Equals("user"))
                        {
                            btn_user_login.Visible = false; // user login link button
                            btn_signup.Visible = false; // sign up link button

                            btn_logout.Visible = true; // logout link button
                            btn_profile.Visible = true; // hello user link button
                            btn_profile.Text = "Hello " + Session["username"].ToString();


                            btn_admin_login.Visible = true; // admin login link button
                            btn_auth_mang.Visible = false; // author management link button
                            btn_publ_manag.Visible = false; // publisher management link button
                            btn_book_inventory.Visible = false; // book inventory link button
                            btn_book_issuing.Visible = false; // book issuing link button
                        }
                        else if (Session["role"].Equals("admin"))
                        {
                            btn_user_login.Visible = false; // user login link button
                            btn_signup.Visible = false; // sign up link button

                            btn_logout.Visible = true; // logout link button
                            btn_profile.Visible = true; // hello user link button
                            btn_profile.Text = "Hello Admin";


                            btn_admin_login.Visible = false; // admin login link button
                            btn_auth_mang.Visible = true; // author management link button
                            btn_publ_manag.Visible = true; // publisher management link button
                            btn_book_inventory.Visible = true; // book inventory link button
                            btn_book_issuing.Visible = true; // book issuing link button
                            btn_memeber_management.Visible = true; // memeber mangement
                        }
                    }
                    catch (Exception ex)
                    {

                    }
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("l_admin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuthorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublisherManagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("invontery.aspx");
        }


        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            btn_user_login.Visible = true; // user login link button
            btn_signup.Visible = true; // sign up link button

            btn_logout.Visible = false; // logout link button
            btn_profile.Visible = false; // hello user link button


            btn_admin_login.Visible = true; // admin login link button
            btn_auth_mang.Visible = false; // author management link button
            btn_publ_manag.Visible = false; // publisher management link button
            btn_book_inventory.Visible = false; // book inventory link button
            btn_book_issuing.Visible = false; // book issuing link button
            btn_memeber_management.Visible = false; // member management link button
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {

        }
    }
}