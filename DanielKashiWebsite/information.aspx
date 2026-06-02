<%@ Page Title="מידע על תוכניות אימון ותרגילים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="information.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב כללי של עמוד המידע */
        .info-container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 10px;
        }

        .section-title {
            color: #1a252f;
            text-align: center;
            font-size: 2.2rem;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .section-subtitle {
            text-align: center;
            color: #7f8c8d;
            margin-bottom: 40px;
            font-size: 1.1rem;
        }

        .sub-heading {
            color: #2c3e50;
            font-size: 1.6rem;
            border-bottom: 2px solid #3498db;
            padding-bottom: 8px;
            margin-top: 40px;
            margin-bottom: 20px;
        }

        /* גריד לכרטיסי המידע */
        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        /* עיצוב כרטיס בודד */
        .info-card {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            border-top: 4px solid #3498db; /* פס עליון כחול ספורטיבי */
            transition: transform 0.3s ease;
        }

        .info-card:hover {
            transform: translateY(-5px);
        }

        .card-title {
            font-size: 1.25rem;
            color: #1a252f;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 1rem;
            color: #555555;
            line-height: 1.6;
            margin: 0;
        }

        /* עיצוב חלק התרגילים המשותף */
        .exercise-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        .exercise-table th {
            background-color: #3498db !important;
            color: white !important;
            text-align: right;
            padding: 12px 15px;
            font-weight: bold;
            border: none !important;
        }

        .exercise-table td {
            padding: 12px 15px;
            border-bottom: 1px solid #e2e8f0 !important;
            color: #4a5568;
            text-align: right;
            background-color: #ffffff !important;
        }

        .exercise-table tr:last-child td {
            border-bottom: none !important;
        }
        
        .badge {
            background-color: #e1f5fe;
            color: #0288d1;
            padding: 3px 8px;
            border-radius: 4px;
            font-size: 0.85rem;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="info-container">
        
        <h1 class="section-title">מדריך כושר ואימונים</h1>
        <p class="section-subtitle">כל מה שצריך לדעת על חלוקת תוכניות אימון ותרגילי בסיס נפוצים</p>

        <h2 class="sub-heading">חלוקת תוכניות אימון פופולריות (Training Splits)</h2>
        
        <div class="info-grid">
            <div class="info-card">
                <div class="card-title">גוף מלא (Full Body - FBW)</div>
                <p class="card-text">תוכנית שבה בכל אימון עובדים על כל קבוצות השרירים בגוף. מבוצעת לרוב בתדירות של 3 פעמים בשבוע, ומעולה למתחילים או למי שזמנו מוגבל.</p>
            </div>

            <div class="info-card">
                <div class="card-title">פלג גוף עליון / תחתון (Upper / Lower)</div>
                <p class="card-text">חלוקה שבה ביום אחד מתאמנים על כל שרירי פלג הגוף העליון (חזה, גב, כתפיים, ידיים) וביום שאחריו על פלג הגוף התחתון (רגליים ובטן).</p>
            </div>

            <div class="info-card">
                <div class="card-title">קדמי / אחורי (Anterior / Posterior)</div>
                <p class="card-text">פיצול שבו ביום אחד מתרכזים בשרירים הנמצאים בחלק הקדמי של הגוף (חזה, ארבע-ראשי, יד קדמית), וביום השני בשרירים האחוריים (גב, המסטרינגס, יד אחורית).</p>
            </div>

            <div class="info-card">
                <div class="card-title">דחיפה / משיכה / רגליים (Push / Pull / Legs)</div>
                <p class="card-text">חלוקה ל-3 ימים: יום דחיפה (חזה, כתפיים ויד אחורית), יום משיכה (גב עליון, רחב גבי ויד קדמית) ויום המוקדש כולו לרגליים ובטן.</p>
            </div>
        </div>

        <h2 class="sub-heading">תרגילים נפוצים ומומלצים לפי קבוצות שריר</h2>
        
        <table class="exercise-table">
            <thead>
                <tr>
                    <th style="width: 25%;">קבוצת שריר</th>
                    <th style="width: 35%;">שם התרגיל</th>
                    <th style="width: 40%;">סוג התנועה / דגש</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><span class="badge">חזה (Chest)</span></td>
                    <td>לחיצת חזה עם מוט / משקולות (Bench Press)</td>
                    <td>תרגיל מורכב, תנועת דחיפה, בונה כוח ומסה משמעותית.</td>
                </tr>
                <tr>
                    <td><span class="badge">גב (Back)</span></td>
                    <td>מתח או פולי עליון (Lat Pulldown)</td>
                    <td>תנועת משיכה אנכית, עבודה על שריר הרחב-גבי (הכנפיים).</td>
                </tr>
                <tr>
                    <td><span class="badge">גב (Back)</span></td>
                    <td>חתירה עם משקולת / כבל (Row)</td>
                    <td>תנועת משיכה אופקית, דגש על עובי הגב ומרכז הגב.</td>
                </tr>
                <tr>
                    <td><span class="badge">רגליים (Legs)</span></td>
                    <td>סקוואט (Squat)</td>
                    <td>תרגיל הבסיס החשוב ביותר לרגליים, דגש על שריר הארבע-ראשי והישבן.</td>
                </tr>
                <tr>
                    <td><span class="badge">כתפיים (Shoulders)</span></td>
                    <td>לחיצת כתפיים מעל הראש (Overhead Press)</td>
                    <td>תנועת דחיפה אנכית, בונה כתפיים חזקות ויציבות.</td>
                </tr>
                <tr>
                    <td><span class="badge">ידיים (Arms)</span></td>
                    <td>כפיפת מרפקים (Bicep Curl) / פשיטת מרפקים</td>
                    <td>תרגילים מבודדים ליד הקדמית והאחורית לעיצוב וחיזוק.</td>
                </tr>
            </tbody>
        </table>

    </div>

</asp:Content>