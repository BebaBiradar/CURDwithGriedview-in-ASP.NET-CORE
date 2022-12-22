using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace curdwithgriedview
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue =
            ( (TextBox)GridView1.FooterRow.FindControl("FooterName")).Text;

            SqlDataSource1.InsertParameters["gender"].DefaultValue =
            ((DropDownList)GridView1.FooterRow.FindControl("FooterDdlGender")).Text;

            SqlDataSource1.InsertParameters["class"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("FooterClass")).Text;
            SqlDataSource1.Insert();//this line or code showing the data insert in table show there only without any pop msg


            //below line or code showing the data insert in table show there only with pop msg
            //int a=SqlDataSource1.Insert();
            // if(a>0)
            // {
            //     Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Insertion successfull !!')</script>");
            // }
            // else
            // {
            //     {
            //         Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Insertion Faild !!')</script>");
            //     }
            // }
        }
    }
}