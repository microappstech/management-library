using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace learn
{
    public partial class register : System.Web.UI.Page
    {
        static string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btn_register(object sender, EventArgs e)
        {

            // sign up button click event
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }


            // user defined method
            bool checkMemberExists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + tb_username.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                    return false;
                }
            }
            void signUpNewMember()
            {
                
                try
                {
                    if(tb_password.Text != tb_confirme_password.Text)
                    {
                        Response.Write("<Script>alert('the password not matched')</Script>");
                    }
                    else if(tb_password.Text != tb_password.Text.Trim())
                    {
                        Response.Write("<script>alert('the password should not contain espaces')</script>");
                    }
                    else
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name,dob,country,email,city,pincode,full_adress,member_id,password,account_status)" +
                            " values(@full_name,@dob,@country,@email,@city,@pincode,@full_adress,@member_id,@password,@account_status)", con);
                        cmd.Parameters.AddWithValue("@full_name", tb_full_name.Text.Trim());
                        cmd.Parameters.AddWithValue("@dob", tb_date_birth.Text.Trim());
                        cmd.Parameters.AddWithValue("@country", drp_country.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@email", tb_email.Text.Trim());
                        cmd.Parameters.AddWithValue("@city", drp_city.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@pincode", tb_pincode.Text.Trim());
                        cmd.Parameters.AddWithValue("@full_adress", tb_full_adress.Text.Trim());
                        cmd.Parameters.AddWithValue("@member_id", tb_username.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", tb_password.Text.Trim());
                        cmd.Parameters.AddWithValue("@account_status", "pending");
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }

        }
    }
    
}