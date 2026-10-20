# SmartCardio Guardian - Page Generator: Pages 31 to 44
# Chapters 15, 16, 17, 18, 19, 20 & Technical Annexes (Alternating FR / AR)

function Get-Page31-Ch15-FR {
  return @"
  <!-- PAGE 31: CHAPTER 15 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 15</span>
        <span class="header-title">Gestion de l'Énergie &amp; Autonomie</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>15. Gestion de l'Énergie &amp; Autonomie de la Batterie</h1>
          <p>Stratégies d'Économie d'Énergie, Modes Faible Consommation et Objectif ~12 Heures</p>
        </div>
        <div class="chapter-badge">POWER MANAGEMENT</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_12_BATTERY
        <div class="figure-caption"><strong>Figure 15.1 —</strong> Schéma de gestion d'énergie de la batterie Li-Po, régulation LDO et stratégies d'optimisation d'autonomie</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">15.1 Objectif d'Autonomie Journalière (~12 Heures)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Pour garantir un suivi continu durant la journée active d'un patient sans recharge intermédiaire, le système vise une autonomie d'environ <strong>12 heures</strong> sur une batterie <strong>Li-Po 3.7V de 1200 mAh</strong>.
          </p>
          <ul class="tech-list">
            <li><strong>Surveillance de la tension batterie :</strong> Pont diviseur résistif relié à l'ADC (GPIO 4) avec compensation de décharge non-linéaire.</li>
            <li><strong>Alerte batterie faible :</strong> Notification prioritaire transmise à l'aidant lorsque la capacité résiduelle passe sous le seuil critique de <strong>20%</strong>.</li>
            <li><strong>Circuit de charge TP4056 :</strong> Module de recharge USB-C avec protections contre surcharge, décharge profonde et surintensité.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">15.2 Techniques de Réduction de la Consommation</div>
          <ul class="tech-list">
            <li><strong>Cyclage du Capteur Optique (Sensor Duty Cycling) :</strong> Le MAX30102 est activé 10 secondes par minute pour extraire la FC/SpO₂, puis mis en mode Shutdown (0.7 µA).</li>
            <li><strong>Gestion Intelligente du GPS (NEO-6M) :</strong> Le module GPS (très énergivore, ~45 mA) est maintenu en sommeil profond et n'est réveillé qu'en cas d'urgence ou d'appui SOS.</li>
            <li><strong>Mode Veille ESP32-S3 (Light Sleep) :</strong> Entre deux cycles d'acquisition, le SoC bascule en veille légère, réduisant le courant à quelques milliampères.</li>
            <li><strong>Batching des Trames BLE :</strong> Envoi groupé des données plutôt que des transmissions radio continues.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 15.1 — Bilan Estimatif de Consommation Énergétique par Sous-Système</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Sous-Système / Composant</th>
              <th>Mode Actif (Courant Typique)</th>
              <th>Mode Sommeil (Standby)</th>
              <th>Cycle de Travail (Duty Cycle)</th>
              <th>Courant Moyen Estimé</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>ESP32-S3 (Dual-Core 240MHz)</strong></td>
              <td>~60 mA (Calcul / BLE)</td>
              <td>~0.8 mA (Light Sleep)</td>
              <td>20% actif / 80% veille</td>
              <td>~12.6 mA</td>
            </tr>
            <tr>
              <td><strong>MAX30102 (LEDs Rouge + IR)</strong></td>
              <td>~20 mA (Impulsions)</td>
              <td>~0.7 µA (Shutdown)</td>
              <td>16.7% (10s sur 60s)</td>
              <td>~3.3 mA</td>
            </tr>
            <tr>
              <td><strong>MAX30205 (Température)</strong></td>
              <td>~0.6 mA (Conversion)</td>
              <td>~3.5 µA (Standby)</td>
              <td>5% (Ponctuel)</td>
              <td>~0.04 mA</td>
            </tr>
            <tr>
              <td><strong>MPU6050 (Accélér. + Gyro)</strong></td>
              <td>~3.8 mA (Actif DMP)</td>
              <td>~10 µA (Sleep)</td>
              <td>100% (Surveillance chute)</td>
              <td>~3.8 mA</td>
            </tr>
            <tr>
              <td><strong>Écran OLED 0.96" SSD1306</strong></td>
              <td>~15 mA (Affichage actif)</td>
              <td>~10 µA (Screen Off après 10s)</td>
              <td>15% (Allumage ponctuel)</td>
              <td>~2.3 mA</td>
            </tr>
            <tr>
              <td><strong>GPS NEO-6M (Récepteur)</strong></td>
              <td>~45 mA (Acquisition satellite)</td>
              <td>~0.1 mA (Backup Mode)</td>
              <td>Événementiel (Urgence uniquement)</td>
              <td>~0.2 mA moyen</td>
            </tr>
            <tr>
              <td><strong>TOTAL MOYEN ESTIMÉ</strong></td>
              <td colspan="3"><em>Consommation moyenne prévisionnelle sur profil type journalier</em></td>
              <td><strong>~22.2 mA</strong> (&gt; 40h théorique / ~12h cible réelle)</td>
            </tr>
          </tbody>
        </table>
        <div style="font-size:7.2pt; color:var(--amber); margin-top:1.5mm; font-weight:600;">
          * Note : L'autonomie réelle en conditions d'usage continu et transmissions répétées sera mesurée expérimentalement sur banc de décharge.
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 15 : Gestion de l'Énergie</div>
      <div class="footer-right">Page 31 / 44</div>
    </div>
  </div>
"@
}

function Get-Page32-Ch15-AR {
  return @"
  <!-- PAGE 32: CHAPTER 15 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 15</span>
        <span class="header-title">إدارة الطاقة وتحسين استهلاك البطارية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>15. إدارة الطاقة وتحسين استهلاك البطارية</h1>
          <p>استراتيجيات ترشيد الاستهلاك، وأنماط السكون الذكية، وتحقيق استقلالية 12 ساعة</p>
        </div>
        <div class="chapter-badge">إدارة الطاقة</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_12_BATTERY
        <div class="figure-caption"><strong>شكل 15.1 —</strong> دائرة تنظيم طاقة بطارية الليثيوم بوليمر، والتحكم بالجهد واستراتيجيات ترشيد الاستهلاك</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">15.1 استهداف استقلالية يومية (~12 ساعة)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            لضمان استمرار رصد المؤشرات الحيوية طوال فترة نشاط المريض اليومية دون انقطاع، يستهدف النظام استقلالية تشغيلية تبلغ نحو <strong>12 ساعة</strong> بالاعتماد على بطارية <strong>Li-Po 3.7V سعة 1200mAh</strong>.
          </p>
          <ul class="tech-list">
            <li><strong>مراقبة مستوى الشحن:</strong> مقسم جهد مقاوم متصل بمدخل ADC (GPIO 4) لمتابعة منحنى التفريغ بدقة.</li>
            <li><strong>إنذار انخفاض البطارية:</strong> إرسال إشعار فوري لمرافق المريض عند انخفاض شحن الجهاز عن <strong>20%</strong>.</li>
            <li><strong>دائرة الشحن TP4056:</strong> منفذ USB-C مدمج مزود بحماية ضد الشحن الزائد والتفريغ العميق وقصر الدارة.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">15.2 آليات وتقنيات تقليص استهلاك التيار الكهربائي</div>
          <ul class="tech-list">
            <li><strong>التشغيل الدوري للحساس الضوئي (Duty Cycling):</strong> تفعيل MAX30102 لمدة 10 ثوانٍ في الدقيقة ثم إعادته لوضع السكون (0.7 ميكرو أمبير).</li>
            <li><strong>الإدارة الذكية لوحدة GPS (NEO-6M):</strong> إبقاء مستقبل الـ GPS في وضع السبات التام وتفعيله حصرًا عند وقوع الخطر أو ضغط زر SOS.</li>
            <li><strong>السكون الخفيف للمعالج (Light Sleep):</strong> انتقال شريحة ESP32-S3 بين النوافذ الزمنية لوضع السكون لتقليص استهلاك التيار.</li>
            <li><strong>تجميع حزم البث (Data Batching):</strong> تقليل فترات تشغيل هوائي البلوتوث بإرسال البيانات المجمعة دفعة واحدة.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 15.1 — تقدير الميزانية الطاقية للأنظمة الفرعية والمكونات الإلكترونية</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المكون الإلكتروني</th>
              <th>التيار النشط (قيمة تقديرية)</th>
              <th>تيار السكون (Standby)</th>
              <th>دورة العمل التشغيلية (Duty Cycle)</th>
              <th>متوسط التيار المحسوب</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>ESP32-S3 (معالج ثنائي)</strong></td>
              <td>~60 ميلي أمبير (معالجة/بث)</td>
              <td>~0.8 ميلي أمبير (Light Sleep)</td>
              <td>20% نشط / 80% سكون</td>
              <td>~12.6 ميلي أمبير</td>
            </tr>
            <tr>
              <td><strong>حساس MAX30102</strong></td>
              <td>~20 ميلي أمبير (نبضات ضوئية)</td>
              <td>~0.7 ميكرو أمبير (إغلاق)</td>
              <td>16.7% (10 ثوانٍ كل دقيقة)</td>
              <td>~3.3 ميلي أمبير</td>
            </tr>
            <tr>
              <td><strong>حساس MAX30205</strong></td>
              <td>~0.6 ميلي أمبير (تحويل)</td>
              <td>~3.5 ميكرو أمبير (انتظار)</td>
              <td>5% (أخذ عينات دورية)</td>
              <td>~0.04 ميلي أمبير</td>
            </tr>
            <tr>
              <td><strong>حساس الحركة MPU6050</strong></td>
              <td>~3.8 ميلي أمبير (نشط DMP)</td>
              <td>~10 ميكرو أمبير (سكون)</td>
              <td>100% (مراقبة مستمرة للسقوط)</td>
              <td>~3.8 ميلي أمبير</td>
            </tr>
            <tr>
              <td><strong>شاشة OLED مقاس 0.96"</strong></td>
              <td>~15 ميلي أمبير (عرض ساطع)</td>
              <td>~10 ميكرو أمبير (إطفاء بعد 10ث)</td>
              <td>15% (إضاءة عند الحاجة)</td>
              <td>~2.3 ميلي أمبير</td>
            </tr>
            <tr>
              <td><strong>مستقبل GPS (NEO-6M)</strong></td>
              <td>~45 ميلي أمبير (التقاط أقمار)</td>
              <td>~0.1 ميلي أمبير (وضع الحفظ)</td>
              <td>حدثي (حالات الطوارئ فقط)</td>
              <td>~0.2 ميلي أمبير وسطي</td>
            </tr>
            <tr>
              <td><strong>المجموع الإجمالي المحسوب</strong></td>
              <td colspan="3"><em>متوسط الاستهلاك الكلي المتوقع للنموذج الأولي</em></td>
              <td><strong>~22.2 ميلي أمبير</strong> (&gt; 40 س نظريًا / ~12 س مستهدفة)</td>
            </tr>
          </tbody>
        </table>
        <div style="font-size:7.2pt; color:var(--amber); margin-top:1.5mm; font-weight:600;">
          * تنبيه: سيتم قياس العمر التشغيلي الحقيقي للبطارية تجريبيًا في المختبر أثناء اختبارات التفريغ الفعلي في ظروف الاستخدام اليومي.
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الخامس عشر : إدارة الطاقة والبطارية</div>
      <div class="footer-right">الصفحة 32 / 44</div>
    </div>
  </div>
"@
}

function Get-Page33-Ch16-FR {
  return @"
  <!-- PAGE 33: CHAPTER 16 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 16</span>
        <span class="header-title">Stratégie de Test &amp; Validation Expérimentale</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>16. Stratégie de Test &amp; Validation Expérimentale</h1>
          <p>Protocoles de Comparaison Face aux Équipements de Référence et Bancs d'Essai</p>
        </div>
        <div class="chapter-badge">VALIDATION PROTOCOL</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_18_TESTING
        <div class="figure-caption"><strong>Figure 16.1 —</strong> Architecture des bancs de test et protocole de comparaison face aux équipements médicaux de référence</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 16.1 — Matrice des Bancs de Test et Protocoles Expérimentaux</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Paramètre Testé</th>
              <th>Capteur Prototype</th>
              <th>Dispositif de Référence</th>
              <th>Critères &amp; Métriques d'Évaluation</th>
              <th>Résultat Expérimental</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Fréquence Cardiaque</strong></td>
              <td>MAX30102 (PPG)</td>
              <td>Oxymètre de doigt certifié CE / FDA</td>
              <td>Erreur Absolue Moyenne (MAE), Écart-type (SD)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Saturation SpO₂</strong></td>
              <td>MAX30102 (Ratio Rouge/IR)</td>
              <td>Oxymètre médical hospitalier</td>
              <td>Racine de l'Erreur Quadratique Moyenne (RMSE)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Température Cutanée</strong></td>
              <td>MAX30205 (I²C)</td>
              <td>Thermomètre clinique infrarouge étalonné</td>
              <td>Écart thermique absolu (&lt; ±0.2°C ciblé)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Pression Artérielle</strong></td>
              <td>Module externe validé</td>
              <td>Tensiomètre brassard oscillométrique certifié</td>
              <td>Fidélité de transmission et intégration IA</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Géolocalisation GPS</strong></td>
              <td>u-blox NEO-6M</td>
              <td>GPS Smartphone (A-GPS référence)</td>
              <td>Temps au premier fix (TTFF), Précision CEP (mètres)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Autonomie Réelle</strong></td>
              <td>Batterie Li-Po 1200mAh</td>
              <td>Banc de décharge à courant contrôlé</td>
              <td>Heures de fonctionnement continu jusqu'à coupure</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">16.1 Protocole de Test en Environnement Contrôlé</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Les essais comparatifs sont réalisés selon trois conditions physiologiques standardisées : <strong>(1) Repos assis</strong> (10 minutes pour établir la baseline), <strong>(2) Marche modérée</strong> (évaluation de l'impact des artefacts de mouvement), et <strong>(3) Récupération</strong> (observation de la cinétique de retour à la normale).
          </p>
        </div>

        <div class="card">
          <div class="card-title">16.2 Règle d'Intégrité Scientifique</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Conformément aux normes académiques et déontologiques les plus strictes, <strong>aucun résultat chiffré fictif ou falsifié n'est inséré dans ce document</strong>. Les cases de mesure sont rigoureusement réservées aux données issues de la phase d'expérimentation réelle.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 16 : Validation Expérimentale</div>
      <div class="footer-right">Page 33 / 44</div>
    </div>
  </div>
"@
}

function Get-Page34-Ch16-AR {
  return @"
  <!-- PAGE 34: CHAPTER 16 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 16</span>
        <span class="header-title">منهجية الاختبار والتحقق التجريبي</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>16. خطة الاختبارات والتحقق التجريبي (Testing &amp; Validation)</h1>
          <p>بروتوكولات المقارنة المعيارية مع الأجهزة المعتمدة وبنوك الاختبارات المعملية</p>
        </div>
        <div class="chapter-badge">التحقق التجريبي</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_18_TESTING
        <div class="figure-caption"><strong>شكل 16.1 —</strong> معمارية منصات الاختبار المخبرية ومنهجية المقارنة مع الأجهزة الطبية المرجعية</div>
      </div>

      <div class="card">
        <div class="card-title">جدول 16.1 — مصفوفة خطة الاختبارات التجريبية وأجهزة المقارنة المرجعية</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المؤشر المقاس</th>
              <th>حساس النموذج الأولي</th>
              <th>الجهاز المرجعي المعتمد</th>
              <th>المعايير الإحصائية ومؤشرات التقييم</th>
              <th>النتيجة التجريبية الفعلية</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>معدل ضربات القلب</strong></td>
              <td>MAX30102 (ضوئي)</td>
              <td>مقياس تأكسج نبضي تجاري معتمد (CE/FDA)</td>
              <td>متوسط الخطأ المطلق (MAE) والانحراف المعياري</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>تشبع الأكسجين SpO₂</strong></td>
              <td>MAX30102 (أحمر/تحت أحمر)</td>
              <td>جهاز قياس أكسجين سريري معتمد</td>
              <td>جذر متوسط مربع الخطأ الإحصائي (RMSE)</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>حرارة سطح الجسم</strong></td>
              <td>MAX30205 (I²C)</td>
              <td>ميزان حرارة سريري يعمل بالأشعة تحت الحمراء</td>
              <td>الفارق الحراري المطلق (مستهدف &lt; ±0.2°م)</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>ضغط الدم الشرياني</strong></td>
              <td>وحدة قياس خارجية معتمدة</td>
              <td>جهاز قياس ضغط دم إلكتروني دقيق بالذراع</td>
              <td>موثوقية نقل البيانات والتكامل مع نموذج الذكاء</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>الموقع الجغرافي GPS</strong></td>
              <td>u-blox NEO-6M</td>
              <td>موقع الهاتف المرجعي (A-GPS)</td>
              <td>زمن التقاط الإشارة الأول (TTFF) ودقة الدائرة</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>عمر البطارية الحقيقي</strong></td>
              <td>بطارية Li-Po سعة 1200mAh</td>
              <td>منصة تفريغ معملية منتظمة التيار</td>
              <td>عدد ساعات التشغيل المستمر حتى انطفاء الجهاز</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">16.1 ظروف وبروتوكول الاختبار الميداني المنضبط</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            تُجرى القياسات المقارنة عبر 3 حالات فسيولوجية قياسية: <strong>(1) وضع الراحة والجلوس</strong> (10 دقائق لتثبيت السجل الأساسي)، <strong>(2) المشي المعتدل</strong> (لتقييم مدى تأثر الإشارة بالحركة)، و<strong>(3) فترة الاستعادة</strong> (لمراقبة سرعة انتظام النبض).
          </p>
        </div>

        <div class="card">
          <div class="card-title">16.2 الالتزام بالأمانة العلمية والأكاديمية</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            انطلاقًا من المعايير الأكاديمية الصارمة، <strong>لم يتم اختلاق أو افتراض أي أرقام نتائج وهمية أو مسبقة في هذا التقرير</strong>؛ بل كُتبت عبارة <em>«سيتم تحديدها تجريبيًا أثناء الاختبارات»</em> لتوثيق القياسات الحقيقية بمصداقية كاملة.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل السادس عشر : التحقق التجريبي</div>
      <div class="footer-right">الصفحة 34 / 44</div>
    </div>
  </div>
"@
}

function Get-Page35-Ch17-FR {
  return @"
  <!-- PAGE 35: CHAPTER 17 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 17</span>
        <span class="header-title">Limitations Médicales et Techniques</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>17. Limitations Médicales et Techniques</h1>
          <p>Transparence Scientifique sur les Contraintes Physiques, Algorithmiques et d'Usage</p>
        </div>
        <div class="chapter-badge">LIMITES &amp; ÉTHIQUE</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">Non-Substituabilité au Diagnostic Médical Professionnel</div>
        SmartCardio Guardian est un système d'<strong>estimation de risque et d'aide à la décision précoce</strong>. En aucun cas, le système ne doit être interprété comme un équipement certifié apte à poser un diagnostic d'infarctus du myocarde, d'AVC ou d'arythmie sévère avec garantie d'infaillibilité.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">17.1 Limitations Physiques et Matérielles</div>
          <ul class="tech-list">
            <li><strong>Pression Artérielle :</strong> Le microcontrôleur ESP32-S3 ne réalise pas de mesure directe par méthode auscultatoire ou oscillométrique. Les données proviennent exclusivement d'un module/tensiomètre externe validé.</li>
            <li><strong>Artefacts de Mouvement PPG :</strong> Les déplacements vigoureux perturbent l'adhérence optique du MAX30102, créant des signaux parasites pouvant fausser temporairement le calcul de SpO₂.</li>
            <li><strong>Limitations Indoor du GPS :</strong> Le module NEO-6M nécessite une vue dégagée du ciel. À l'intérieur des bâtiments ou en sous-sol, l'atténuation satellitaire empêche l'obtention d'un fix précis (recours au GPS du smartphone).</li>
            <li><strong>Température Cutanée vs Centrale :</strong> Le capteur MAX30205 mesure la température cutanée locale, qui peut différer de la température corporelle centrale lors d'une exposition au froid.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">17.2 Limitations Algorithmiques et Réseau</div>
          <ul class="tech-list">
            <li><strong>Fréquence Respiratoire Estimée :</strong> L'estimation dérivée du PPG et des micro-mouvements thoraciques reste une approximation indirecte sujette à validation sur banc clinique.</li>
            <li><strong>Biais des Modèles d'IA :</strong> Les modèles de machine learning dépendent de la représentativité des jeux de données d'entraînement publics et peuvent présenter des écarts sur des profils atypiques.</li>
            <li><strong>Dépendance au Smartphone et à la 4G :</strong> La transmission instantanée des alertes distantes vers l'aidant requiert la présence d'une connexion Internet opérationnelle. En zone blanche, le système fonctionne en mode dégradé (stockage microSD local).</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 17.1 — Synthèse des Risques Techniques et Mesures Palliatives</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Facteur de Risque Technique</th>
              <th>Impact Potentiel</th>
              <th>Solution Palliative Mise en Œuvre dans le Projet</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Perte de signal optique (Doigt décollé)</strong></td>
              <td>Valeur de FC ou SpO₂ erronée</td>
              <td>Contrôle du niveau de signal IR et drapeau de validité « Signal Quality Index » (SQI)</td>
            </tr>
            <tr>
              <td><strong>Coupure du lien Bluetooth</strong></td>
              <td>Interruption du flux vers le Cloud</td>
              <td>Écriture automatique en tampon circulaire microSD + alerte de déconnexion aidant</td>
            </tr>
            <tr>
              <td><strong>Épuisement imprévu de la batterie</strong></td>
              <td>Arrêt inopiné du monitoring</td>
              <td>Mesure périodique de tension ADC + seuil d'alerte critique à 20% de réserve</td>
            </tr>
            <tr>
              <td><strong>Fausse alerte due à un choc ponctuel</strong></td>
              <td>Anxiété injustifiée de l'aidant</td>
              <td>Fenêtrage temporel de confirmation (rejet des pics isolés &lt; 3 secondes)</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 17 : Limitations Médicales &amp; Techniques</div>
      <div class="footer-right">Page 35 / 44</div>
    </div>
  </div>
"@
}

function Get-Page36-Ch17-AR {
  return @"
  <!-- PAGE 36: CHAPTER 17 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 17</span>
        <span class="header-title">القيود الطبية والتقنية للنظام</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>17. القيود الطبية والتقنية للنظام (Limitations)</h1>
          <p>الشفافية العلمية الصارمة حول القيود الفيزيائية، والخوارزمية، والتشغيلية</p>
        </div>
        <div class="chapter-badge">القيود والمسؤولية</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">عدم صلاحية النظام للتشخيص الطبي القطعي</div>
        إن نظام SmartCardio Guardian هو نظام <strong>لتقدير احتمالية الخطر وتقديم إنذار مبكر استباقي</strong>. ولا يجوز قانونيًا أو فنيًا تقديمه على أنه جهاز قادر على تشخيص النوبات القلبية أو السكتات الدماغية بشكل قطعي كبديل عن الأطباء المعتمدين.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">17.1 القيود الفيزيائية والعتادية للمكونات</div>
          <ul class="tech-list">
            <li><strong>ضغط الدم:</strong> لا يقوم معالج ESP32-S3 بقياس ضغط الدم الشرياني بشكل مباشر سريريًا، بل يتم إدخال القياسات من جهاز قياس ضغط دم خارجي معتمد.</li>
            <li><strong>التشوهات الناتجة عن الحركة (Motion Artifacts):</strong> تؤثر حركة الجسم العنيفة على تلاصق الحساس الضوئي MAX30102 بالجلد، مما قد يشوش قراءة الأكسجين مؤقتًا.</li>
            <li><strong>قيود إشارة GPS داخل المباني:</strong> يحتاج لاقط NEO-6M لرؤية مباشرة للسماء؛ وعند التواجد داخل المباني الخرسانية تضعف الإشارة ويتم الاعتماد على موقع الهاتف البديل.</li>
            <li><strong>حرارة الجلد مقارنة بالحرارة العميقة:</strong> يقيس حساس MAX30205 حرارة سطح الجلد، والتي قد تتأثر ببرودة الطقس الخارجي بخلاف حرارة الأعضاء الداخلية.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">17.2 القيود الخوارزمية وشبكات الاتصال</div>
          <ul class="tech-list">
            <li><strong>تقدير معدل التنفس:</strong> يُستنبط معدل التنفس خوارزميًا من تعديل سعة إشارة PPG وحركة الصدر، وهو تقدير غير جازم سريريًا قبل اكتمال مرحلة المعايرة.</li>
            <li><strong>انحياز نماذج الذكاء الاصطناعي:</strong> تعتمد دقة نماذج تعلم الآلة على طبيعة وتنوع قواعد البيانات التدريبية، وقد تظهر تباينات عند تطبيقها على حالات فردية نادرة.</li>
            <li><strong>الاعتماد على تغطية الإنترنت 4G:</strong> يتطلب الإرسال الفوري للسحابة وجود شبكة اتصال نشطة؛ وفي حال انعدام التغطية يتحول النظام للعمل في النمط المحلي الآمن.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 17.1 — مصفوفة المخاطر التقنية والحلول الهندسية المعتمدة للحد منها</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المخاطرة التقنية المحتملة</th>
              <th>الأثر التشغيلي المحتمل</th>
              <th>الحل الهندسي المطبق للحد من المخاطرة</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>فقدان تلامس الحساس الضوئي مع الجلد</strong></td>
              <td>ظهور قراءات نبض أو أكسجين خاطئة</td>
              <td>فحص شدة إشارة الأشعة تحت الحمراء ووضع مؤشر جودة الإشارة (SQI)</td>
            </tr>
            <tr>
              <td><strong>انقطاع اتصال البلوتوث بالهاتف</strong></td>
              <td>توقف وصول البيانات للسحابة مؤقتًا</td>
              <td>تخزين القراءات تلقائيًا في ذاكرة microSD وتنبيه المرافق في حال طال الانقطاع</td>
            </tr>
            <tr>
              <td><strong>نفاد شحن البطارية فجأة</strong></td>
              <td>توقف رصد المريض دون علم المرافق</td>
              <td>المراقبة الدورية لجهد البطارية وإطلاق تنبيه مبكر عند الوصول لـ 20%</td>
            </tr>
            <tr>
              <td><strong>إنذار كاذب بسبب ارتطام عابر</strong></td>
              <td>إزعاج وقلق غير مبرر للأسرة</td>
              <td>نافذة تأكيد زمنية متتالية لرفض الإشارات الشاذة المعزولة التي تقل عن 3 ثوانٍ</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل السابع عشر : القيود الطبية والتقنية</div>
      <div class="footer-right">الصفحة 36 / 44</div>
    </div>
  </div>
"@
}

function Get-Page37-Ch18-FR {
  return @"
  <!-- PAGE 37: CHAPTER 18 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 18</span>
        <span class="header-title">Perspectives &amp; Améliorations Futures</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>18. Perspectives &amp; Améliorations Futures</h1>
          <p>Évolution vers l'Edge AI Embarqué, l'ECG Monopiste et l'Interopérabilité Clinique</p>
        </div>
        <div class="chapter-badge">PERSPECTIVES R&amp;D</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">18.1 Inférence d'IA Directement sur ESP32-S3 (Edge AI)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            La prochaine itération matérielle vise le déploiement de modèles de <strong>TinyML</strong> directement sur le microcontrôleur ESP32-S3 via le framework <strong>ESP-NN</strong> et <strong>TensorFlow Lite for Microcontrollers</strong> :
          </p>
          <ul class="tech-list">
            <li><strong>Autonomie totale :</strong> Calcul du score de risque même en cas de coupure absolue de communication radio.</li>
            <li><strong>Latence ultra-faible :</strong> Réduction du temps de décision à moins de 50 ms directement au contact du corps.</li>
            <li><strong>Quantification INT8 :</strong> Compression du réseau neuronal pour une empreinte mémoire inférieure à 120 Ko.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">18.2 Intégration d'un Électrocardiogramme (ECG 1-Piste)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            L'adjonction d'une puce analogique front-end médicale (ex. <strong>AD8232 ou MAX30003</strong>) permettra de combiner l'onde optique PPG avec le potentiel d'action électrique cardiaque :
          </p>
          <ul class="tech-list">
            <li><strong>Temps de Transit du Pouls (PTT) :</strong> Estimation indirecte continue de la pression artérielle par corrélation temporelle entre le complexe QRS de l'ECG et l'onde PPG.</li>
            <li><strong>Détection précoce de la Fibrillation Atriale (FA) :</strong> Analyse fine de la morphologie de l'onde P et de l'irrégularité RR.</li>
          </ul>
        </div>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">18.3 Récupération d'Énergie (Energy Harvesting)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Étude de l'intégration de micro-générateurs thermoélectriques (TEG) exploitant le gradient thermique entre la peau (36.5°C) et l'air ambiant, couplés à des cellules photovoltaïques souples pour étendre l'autonomie au-delà de <strong>24 heures</strong> sans intervention.
          </p>
        </div>

        <div class="card">
          <div class="card-title">18.4 Interopérabilité Hospitalière (Norme HL7 / FHIR)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Développement d'un connecteur d'exportation normalisé au standard international <strong>HL7 / FHIR (Fast Healthcare Interoperability Resources)</strong>, facilitant l'intégration directe des historiques de télésurveillance dans les dossiers médicaux partagés (DMP) hospitaliers.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 18 : Perspectives &amp; Évolutions</div>
      <div class="footer-right">Page 37 / 44</div>
    </div>
  </div>
"@
}

function Get-Page38-Ch18-AR {
  return @"
  <!-- PAGE 38: CHAPTER 18 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 18</span>
        <span class="header-title">الآفاق المستقبلية وتطوير النظام</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>18. الآفاق المستقبلية وتطوير النظام (Future Improvements)</h1>
          <p>الانتقال نحو الذكاء الاصطناعي الحافي، وتخطيط القلب المدمج، والتوافق الطبي الشامل</p>
        </div>
        <div class="chapter-badge">البحث والتطوير</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">18.1 تشغيل الذكاء الاصطناعي على المعالج مباشرة (Edge AI)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            يهدف التطوير اللاحق إلى نشر نماذج <strong>TinyML</strong> المصغرة مباشرة داخل شريحة ESP32-S3 عبر مكتبات <strong>ESP-NN</strong> و<strong>TensorFlow Lite Micro</strong>:
          </p>
          <ul class="tech-list">
            <li><strong>استقلالية تامة:</strong> استمرار تقدير مؤشر الخطر محليًا حتى في حال انقطاع البلوتوث والإنترنت كليًا.</li>
            <li><strong>سرعة استجابة فائقة:</strong> اتخاذ قرارات الإنذار في أقل من 50 ميلي ثانية مباشرة على جسم المريض.</li>
            <li><strong>ضغط النموذج (INT8 Quantization):</strong> تقليص حجم الشبكة العصبية لتشغل أقل من 120 كيلوبايت من الذاكرة.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">18.2 دمج تخطيط كهربائية القلب (ECG أحادي القطب)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            إضافة شريحة استقبال تناظرية طبية متخصصة (مثل <strong>AD8232 أو MAX30003</strong>) لدمج الإشارة الكهربائية مع موجة النبض الضوئية:
          </p>
          <ul class="tech-list">
            <li><strong>زمن انتقال النبض (PTT):</strong> تقدير غير جراحي مستمر لتغيرات ضغط الدم بحساب الفارق الزمني بين موجة ECG ونبضة PPG.</li>
            <li><strong>رصد الرجفان الأذيني (Atrial Fibrillation):</strong> تحليل تشكل موجات القلب الكهربائية بدقة فائقة لكشف عدم انتظام النبض.</li>
          </ul>
        </div>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">18.3 حصاد الطاقة الذاتي (Energy Harvesting)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            دراسة دمج مولدات كهرومغناطيسية وحرارية دقيقة (TEG) تستغل الفارق الحراري بين حرارة الجلد والجو المحيط، مدعومة بخلايا شمسية مرنة، لتمديد عمر التشغيل ليتجاوز <strong>24 ساعة</strong> متواصلة.
          </p>
        </div>

        <div class="card">
          <div class="card-title">18.4 التوافق مع الأنظمة الصحية العالمية (معيار HL7 / FHIR)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            برمجة واجهة تبادل بيانات متوافقة مع المعيار الدولي <strong>HL7 / FHIR</strong> لتسهيل تصدير البيانات تلقائيًا نحو منظومات السجلات الطبية الإلكترونية للمستشفيات والعيادات.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثامن عشر : الآفاق المستقبلية</div>
      <div class="footer-right">الصفحة 38 / 44</div>
    </div>
  </div>
"@
}

function Get-Page39-Ch19-FR {
  return @"
  <!-- PAGE 39: CHAPTER 19 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 19</span>
        <span class="header-title">Feuille de Route &amp; Jalons de Développement</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>19. Feuille de Route du Projet (Roadmap)</h1>
          <p>Chronogramme Méthodologique en 14 Phases du Cahier des Charges à la Démonstration</p>
        </div>
        <div class="chapter-badge">PLANNING &amp; ROADMAP</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_17_ROADMAP
        <div class="figure-caption"><strong>Figure 19.1 —</strong> Chronogramme des 14 phases de développement du projet SmartCardio Guardian</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 19.1 — Description Détaillée des 14 Jalons de Réalisation du PFE</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Phase</th>
              <th>Intitulé du Jalon</th>
              <th>Livrables Techniques Concrets</th>
              <th>Statut d'Avancement</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Phase 1</strong></td>
              <td>Requirements &amp; Architecture</td>
              <td>Cahier des charges fonctionnel, choix technologiques ESP32-S3 / capteurs</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 2</strong></td>
              <td>Hardware Design &amp; Schematics</td>
              <td>Schémas électroniques, dimensionnement pull-up I²C, alimentation Li-Po</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 3</strong></td>
              <td>Sensor Integration &amp; Busses</td>
              <td>Drivers I²C MAX30102, MAX30205, MPU6050, UART GPS, adressage matériel</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 4</strong></td>
              <td>ESP32 Firmware Architecture</td>
              <td>Tâches FreeRTOS dual-core, filtrage Butterworth, files inter-tâches, ISR SOS</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 5</strong></td>
              <td>BLE Communication Layer</td>
              <td>Profil GATT personnalisé, UUIDs, notifications compactes, appairage LE Secure</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 6</strong></td>
              <td>Mobile Relay &amp; Gateway</td>
              <td>Passerelle BLE-to-Cloud, buffer SQLite hors-ligne, logique de reconnexion</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 7</strong></td>
              <td>Cloud Backend &amp; Storage</td>
              <td>API FastAPI REST &amp; WebSocket, bases InfluxDB / PostgreSQL, Docker</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 8</strong></td>
              <td>AI Dataset Preparation</td>
              <td>Nettoyage bases PhysioNet/MIMIC, extraction HRV/RR, fenêtrage 30s</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 9</strong></td>
              <td>AI Risk Model Training</td>
              <td>Modèle Random Forest / XGBoost, calibration probabilités score 0-100</td>
              <td><span class="badge badge-green">Terminé</span></td>
            </tr>
            <tr>
              <td><strong>Phase 10</strong></td>
              <td>Full-Stack System Integration</td>
              <td>Connexion bout-en-bout : Capteurs ➔ ESP32 ➔ BLE ➔ Cloud ➔ Caregiver App</td>
              <td><span class="badge badge-blue">En Cours</span></td>
            </tr>
            <tr>
              <td><strong>Phase 11</strong></td>
              <td>Testing &amp; Benchmarking</td>
              <td>Mesures sur banc d'essai, latence radio, courant consommé, stabilité buffer</td>
              <td><span class="badge badge-yellow">À Mesurer Expérim.</span></td>
            </tr>
            <tr>
              <td><strong>Phase 12</strong></td>
              <td>Validation vs Médical Réf.</td>
              <td>Comparaison protocolaire face aux oxymètres, tensiomètres et thermomètres étalons</td>
              <td><span class="badge badge-yellow">À Mesurer Expérim.</span></td>
            </tr>
            <tr>
              <td><strong>Phase 13</strong></td>
              <td>Technical Documentation</td>
              <td>Rapport de conception bilingue, schémas, guides d'installation et de maintenance</td>
              <td><span class="badge badge-green">Ce Document</span></td>
            </tr>
            <tr>
              <td><strong>Phase 14</strong></td>
              <td>Final PFE Demonstration</td>
              <td>Soutenance finale académique, démonstration temps réel du prototype fonctionnel</td>
              <td><span class="badge badge-purple">Jalon Final</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 19 : Feuille de Route PFE</div>
      <div class="footer-right">Page 39 / 44</div>
    </div>
  </div>
"@
}

function Get-Page40-Ch19-AR {
  return @"
  <!-- PAGE 40: CHAPTER 19 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 19</span>
        <span class="header-title">خطة العمل والمراحل الزمنية للمشروع</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>19. خارطة الطريق ومراحل إنجاز المشروع (Roadmap)</h1>
          <p>المخطط الزمني المنهجي في 14 مرحلة متسلسلة من تحديد المتطلبات حتى العرض الختامي</p>
        </div>
        <div class="chapter-badge">خارطة الطريق</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_17_ROADMAP
        <div class="figure-caption"><strong>شكل 19.1 —</strong> التسلسل الزمني للمراحل الـ 14 لتطوير وبناء نظام SmartCardio Guardian</div>
      </div>

      <div class="card">
        <div class="card-title">جدول 19.1 — التوصيف الفني لمراحل إنجاز مشروع التخرج ومخرجات كل مرحلة</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المرحلة</th>
              <th>عنوان المرحلة الهندسية</th>
              <th>المخرجات التقنية الملموسة</th>
              <th>حالة الإنجاز</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>المرحلة 1</strong></td>
              <td>تحديد المتطلبات والمعمارية</td>
              <td>دفتر الشروط الوظيفي واختيار معالج ESP32-S3 ومصفوفة الحساسات</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 2</strong></td>
              <td>التصميم الإلكتروني والدوائر</td>
              <td>المخططات الإلكترونية، ومقاومات الرفع لناقل I²C، ودائرة تنظيم البطارية</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 3</strong></td>
              <td>تكامل الحساسات والنواقل</td>
              <td>برمجيات تشغيل MAX30102 وMAX30205 وMPU6050 وNEO-6M</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 4</strong></td>
              <td>بناء البرمجيات المدمجة</td>
              <td>مهام نظام FreeRTOS على النواتين، وترشيح الإشارات، ومقاطعة زر SOS</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 5</strong></td>
              <td>طبقة الاتصال بالبلوتوث</td>
              <td>بناء ملف GATT، وتحديد الخصائص والمزامنة والاقتران المشفر</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 6</strong></td>
              <td>بوابة الترحيل وتطبيق الهاتف</td>
              <td>استقبال حزم البلوتوث والتخزين المؤقت في SQLite ومعالجة الانقطاع</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 7</strong></td>
              <td>البنية السحابية والخوادم</td>
              <td>واجهات FastAPI، وقواعد InfluxDB وPostgreSQL، وحاويات Docker</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 8</strong></td>
              <td>تجهيز بيانات الذكاء الاصطناعي</td>
              <td>معالجة بيانات PhysioNet/MIMIC، واستخراج ميزات HRV ومعدل التنفس</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 9</strong></td>
              <td>تدريب نموذج التنبؤ بالخطر</td>
              <td>تدريب نماذج Random Forest / XGBoost وحساب مؤشر الخطر (0–100)</td>
              <td><span class="badge badge-green">مكتملة</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 10</strong></td>
              <td>التكامل الكلي للنظام</td>
              <td>ربط الدورة الشاملة: الحساسات ➔ ESP32 ➔ الهاتف ➔ السحابة ➔ المرافق</td>
              <td><span class="badge badge-blue">قيد التنفيذ</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 11</strong></td>
              <td>الاختبارات المعملية والقياس</td>
              <td>قياس زمن الاستجابة، وتيار استهلاك الطاقة، وثبات التخزين المؤقت</td>
              <td><span class="badge badge-yellow">ستُقاس تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 12</strong></td>
              <td>المعايرة مع الأجهزة الطبية</td>
              <td>مقارنة القراءات مع أجهزة قياس النبض والأكسجين والحرارة المعتمدة</td>
              <td><span class="badge badge-yellow">ستُقاس تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 13</strong></td>
              <td>التوثيق الفني والأكاديمي</td>
              <td>إعداد تقرير التصميم الشامل ثنائي اللغة، والمخططات ودليل الاستخدام</td>
              <td><span class="badge badge-green">هذا التقرير</span></td>
            </tr>
            <tr>
              <td><strong>المرحلة 14</strong></td>
              <td>العرض النهائي والمناقشة</td>
              <td>جلسة مناقشة مشروع التخرج وعرض تشغيلي حي ومباشر للنموذج الأولي</td>
              <td><span class="badge badge-purple">المرحلة الختامية</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل التاسع عشر : خطة العمل والمراحل</div>
      <div class="footer-right">الصفحة 40 / 44</div>
    </div>
  </div>
"@
}

function Get-Page41-Conclusion-FR {
  return @"
  <!-- PAGE 41: CONCLUSION (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CONCLUSION</span>
        <span class="header-title">Conclusion Générale &amp; Bilan de Conception</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>Conclusion Générale &amp; Bilan du Projet</h1>
          <p>Synthèse des Réalisations Techniques, Apports Méthodologiques et Perspectives</p>
        </div>
        <div class="chapter-badge">SYNTHÈSE DU PFE</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">20.1 Bilan des Travaux Réalisés</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:2mm;">
            Le projet <strong>SmartCardio Guardian</strong> concrétise une vision moderne et rigoureuse de l'Internet des Objets médicaux préventifs (IoMT), alliant systèmes embarqués temps réel et intelligence artificielle :
          </p>
          <ul class="tech-list">
            <li><strong>Chaîne d'Acquisition Intègre :</strong> Sélection rigoureuse de capteurs industriels reconnus (MAX30102, MAX30205 clinique, MPU6050, NEO-6M).</li>
            <li><strong>Firmware FreeRTOS Robuste :</strong> Architecture dual-core éliminant tout blocage bloquant, couplée à un buffer hors-ligne garantissant zéro perte de données.</li>
            <li><strong>Modélisation Explicable :</strong> Conversion d'un flux multi-signaux complexe en un Score de Risque intelligible (0–100) avec facteurs explicatifs directs.</li>
            <li><strong>Assistance au Proche Aidant :</strong> Application mobile orientée aidant, intégrant géolocalisation d'urgence et gestion graduée d'escalade.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">20.2 Apport Méthodologique et Déontologique</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:2mm;">
            Une attention primordiale a été accordée à la probité scientifique et à la conformité aux normes médicales :
          </p>
          <ul class="tech-list">
            <li><strong>Délimitation Stricte du Rôle :</strong> Aucune allégation trompeuse de diagnostic médical automatisé garanti.</li>
            <li><strong>Transparence Totale des Données :</strong> Rejet absolu des chiffres de performance fictifs avant la tenue des bancs d'essai réels.</li>
            <li><strong>Sécurité « Privacy-by-Design » :</strong> Chiffrement de bout-en-bout (BLE AES-128, TLS 1.3, JWT) conforme aux exigences RGPD santé.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">20.3 Déclaration Finale de l'Auteur</div>
        <p style="font-size:8.2pt; color:var(--slate-800); line-height:1.5;">
          Ce projet de fin d'études mené par <strong>Adnen Ben Abdallah</strong> démontre la faisabilité technologique et la pertinence sociétale d'un système portable d'alerte cardiovasculaire précoce. En comblant le fossé entre les objets connectés récréatifs et l'exigence du monde de la santé, SmartCardio Guardian propose une réponse d'ingénierie concrète, accessible et évolutive pour la protection des personnes vulnérables.
        </p>
        <div style="margin-top:2mm; display:flex; justify-content:space-between; align-items:center; border-top:1px solid var(--slate-200); padding-top:2mm; font-size:7.5pt; color:var(--slate-500);">
          <div>Projet de Fin d'Études — Génie Informatique &amp; Systèmes Embarqués</div>
          <div style="font-weight:700; color:var(--navy-dark);">Adnen Ben Abdallah</div>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Conclusion Générale</div>
      <div class="footer-right">Page 41 / 44</div>
    </div>
  </div>
"@
}

function Get-Page42-Conclusion-AR {
  return @"
  <!-- PAGE 42: CONCLUSION (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الخاتمة</span>
        <span class="header-title">الخاتمة العامة والتقييم النهائي للمشروع</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>الخاتمة العامة والتقييم النهائي للمشروع</h1>
          <p>خلاصة المنجزات الهندسية، والقيمة المنهجية، والآفاق المستقبلية للنموذج الأولي</p>
        </div>
        <div class="chapter-badge">خلاصة المشروع</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">20.1 حصيلة الإنجازات الهندسية المحققة</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:2mm;">
            يُجسد مشروع <strong>SmartCardio Guardian</strong> رؤية تطبيقية متطورة لإنترنت الأشياء الطبية الوقائية (IoMT)، جامعًا بين الأنظمة المدمجة في الوقت الحقيقي والذكاء الاصطناعي:
          </p>
          <ul class="tech-list">
            <li><strong>سلسلة استشعار موثوقة:</strong> تكامل دقيق لمكونات إلكترونية صناعية معتمدة (MAX30102 وMAX30205 الطبي وMPU6050 وNEO-6M).</li>
            <li><strong>برمجيات FreeRTOS متينة:</strong> معمارية ثنائية النواة تمنع أي تجميد أثناء البث اللاسلكي مع ضمان حفظ البيانات أثناء انقطاع الشبكة.</li>
            <li><strong>نمذجة تنبؤية قابلة للتفسير:</strong> تحويل حزم الإشارات المعقدة إلى مؤشر خطر مفهوم (0–100) مدعوم ببيان الأسباب الفسيولوجية.</li>
            <li><strong>تمكين مرافقي المرضى:</strong> تطبيق هاتف مخصص لمقدمي الرعاية يتيح المتابعة اللحظية وتحديد الموقع الجغرافي عند الطوارئ.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">20.2 الأبعاد المنهجية والأخلاقية للمشروع</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:2mm;">
            أولى المشروع عناية بالغة للنزاهة العلمية والامتثال للضوابط الطبية الدقيقة:
          </p>
          <ul class="tech-list">
            <li><strong>تحديد النطاق بدقة:</strong> التأكيد الصارم على أن الجهاز ليس بديلاً عن التشخيص الطبي السريري.</li>
            <li><strong>الشفافية في القياسات:</strong> رفض اختلاق أو افتراض أي أرقام نتائج مسبقة قبل استكمال الاختبارات المعملية الحقيقية.</li>
            <li><strong>حماية الخصوصية بالتصميم:</strong> تشفير شامل متعدد المراحل يضمن حماية البيانات الحساسة للمرضى ومطابقتها لمعايير الأمان.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">20.3 كلمة ختامية لصاحب المشروع</div>
        <p style="font-size:8.2pt; color:var(--slate-800); line-height:1.5;">
          يُبرهن هذا المشروع الهندسي الذي أنجزه <strong>عدنان بن عبد الله</strong> على الجدوى التقنية والأثر الإنساني البالغ لأنظمة الإنذار القلبي المبكر القابلة للارتداء. ومن خلال سد الفجوة بين الأجهزة الاستهلاكية السطحية والاحتياجات الواقعية لذوي المرضى، يقدم نظام SmartCardio Guardian حلاً هندسيًا متكاملاً، مرنًا وقابلاً للتطوير المستقبلي لخدمة صحة الإنسان.
        </p>
        <div style="margin-top:2mm; display:flex; justify-content:space-between; align-items:center; border-top:1px solid var(--slate-200); padding-top:2mm; font-size:7.5pt; color:var(--slate-500);">
          <div>مشروع تخرج مهندس — هندسة الأنظمة المدمجة وإنترنت الأشياء</div>
          <div style="font-weight:700; color:var(--navy-dark);">عدنان بن عبد الله</div>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الخاتمة والتقييم النهائي</div>
      <div class="footer-right">الصفحة 42 / 44</div>
    </div>
  </div>
"@
}

function Get-Page43-Annex-FR {
  return @"
  <!-- PAGE 43: TECHNICAL APPENDIX (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">ANNEXE TECHNIQUE</span>
        <span class="header-title">Spécifications Matérielles &amp; Références</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>Annexe Technique : Synthèse &amp; Brochage</h1>
          <p>Mappage des Broches GPIO de l'ESP32-S3, Nomenclature des Composants et Références</p>
        </div>
        <div class="chapter-badge">ANNEXE MATÉRIELLE</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau A.1 — Tableau d'Assignation Complète des Broches (GPIO Pinout Map ESP32-S3)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Broche ESP32-S3</th>
              <th>Fonction Matérielle</th>
              <th>Périphérique Relié</th>
              <th>Mode / Protocole</th>
              <th>Observations Électriques</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>GPIO 8</strong></td>
              <td>I2C_SDA</td>
              <td>MAX30102, MAX30205, MPU6050, OLED</td>
              <td>Open-Drain / I²C Bus</td>
              <td>Résistance de tirage (Pull-up) 4.7 kΩ à 3.3V</td>
            </tr>
            <tr>
              <td><strong>GPIO 9</strong></td>
              <td>I2C_SCL</td>
              <td>MAX30102, MAX30205, MPU6050, OLED</td>
              <td>Open-Drain / I²C Bus</td>
              <td>Résistance de tirage (Pull-up) 4.7 kΩ à 3.3V</td>
            </tr>
            <tr>
              <td><strong>GPIO 17</strong></td>
              <td>UART_TXD</td>
              <td>Module GPS NEO-6M (RX)</td>
              <td>Sortie Série 9600 Bd</td>
              <td>Configuration des commandes NMEA</td>
            </tr>
            <tr>
              <td><strong>GPIO 18</strong></td>
              <td>UART_RXD</td>
              <td>Module GPS NEO-6M (TX)</td>
              <td>Entrée Série 9600 Bd</td>
              <td>Réception des trames $GPGGA, $GPRMC</td>
            </tr>
            <tr>
              <td><strong>GPIO 0</strong></td>
              <td>Bouton SOS</td>
              <td>Bouton Poussoir d'Urgence</td>
              <td>Entrée / Interruption ISR</td>
              <td>Pull-up interne activé, déclenchement front descendant</td>
            </tr>
            <tr>
              <td><strong>GPIO 4</strong></td>
              <td>ADC1_CH3</td>
              <td>Surveillance Batterie Li-Po</td>
              <td>Entrée Analogique ADC</td>
              <td>Pont diviseur résistif 100kΩ / 100kΩ (Atténuation 11dB)</td>
            </tr>
            <tr>
              <td><strong>GPIO 5</strong></td>
              <td>PWM / GPIO</td>
              <td>Buzzer Piézoélectrique</td>
              <td>Sortie Générateur PWM</td>
              <td>Fréquence 2.7 kHz pour résonance acoustique</td>
            </tr>
            <tr>
              <td><strong>GPIO 6, 7, 10</strong></td>
              <td>LEDs RVB</td>
              <td>LED Tricolore (Vert, Jaune, Rouge)</td>
              <td>Sorties Numériques</td>
              <td>Résistances série de limitation de courant 220 Ω</td>
            </tr>
            <tr>
              <td><strong>GPIO 11, 12, 13, 14</strong></td>
              <td>SPI Bus</td>
              <td>Lecteur de Carte microSD</td>
              <td>SPI (MOSI, MISO, SCK, CS)</td>
              <td>Buffer circulaire de stockage de secours hors-ligne</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Références Bibliographiques et Normes Utilisées</div>
        <ul class="tech-list" style="font-size:7.2pt;">
          <li>[1] Organisation Mondiale de la Santé (OMS), <em>« Cardiovascular Diseases Fact Sheets »</em>, 2023.</li>
          <li>[2] Espressif Systems, <em>« ESP32-S3 Technical Reference Manual &amp; Hardware Design Guidelines »</em>, v1.4, 2023.</li>
          <li>[3] Analog Devices / Maxim Integrated, <em>« MAX30102 High-Sensitivity Pulse Oximeter and Heart-Rate Sensor Datasheet »</em>, Rev 2.</li>
          <li>[4] Maxim Integrated, <em>« MAX30205 Clinical-Grade Temperature Sensor with 0.1°C Accuracy »</em>, Rev 1.</li>
          <li>[5] InvenSense, <em>« MPU-6000 and MPU-6050 Product Specification and Register Map »</em>, Rev 3.4.</li>
          <li>[6] Goldberger, A. L., et al., <em>« PhysioBank, PhysioToolkit, and PhysioNet: Components of a new research resource for complex physiologic signals »</em>, Circulation, 2000.</li>
        </ul>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Annexe Technique &amp; Références</div>
      <div class="footer-right">Page 43 / 44</div>
    </div>
  </div>
"@
}

function Get-Page44-Annex-AR {
  return @"
  <!-- PAGE 44: TECHNICAL APPENDIX (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الملحق الفني</span>
        <span class="header-title">المواصفات التقنية والدوائر المرجعية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>الملحق الفني : جدول المنافذ والمراجع الهندسية</h1>
          <p>توزيع منافذ GPIO لمعالج ESP32-S3، والدوائر الكهربائية، والمراجع العلمية</p>
        </div>
        <div class="chapter-badge">الملحق الفني المرجعي</div>
      </div>

      <div class="card">
        <div class="card-title">جدول أ.1 — جدول التوزيع الكامل لمنافذ وحدة التحكم (ESP32-S3 GPIO Pinout)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>رقم المنفذ GPIO</th>
              <th>الوظيفة الإلكترونية</th>
              <th>المكون الخارجي المتصل</th>
              <th>نمط وبروتوكول التشغيل</th>
              <th>الملاحظات الفنية والكهربائية</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>GPIO 8</strong></td>
              <td>I2C_SDA</td>
              <td>MAX30102, MAX30205, MPU6050, OLED</td>
              <td>Open-Drain / ناقل I²C</td>
              <td>مقاومة رفع خارجية (Pull-up) بقيمة 4.7kΩ متصلة بـ 3.3V</td>
            </tr>
            <tr>
              <td><strong>GPIO 9</strong></td>
              <td>I2C_SCL</td>
              <td>MAX30102, MAX30205, MPU6050, OLED</td>
              <td>Open-Drain / ناقل I²C</td>
              <td>مقاومة رفع خارجية (Pull-up) بقيمة 4.7kΩ متصلة بـ 3.3V</td>
            </tr>
            <tr>
              <td><strong>GPIO 17</strong></td>
              <td>UART_TXD</td>
              <td>مستقبل GPS (منفذ RX)</td>
              <td>إرسال تسلسلي (9600)</td>
              <td>إرسال أوامر التهيئة والتردد لرقاقة NEO-6M</td>
            </tr>
            <tr>
              <td><strong>GPIO 18</strong></td>
              <td>UART_RXD</td>
              <td>مستقبل GPS (منفذ TX)</td>
              <td>استقبال تسلسلي (9600)</td>
              <td>استقبال حزم الإحداثيات الجغرافية NMEA ($GPGGA)</td>
            </tr>
            <tr>
              <td><strong>GPIO 0</strong></td>
              <td>زر الطوارئ SOS</td>
              <td>مفتاح الاستغاثة الضاغط</td>
              <td>دخل رقمي مع مقاطعة ISR</td>
              <td>مقاومة رفع داخلية مفعلة، تفعيل عند الحافة الهابطة</td>
            </tr>
            <tr>
              <td><strong>GPIO 4</strong></td>
              <td>ADC1_CH3</td>
              <td>مراقبة جهد البطارية</td>
              <td>دخل تناظري ADC</td>
              <td>مقسم جهد بمقاومتين متطابقتين 100kΩ لحماية المنفذ</td>
            </tr>
            <tr>
              <td><strong>GPIO 5</strong></td>
              <td>PWM صوتي</td>
              <td>جرس التنبيه (Buzzer)</td>
              <td>خرج تضمين عرض النبضة</td>
              <td>تردد صوتي 2.7 كيلوهرتز لتحقيق أعلى رنين تنبيهي</td>
            </tr>
            <tr>
              <td><strong>GPIO 6, 7, 10</strong></td>
              <td>إشارات LED</td>
              <td>مؤشرات الحالة (أخضر، أصفر، أحمر)</td>
              <td>خروج رقمية مباشرة</td>
              <td>مقاومات حماية للتيار بقيمة 220 أوم لكل صمام ضوئي</td>
            </tr>
            <tr>
              <td><strong>GPIO 11-14</strong></td>
              <td>ناقل SPI</td>
              <td>قارئ بطاقات microSD</td>
              <td>SPI (MOSI, MISO, SCK, CS)</td>
              <td>تخزين القراءات الفسيولوجية في ملفات دورية عند انقطاع الشبكة</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">المراجع العلمية والوثائق الفنية المعتمدة</div>
        <ul class="tech-list" style="font-size:7.2pt;">
          <li>[1] منظمة الصحة العالمية (WHO) — <em>تقارير إحصاءات أمراض القلب والأوعية الدموية والوقاية منها</em>، 2023.</li>
          <li>[2] شركة Espressif Systems — <em>الدليل الفني وإرشادات التصميم العتادي لشريحة ESP32-S3</em>، 2023.</li>
          <li>[3] شركة Analog Devices / Maxim Integrated — <em>وثيقة المواصفات الفنية لحساس النبض والأكسجين MAX30102</em>.</li>
          <li>[4] شركة Maxim Integrated — <em>وثيقة المواصفات الفنية لحساس الحرارة السريري عالي الدقة MAX30205</em>.</li>
          <li>[5] شركة InvenSense — <em>دليل وحدة القصور الذاتي والحركة سداسية المحاور MPU-6050</em>.</li>
          <li>[6] قاعدة بيانات PhysioNet للأبحاث الطبية — <em>قواعد بيانات إشارات النبض وتخطيط القلب (MIMIC-III / BIDMC)</em>.</li>
        </ul>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الملحق الفني والمراجع</div>
      <div class="footer-right">الصفحة 44 / 44</div>
    </div>
  </div>
"@
}

Write-Output "Pages 31 to 44 generated."
