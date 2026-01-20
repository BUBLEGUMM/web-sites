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
    public string years;
    public string name;
    public string age;
    public string split;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string firstname = Request.Form["name"];
            string password = Request.Form["password"];
            string gmail = Request.Form["gmail"];
            string split = Request.Form["split"];
            string age = Request.Form["age"];
            string experience = Request.Form["experience"];
            string comment= Request.Form["comment"];
            string sqlInsert =
                "INSERT INTO tUsers " +
                "VALUES (" +
                "N'" + firstname + "'," +
                 age + "," +
                 "N'" + split + "'," +
                 "N'" + experience + "'," +
                 "N'" + comment + "'," +
                 "N'" + gmail + "'," +
                 "N'" + password + "'," +
                
               

                ")";
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
            st = "נרשמת בהצלחה!";

            name = "name:" + Request.Form["firstname"];
            age = "age: " + Request.Form["textarea2"];
            years = "years of training:" + Request.Form["check2"];
            split = "split: " + Request.Form["radio1"];
        }
    }   
 
                
}