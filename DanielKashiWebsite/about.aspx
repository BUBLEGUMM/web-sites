<%@ Page Title="אודות - דניאל מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="page_6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב המכולה המרכזית של אודות */
        .about-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: right;
        }

        /* כותרת הדף */
        .about-title {
            text-align: center;
            color: #1a252f;
            font-size: 2.5rem;
            margin-bottom: 30px;
            position: relative;
        }

        /* קו תחתון דקורטיבי לכותרת */
        .about-title::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background-color: #3498db;
            margin: 10px auto 0 auto;
            border-radius: 2px;
        }

        /* פסקאות הטקסט */
        .about-text {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #4a5568;
            margin-bottom: 20px;
        }

        /* הדגשות */
        .highlight {
            color: #3498db;
            font-weight: bold;
        }

        /* בלוק סיכום/אני מאמין */
        .vision-box {
            background-color: #f8fafc;
            border-right: 5px solid #3498db;
            padding: 20px;
            margin-top: 40px;
            border-radius: 4px;
        }

        .vision-title {
            font-size: 1.3rem;
            color: #1a252f;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="about-container">
        <h1 class="about-title">נעים להכיר, אני דניאל</h1>
        
        <p class="about-text">
            הדרך שלי בעולם הכושר והספורט התחילה <span class="highlight">כבר לפני מספר שנים</span>. 
            מה שהתחיל כאימון אישי קצר בחדר הכושר, הפך מהר מאוד לאורח חיים, לתשוקה ענקית ולחלק בלתי נפרד ממי שאני היום. 
            במהלך השנים האלו חקרתי, התאמנתי, ניסיתי בעצמי שיטות שונות והבנתי כמה כוח יש לשינוי גופני על הביטחון וההרגשה הכללית שלנו.
        </p>

        <p class="about-text">
            היום, כ<span class="highlight">מאמן אישי בתחילת דרכו</span>, המטרה הכי גדולה שלי היא לקחת את כל הניסיון שצברתי על הגוף שלי בשנים האחרונות, 
            ולהעביר אותו הלאה אליכם. אני מאמין שלא צריך "לסבול" בדרך למטרה, אלא למצוא את סגנון האימון שמתאים בדיוק לכם וגורם לכם לחכות לאימון הבא.
        </p>

        <p class="about-text">
            האתר הזה נבנה במיוחד כדי לתת לכם מעטפת שלמה – החל מניהול ומעקב אימונים מסודר, דרך מאגר תרגילים ועד לליווי צמוד שלי. 
            לא משנה אם מעולם לא הרמתם משקולת או שאתם פשוט מחפשים מישהו שידחוף אתכם קדימה, אני כאן כדי לעשות את זה יחד אתכם, צעד אחר צעד.
        </p>

        <div class="vision-box">
            <div class="vision-title">המוטו שלי לאימונים:</div>
            <p class="about-text" style="margin: 0;">
                "ההתמדה מנצחת את הכישרון. לא צריך להיות מושלמים מהיום הראשון, צריך פשוט להתחיל ולעשות את הצעד הראשון."
            </p>
        </div>
    </div>

</asp:Content>