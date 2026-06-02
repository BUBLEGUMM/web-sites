<%@ Page Title="הרשמה - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="page1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
        function checkAll() {
            document.getElementById("nameErr").innerHTML = "";
            document.getElementById("emailErr").innerHTML = ""; // תוקן מ-gmailErr כדי להתאים ל-id ב-HTML
            document.getElementById("passErr").innerHTML = "";

            result = true;

            if (checkname() == false)
                result = false;

            if (checkpassword() == false)
                result = false;

            if (checkgmail() == false)
                result = false;

            return result;
        }

        function checkname() {
            name = document.getElementById("name").value;
            if (name.length < 2) {
                document.getElementById("nameErr").innerHTML = "שם חייב להיות לפחות 2 תווים";
                return false;
            }
            if (name.length > 15) {
                document.getElementById("nameErr").innerHTML = "שם חייב להיות פחות 15 תווים";
                return false;
            }
            return true;
        }

        function checkgmail() {
            gmail = document.getElementById("gmail").value;
            if (gmail.length < 10) {
                document.getElementById("emailErr").innerHTML = "אימייל חייב להיות לפחות 10 תווים";
                return false;
            }
            if (gmail.length > 30) {
                document.getElementById("emailErr").innerHTML = "אימייל חייב להיות פחות 30 תווים";
                return false;
            }
            return true;
        }

        function checkpassword() {
            password = document.getElementById("password").value;
            if (password.length < 6 || password.length > 20) {
                document.getElementById("passErr").innerHTML = "סיסמא חייבת להיות לפחות 6 תווים ופחות מ-20";
                return false;
            }

            let hasLetter = /[a-zA-Z]/.test(password);
            let hasNumber = /[0-9]/.test(password);

            if (!hasLetter || !hasNumber) {
                document.getElementById("passErr").innerHTML = "סיסמא חייבת לכלול לפחות אות אחת ומספר אחד";
                return false;
            }
            return true;
        }
    </script>

    <style>
        /* מכולה מרכזית מעוצבת לטופס הרשמה */
        .signup-container {
            max-width: 500px;
            margin: 30px auto;
            background-color: #ffffff;
            padding: 35px 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
            text-align: right;
        }

        .signup-title {
            text-align: center;
            color: #1a252f;
            margin-bottom: 25px;
            font-size: 2rem;
            font-weight: bold;
        }

        /* קבוצת שדה אסתטית */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #4a5568;
            font-weight: 600;
            font-size: 0.95rem;
        }

        /* שדות טקסט, גיל והערות */
        .form-control {
            width: 100%;
            padding: 11px 15px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
            box-sizing: border-box;
            transition: all 0.3s ease;
            font-family: inherit;
        }

        .form-control:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.15);
        }

        /* כותרות סעיפי בחירה (רדיו) */
        .section-label {
            font-weight: 600;
            color: #1a252f;
            margin-top: 20px;
            margin-bottom: 10px;
            display: block;
            border-bottom: 1px solid #edf2f7;
            padding-bottom: 5px;
        }

        /* עיצוב אופציות הרדיו */
        .radio-group {
            margin-bottom: 15px;
        }

        .radio-option {
            display: flex;
            align-items: center;
            margin-bottom: 8px;
            cursor: pointer;
            color: #4a5568;
        }

        .radio-option input[type="radio"] {
            margin-left: 10px; /* רווח נכון לעברית מימין לשמאל */
            cursor: pointer;
            width: 16px;
            height: 16px;
        }

        /* עיצוב שגיאות ה-JavaScript */
        .error-text {
            color: #e74c3c;
            font-size: 0.85rem;
            font-weight: bold;
            display: block;
            margin-top: 5px;
        }

        /* כפתור שליחה גדול ומזמין */
        .btn-signup {
            width: 100%;
            background-color: #2ecc71; /* ירוק התחלה והרשמה */
            color: white;
            border: none;
            padding: 13px;
            font-size: 1.15rem;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 20px;
        }

        .btn-signup:hover {
            background-color: #27ae60;
        }

        .btn-signup:active {
            transform: scale(0.99);
        }

        /* הודעת סטטוס מהשרת st */
        .server-status {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
            color: #2c3e50;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="signup-container">
        <h1 class="signup-title">דף הרשמה</h1>
        
        <form runat="server" method="post" onsubmit="return checkAll();">
            
            <div class="form-group">
                <label for="name">שם פרטי:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="הכנס שם פרטי...">
                <span id="nameErr" class="error-text"></span>
            </div>

            <div class="form-group">
                <label for="gmail">אימייל:</label>
                <input type="text" name="gmail" id="gmail" class="form-control" placeholder="example@gmail.com">
                <span id="emailErr" class="error-text"></span>
            </div>

            <div class="form-group">
                <label for="password">סיסמה:</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="הכנס סיסמה...">
                <span id="passErr" class="error-text"></span>
            </div>

            <div class="form-group">
                <label for="age">גיל:</label>
                <textarea rows="1" name="age" id="age" class="form-control" placeholder="הכנס גיל..."></textarea>
            </div>

            <span class="section-label">כמה זמן אתה מתאמן?</span>
            <div class="radio-group">
                <label class="radio-option">
                    <input type="radio" name="experience" value="פחות משנה" id="radio_1.0"> פחות משנה
                </label>
                <label class="radio-option">
                    <input type="radio" name="experience" value="שנה" id="radio_2.0"> שנה
                </label>
                <label class="radio-option">
                    <input type="radio" name="experience" value="שנתיים" id="radio_3.0"> שנתיים
                </label>
                <label class="radio-option">
                    <input type="radio" name="experience" checked value="יותר משנתיים" id="radio_4.0"> יותר משנתיים
                </label>
            </div>

            <span class="section-label">תוכנית אימונים שתרצה:</span>
            <div class="radio-group">
                <label class="radio-option">
                    <input type="radio" name="split" checked value="full body" id="radio_1"> Full Body
                </label>
                <label class="radio-option">
                    <input type="radio" name="split" value="upper lower" id="radio_2"> Upper Lower
                </label>
                <label class="radio-option">
                    <input type="radio" name="split" value="anterior posterior" id="radio_3"> Anterior Posterior
                </label>
                <label class="radio-option">
                    <input type="radio" name="split" value="push pull legs" id="radio_4"> Push Pull Legs
                </label>
            </div>

            <div class="form-group">
                <label for="textarea1">הערות נוספות:</label>
                <textarea rows="3" name="comment" id="textarea1" class="form-control" placeholder="הכנס הערה אם יש..."></textarea>
            </div>

            <input id="Submit1" type="submit" value="סיום הרשמה ושליחה" class="btn-signup" />
            
        </form>
        
        <% if (!string.IsNullOrEmpty(st)) { %>
            <div class="server-status"><%= st %></div>
        <% } %>
    </div>

</asp:Content>