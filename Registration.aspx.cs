using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    int temp;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table] where User_name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                
                Label1.Text = "User already Exists!!!";
                Response.Write("Label1.Text");
            }
            conn.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    { 
        try
        {
            if (temp == 0)
            {
                Guid newguid = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [Table] (User_name,Email_Id,Password,Id) values(@uname,@email1,@password1,@id1)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@uname", TextBox1.Text);
                com.Parameters.AddWithValue("@email1", TextBox2.Text);
                com.Parameters.AddWithValue("@password1", TextBox3.ToString());
                com.Parameters.AddWithValue("@id1", newguid.ToString());

                com.ExecuteNonQuery();
                Response.Redirect("login.aspx");
                conn.Close();
            }
            else
            {
                Label1.Text = "User already Exists!!!";
                Response.Write("Label1.text");
                Response.Redirect("Registration.aspx");
                
            }

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}