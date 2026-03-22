using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page1 : System.Web.UI.Page
{
    public string st = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
           string time = Request.Form["time"];
           string length = Request.Form["length"];
           string date = Request.Form["date"];
           string type = Request.Form["type"];
           string exercises = Request.Form["exercises"];

            string sqlInsert =
                "INSERT INTO Workout (time, length, type, date, exercises) " +
                "VALUES ('" + time + "', '" + length + "', '" + type + "', '" + date + "', '" +exercises + "')";


            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            st = "Done";
            }
            
          
        }
    }   
 
                
