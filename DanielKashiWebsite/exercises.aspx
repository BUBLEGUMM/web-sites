<%@ Page Title="מאגר תרגילים - מאמן אישי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="exercises.aspx.cs" Inherits="page_4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .exercises-container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 10px;
            text-align: right;
        }

        .page-title {
            text-align: center;
            color: #1a252f;
            font-size: 2.5rem;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .page-subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 40px;
            font-size: 1.1rem;
        }

        .muscle-group-title {
            color: #2c3e50;
            font-size: 1.6rem;
            border-bottom: 3px solid #3498db;
            padding-bottom: 5px;
            margin-top: 40px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .exercise-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            margin-bottom: 20px;
        }

        .exercise-card {
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden; 
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .exercise-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .exercise-image-box {
            width: 100%;
            height: 220px;
            background-color: #1e293b; 
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 1px solid #e2e8f0;
            overflow: hidden;
        }

        .exercise-image-box img {
            width: 100%;
            height: 100%;
            object-fit: contain; 
            max-width: 100%;
            max-height: 100%;
        }

        .exercise-content {
            padding: 20px;
        }

        .exercise-name {
            font-size: 1.3rem;
            color: #1a252f;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .exercise-description {
            font-size: 0.95rem;
            color: #555555;
            line-height: 1.6;
            margin-bottom: 15px;
            height: 70px; 
            overflow: hidden;
        }

        .muscle-tags {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .tag {
            background-color: #e1f5fe;
            color: #0288d1;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 0.8rem;
            font-weight: bold;
        }
        
        .tag-secondary {
            background-color: #f0f4f8;
            color: #627d98;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="exercises-container">
        
        <h1 class="page-title">מאגר תרגילים נפוצים</h1>
        <p class="page-subtitle">טכניקה נכונה היא המפתח להצלחה. לחץ על התרגילים כדי ללמוד על הביצוע שלהם.</p>

        <div class="muscle-group-title">חזה ויד אחורית (Push)</div>
        
        <div class="exercise-grid">
            
            <div class="exercise-card">
                <div class="exercise-image-box">
                    <img src="images/bench_press.jpg" alt="לחיצת חזה עם מוט" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ4YMnftw6b5AAKZ5kwdsEqMeWmdpVoUPpYg&s';" />
                </div>
                <div class="exercise-content">
                    <div class="exercise-name">לחיצת חזה עם מוט (Bench Press)</div>
                    <p class="exercise-description">תרגיל הבסיס המוביל לבניית כוח ומסת שריר בחזה. מבוצע בשכיבה על ספסל שטוח, הורדת המוט עד לקו החזה ודחיפתו מעלה.</p>
                    <div class="muscle-tags">
                        <span class="tag">חזה גדול</span>
                        <span class="tag tag-secondary">יד אחוריות</span>
                        <span class="tag tag-secondary">כתף קדמית</span>
                    </div>
                </div>
            </div>

            <div class="exercise-card">
                <div class="exercise-image-box">
                    <img src="images/dips.jpg" alt="אימון מקבילים" onerror="this.src='https://liftmanual.com/wp-content/uploads/2023/04/triceps-dip.jpg';" />
                </div>
                <div class="exercise-content">
                    <div class="exercise-name">מקבילים (Dips)</div>
                    <p class="exercise-description">תרגיל משקל גוף עוצמתי המתמקד בחלק התחתון של החזה וביד האחורית. יש לשמור על ירידה מבוקרת ועלייה מלאה.</p>
                    <div class="muscle-tags">
                        <span class="tag">יד אחורית</span>
                        <span class="tag tag-secondary">חזה תחתון</span>
                    </div>
                </div>
            </div>

        </div>

        <div class="muscle-group-title">גב ויד קדמית (Pull)</div>
        
        <div class="exercise-grid">
            
            <div class="exercise-card">
                <div class="exercise-image-box">
                    <img src="images/pullups.jpg" alt="תרגיל מתח" onerror="this.src='https://img1.wsimg.com/isteam/ip/43b68455-7dbb-4a2d-84c4-3da242d96b7c/IMG_1733.jpeg/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:1280';" />
                </div>
                <div class="exercise-content">
                    <div class="exercise-name">עליות מתח (Pull-Ups)</div>
                    <p class="exercise-description">תרגיל משקל הגוף הטוב ביותר לפיתוח רוחב הגב ("הכנפיים"). מבוצע באחיזה רחבה עם הבאת בית החזה אל המוט.</p>
                    <div class="muscle-tags">
                        <span class="tag">רחב גבי (גב)</span>
                        <span class="tag tag-secondary">יד קדמית</span>
                    </div>
                </div>
            </div>

            <div class="exercise-card">
                <div class="exercise-image-box">
                    <img src="images/rows.jpg" alt="חתירה עם משקולות" onerror="this.src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWyJOYOzOl87SxcDLGn3ZOEC2C_VhjJIM9zQ&s';" />
                </div>
                <div class="exercise-content">
                    <div class="exercise-name">חתירה עם משקולת (Dumbbell Row)</div>
                    <p class="exercise-description">עבודה על עובי ומרכז הגב. מבוצע בעזרת השענות על ספסל ומשיכת המשקולת לכיוון המותן תוך כיווץ שכמות.</p>
                    <div class="muscle-tags">
                        <span class="tag">מרכז הגב</span>
                        <span class="tag tag-secondary">רחב גבי</span>
                    </div>
                </div>
            </div>

        </div>

        <div class="muscle-group-title">רגליים (Legs)</div>
        
        <div class="exercise-grid">
            
            <div class="exercise-card">
                <div class="exercise-image-box">
                    <img src="images/squat.jpg" alt="תרגיל סקוואט" onerror="this.src='https://training.fit/wp-content/uploads/2020/03/kniebeugen-langhantel-800x448.png';" />
                </div>
                <div class="exercise-content">
                    <div class="exercise-name">סקוואט עם מוט (Barbell Squat)</div>
                    <p class="exercise-description">מלך תרגילי הרגליים. מפעיל את כל פלג הגוף התחתון, משפר כוח מתפרץ, יציבות ומחזק את שרירי הליבה.</p>
                    <div class="muscle-tags">
                        <span class="tag">ארבע ראשי</span>
                        <span class="tag tag-secondary">ישבן</span>
                        <span class="tag tag-secondary">המסטרינגס</span>
                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>