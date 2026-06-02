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

            // 1. בדיקת מנהל
            if (email == "manager@gmail.com" && pass == "manager1234")
            {
                Session["nihol"] = "ok";
                Session["name"] = "מנהל דניאל";
                Response.Redirect("showMembers.aspx");
            }
            else
            {
                // 2. בדיקת משתמש במסד הנתונים
                string sql = "SELECT * FROM tUsers WHERE gmail = '" + email + "' AND password = '" + pass + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                // אם השאילתה חזרה ריקה - הפרטים לא קיימים בטבלה
                if (dt.Rows.Count == 0)
                {
                    Session["name"] = "אורח";
                    st = "אימייל או סיסמה שגויים"; // <--- כאן נקבע הטקסט שיוצג למשתמש
                }
                else
                {
                    // אם המשתמש קיים
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["name"].ToString();
                    Response.Redirect("home.aspx");
                }
            }
        }
    }
}