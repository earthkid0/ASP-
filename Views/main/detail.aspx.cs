using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace community.main
{
    public partial class DetailPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Community"].ConnectionString);

                string selectString = "SELECT * FROM board WHERE id=" + Request["sn"];

                SqlCommand cmd = new SqlCommand(selectString);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    name.Text = "�ۼ���: " + dr["name"].ToString();
                    tag.Text = "�±�: " + dr["tag"].ToString();
                    title.Text = "����: " + dr["title"].ToString();
                    message.Text = dr["message"].ToString();

                    btnEdit.PostBackUrl =
                    "./edit.aspx?sn=" + dr["id"].ToString();


                    dr.Close();
                    con.Close();
                }
            }
        }
   }
}

