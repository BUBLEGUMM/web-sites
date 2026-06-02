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
    public string gmail;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string name = Request.Form["name"];
            string password = Request.Form["password"];
            string gmail = Request.Form["gmail"];
            string split = Request.Form["split"];
            string age = Request.Form["age"];
            string experience = Request.Form["experience"];
            string comment = Request.Form["comment"];

            // בדיקה האם המשתמש כבר קיים במערכת לפי האימייל
            string sqlCheck = "SELECT * FROM tUsers WHERE gmail=N'" + gmail + "'";
            bool usersExists = MyAdoHelper.IsExist(sqlCheck);

            if (usersExists)
            {
                st = "אימייל כבר קיים";
            }
            else
            {
                // יצירת שאילתת ההכנסה למסד הנתונים
                string sqlInsert =
                   "INSERT INTO Tusers (name, age, split, experience, comment, gmail, password) VALUES (" +
                   "N'" + name + "'," +
                   "N'" + age + "'," +
                   "N'" + split + "'," +
                   "N'" + experience + "'," +
                   "N'" + comment + "'," +
                   "N'" + gmail + "'," +
                   "N'" + password + "')";

                // הרצת השאילתה ושמירת המשתמש
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                // העברה אוטומטית לדף ההתחברות מיד לאחר הרישום המוצלח!
                Response.Redirect("login.aspx");
            }

            // השורות הבאות נשמרו למקרה שהן בשימוש באתר, אך שים לב שבזמן רישום מוצלח ה-Redirect יתבצע לפני הגעה אליהן
            name = "name:" + Request.Form["name"];
            age = "age: " + Request.Form["age"];
            experience = "years of training:" + Request.Form["experience"]; // תוקן מ-check2 ל-experience כדי להתאים לשדות הטופס שלך
            split = "split: " + Request.Form["split"]; // תוקן מ-radio1 ל-split כדי להתאים לשדות הטופס שלך
        }
    }
}