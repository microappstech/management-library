using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace learn
{
    public partial class l_admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(strcon))
            {
                try
                {
                    if (connection.State == ConnectionState.Closed)
                    {
                        connection.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id=@username and [password] = @password;", connection);
                    cmd.Parameters.AddWithValue("@username", tb_username.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", tb_password.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                    if (dt.Rows.Count > 0)
                    {
                        Session["username"] = dt.Rows[0][6];
                        Session["email"] = dt.Rows[0][4];
                        Session["fullname"] = dt.Rows[0][0];
                        Session["status"] = dt.Rows[0][9];
                        Session["role"] = "admin";
                        Response.Redirect("homepage.aspx");

                    }
                    else
                    {
                        Response.Write("<p class='text-danger'>the password incorrect</p>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }

        }
    }
}