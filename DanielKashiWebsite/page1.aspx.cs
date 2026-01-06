using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public string years;
    public string name;
    public string age;
    public string split;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            name = "name:" + Request.Form["firstname"];
            age = "age: " + Request.Form["textarea2"];
            years = "years of training:" + Request.Form["check2"];
            split = "split: " + Request.Form["radio1"];
        }
    }   
 
                
}