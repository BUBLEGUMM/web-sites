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
        string sql = "SELECT * FROM tUsers";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            st += "<table border='1'";
            st += "tr>";
            st += "<td>שם פרטי</td>";
            st += "<td>שם משפחה</td>";
            st += "<td>מייל</td>";
            st += "<td>סיסמה</td>";
            st += "<td>גיל</td>";
            st += "<td>מגדר</td>";
            st += "<td>split</td>";
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