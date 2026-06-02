    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
        function checkAll() {
            nameErr.innerHTML = "";
            gmailErr.innerHTML = "";
            passErr.innerHTML = "";

            result = true;

            if (checkname() == false)
                
                result = false;

            if (checkpassword() == false)
                result = false;

            if (checkgmail()==false)
                result = false;

            return result;  
        }

        function checkname() {
                name = document.getElementById("name").value;
            if (name.length < 2) {
   
                nameErr.innerHTML = "שם חייב להיות לפחות 2 תווים";
                return false;
            }
            if (name.length > 15) {
                nameErr.innerHTML = "שם חייב להיות פחות 15 תווים";
                return false;
            }

            return true;
        }

        function checkgmail() {
            gmail = document.getElementById("gmail").value;
            if (gmail.length < 10) {
                gmailErr.innerHTML = "אימייל חייב להיות לפחות 10 תווים";
                return false;
            }

            if (gmail.length > 30) {
                gmailErr.innerHTML = "אימייל חייב להיות פחות 30 תווים";
                return false;
            }
       
            return true;
        }

        function checkpassword() {
            password = document.getElementById("password").value;
            if (password.length<6|| password.length>20) {
                passErr.innerHTML = " סיסמא חייבת להיות לפחות 6 תווים ופחות מ20";
                return false;
            }

            let hasLetter = /[a-zA-Z]/.test(password);

            let hasNumber = /[0-9]/.test(password);

            if (!hasLetter || !hasNumber) {
                passErr.innerHTML = "סיסמא חייבת לכלול לפחות אות אחת ומספר אחד";
                return false;
            }

            return true;
        }


    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>


</style>
    <h1>דף הרשמה</h1>
  <form runat="server" method="post" onsubmit="return checkAll();">
   שם פרטי: <input type="text" name="name" id="name" placeholder="exmple">
      <span id="nameErr"> </span>

        <br />
      אימייל: <input type="text" name="gmail" id="gmail" placeholder="example">
            <span id="emailErr"> </span>

     <br />
     סיסמא: <input type="text" name="password" id="password" placeholder="example">
                  <span id="passErr"> </span>

     <br />
        כמה זמן אתה מתאמן 
        <br />

              פחות משנה<input type="radio" name="experience" value="פחות משנה"  id="radio_1.0"><br />
              שנה: <input type="radio" name="experience" value="שנה" id="radio_2.0"><br />
              שנתיים: <input type="radio" name="experience" value="שנתיים" id="radio_3.0"> <br />
       יותר משנתיים <input type="radio" name="experience" checked value="יותר משנתיים" id="radio_4.0"><br />

         <br />
        תוכנית אימונים שתרצה : 
        <br />c

        full body<input type="radio" name="split" checked value="full body" id="radio_1"><br />
        upper lower<input type="radio" name="split" value="upper lower" id="radio_2"><br />
        anterior posterior<input type="radio" name="split" value="anterior posterior" checked id="radio_3"><br />
        push pull legs<input type="radio" name="split" value="push pull legs" id="radio_4">

      <br />
        תשובה פתוחה:
        <textarea rows="3" cols="20" name="comment" id="textarea1" placeholder="הכנס הערה אם יש"></textarea>
        <br />
      <br />
                <textarea rows="1" cols="10" name="age" id="age" placeholder="הכנס גיל "></textarea>
           
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</form>
    <%=st%>

</asp:Content>

