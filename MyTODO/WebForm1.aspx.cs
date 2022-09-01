using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MyTODO
{
    public partial class WebForm1 : System.Web.UI.Page
    {
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            var text = TextAdd.Text;
            SqlConnection sqlConn = new SqlConnection("Data Source=SARAII-PC;Initial Catalog=todo_db;Integrated Security=True");       
            sqlConn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[todoTable]([TODO]) VALUES ('" + text + "')", sqlConn);
            cmd.ExecuteNonQuery();

            TextAdd.Text = "";

            sqlConn.Close();
            GridView1.DataBind();
        }
    }
}
