using System;

namespace tareaprog14
{
    public partial class Registros : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}