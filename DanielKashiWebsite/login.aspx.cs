using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
                Session["name"] = "מנהל דניאל";
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                string sql = "SELECT * FROM tUsers WHERE gmail = '" + email + "' AND password = '" + pass + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    Session["name"] = "אורח";
                    st = "אימייל או סיסמה שגויים"; 
                }
                else
                {
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["name"].ToString();
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}