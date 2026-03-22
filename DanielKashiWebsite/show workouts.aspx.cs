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
            string dc = Request.Form["DateCheck"];
            string tc = Request.Form["TypeCheck"];

            string sql = "SELECT * FROM Workout WHERE " +
                " date LIKE N'%" + dc + "%' AND " +
                "type LIKE N'%" + tc + "%'";
       
            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            st += "<table border='1'";
            st += "<tr>";
            st += "<th>מספר אימון</th>";
            st += "<th>זמן</th>";
            st += "<th>אורך אימון</th>";
            st += "<th>תאריך</th>";
            st += "<td>סוג אימון</td>";
            st += "<td>תרגילים</td>";
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