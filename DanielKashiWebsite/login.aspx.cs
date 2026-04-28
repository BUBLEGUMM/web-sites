    using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = Request.Form["email2"];
            string pass = Request.Form["pass"];

            if (email == "manager@gmail.com" && pass == "manager1234")
            {
                Session["nihol"] = "ok";
                Session["username"] = "מנהל דניאל";
                Response.Redirect("showMembers.aspx");
            }
            else
            {

                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE gmail = '" + email + "' " +
                    "AND password = '" + pass + "'";

               System.Data.DataTable dt= MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    Session["username"] = "אורח";

                    st = "אימייל או סיסמה שוגיים";
                }
                else
                {
                    Session["user"]= "ok";
                    Session["name"] = dt.Rows[0]["name"];

                    Response.Redirect("page2.aspx");
                }
            }
        }
    }
}