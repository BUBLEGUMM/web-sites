using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showMembers : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) { 
            string pc = Request.Form["passcheck"];
            string gc = Request.Form["gmailcheck"];

            string sql = "SELECT * FROM tUsers WHERE " +
                " password='" + pc + "' AND " +
                "gmail=N'" + gc + "'";
       
            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            st += "<table border='1'";
            st += "tr>";
            st += "<th>שם פרטי</th>";
            st += "<th>גיל</th>";
            st += "<th>תוכנית</th>";
            st += "<td>נסיון</td>";
            st += "<td>הערה</td>";
            st += "<td>מייל</td>";
            st += "<td>סיסמא</td>";
            st += "</tr>";
             for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for(int j = 0; j < dt.Columns.Count; j++)
                {
                    st += "<td>" + dt.Rows[i][j] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    
        }
   }

}