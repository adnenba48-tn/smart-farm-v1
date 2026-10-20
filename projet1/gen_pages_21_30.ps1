# SmartCardio Guardian - Page Generator: Pages 21 to 30
# Chapters 10, 11, 12, 13, 14 (Alternating FR / AR)

function Get-Page21-Ch10-FR {
  return @"
  <!-- PAGE 21: CHAPTER 10 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 10</span>
        <span class="header-title">Moteur d'Intelligence Artificielle &amp; Traitement</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>10. Moteur d'Intelligence Artificielle</h1>
          <p>Architecture Prédictive, Stratégie de Jeux de Données à 3 Niveaux et Entraînement</p>
        </div>
        <div class="chapter-badge">MACHINE LEARNING</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_7_AI_PIPELINE
        <div class="figure-caption"><strong>Figure 10.1 —</strong> Pipeline complet d'inférence de l'IA : De l'acquisition des signaux au calcul du score et déclenchement d'alerte</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_8_TRAINING
        <div class="figure-caption"><strong>Figure 10.2 —</strong> Pipeline d'entraînement et stratégie des données à 3 niveaux (Publique, Clinique et Historique Personnel)</div>
      </div>

      <div class="grid-3" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">Niveau 1 : Données Publiques</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            Entraînement initial sur des bases de données de recherche ouvertes telles que <strong>PhysioNet (MIMIC-III, BIDMC)</strong> contenant des milliers d'heures de signaux PPG et constantes annotées.
          </p>
        </div>

        <div class="card">
          <div class="card-title">Niveau 2 : Données Cliniques</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            Intégration de jeux de données cliniques anonymisés <em>uniquement sous réserve de partenariats ou collaborations médicales approuvées</em> pour affiner la détection de cas limites.
          </p>
        </div>

        <div class="card">
          <div class="card-title">Niveau 3 : Profil Individuel</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            Chaque utilisateur dispose d'une <strong>baseline historique personnalisée</strong> mise à jour progressivement, évitant les fausses alertes dues à des particularités physiologiques propres.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 10 : Intelligence Artificielle</div>
      <div class="footer-right">Page 21 / 44</div>
    </div>
  </div>
"@
}

function Get-Page22-Ch10-AR {
  return @"
  <!-- PAGE 22: CHAPTER 10 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 10</span>
        <span class="header-title">محرك الذكاء الاصطناعي ومعالجة الإشارات</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>10. محرك الذكاء الاصطناعي ومعالجة البيانات الطبية</h1>
          <p>معمارية التنبؤ الفسيولوجي، واستراتيجية البيانات ثلاثية المستويات، ومراحل التدريب</p>
        </div>
        <div class="chapter-badge">الذكاء الاصطناعي</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_7_AI_PIPELINE
        <div class="figure-caption"><strong>شكل 10.1 —</strong> خط معالجة واستدلال الذكاء الاصطناعي: من جمع الإشارات إلى استخراج الميزات وحساب درجة الخطر</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_8_TRAINING
        <div class="figure-caption"><strong>شكل 10.2 —</strong> مسار تدريب النموذج واستراتيجية البيانات ثلاثية المستويات (العامة، والسريرية، والسجل الشخصي)</div>
      </div>

      <div class="grid-3" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">المستوى 1: قواعد البيانات العامة</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            التدريب التأسيسي الأولي على مكتبات البيانات البحثية المفتوحة مثل <strong>PhysioNet (MIMIC-III / BIDMC)</strong> المحتوية على آلاف الساعات من إشارات PPG والنبض.
          </p>
        </div>

        <div class="card">
          <div class="card-title">المستوى 2: البيانات السريرية</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            دمج عينات سريرية مجهولة الهوية <em>حصرًا في حال توفر شراكات أو تعاون طبي معتمد</em> لضبط الحالات الحدية وتدقيق النماذج الرياضية.
          </p>
        </div>

        <div class="card">
          <div class="card-title">المستوى 3: السجل المرجعي الفردي</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            بناء <strong>ملف أساسي شخصي (Personal Baseline)</strong> لكل مريض يتم تحديثه تدريجيًا لتقليل الإنذارات الكاذبة الناتجة عن التباينات الفردية الطبيعية.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل العاشر : محرك الذكاء الاصطناعي</div>
      <div class="footer-right">Page 22 / 44</div>
    </div>
  </div>
"@
}

function Get-Page23-Ch11-FR {
  return @"
  <!-- PAGE 23: CHAPTER 11 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 11</span>
        <span class="header-title">Modélisation du Risque &amp; Score Prédictif (0–100)</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>11. Modélisation du Risque Cardiovasculaire</h1>
          <p>Échelle du Score 0–100, Niveaux de Gravité et Facteurs Déterminants Explicables</p>
        </div>
        <div class="chapter-badge">RISK SCORING</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_9_RISK
        <div class="figure-caption"><strong>Figure 11.1 —</strong> Échelle graduée du Score de Risque Cardiovasculaire (0–100) et matrice des états physiologiques associés</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">11.1 Formulation Algorithmique du Score</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Le modèle d'ensemble (Random Forest / XGBoost) produit une probabilité calibrée convertie en un <strong>Score Entier de 0 à 100</strong> :
          </p>
          <ul class="tech-list">
            <li><strong>Score = 0 – 25 (Normal) :</strong> Équilibre hémodynamique conforme à la ligne de base du patient.</li>
            <li><strong>Score = 26 – 50 (Risque Modéré) :</strong> Dérive isolée sans criticité immédiate (ex. légère fatigue, tachycardie modérée au repos).</li>
            <li><strong>Score = 51 – 75 (Risque Élevé) :</strong> Convergence de plusieurs anomalies nécessitant l'attention du proche aidant.</li>
            <li><strong>Score = 76 – 100 (Critique / Urgence) :</strong> Décompensation multi-paramétrique ou chute détectée.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">11.2 Explicabilité : Facteurs Causaux (Contributing Factors)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Pour éviter l'effet « boîte noire » et assister efficacement l'aidant, chaque calcul de risque est assorti de sa justification causale intelligible :
          </p>
          <div style="background:var(--slate-100); padding:2.5mm; border-radius:5px; border-left:3px solid var(--amber);">
            <div style="font-size:7.5pt; font-weight:700; color:var(--navy-mid);">Exemple de Rapport d'Inférence IA :</div>
            <p style="font-size:7.2pt; color:var(--slate-700); font-family:monospace; margin-top:1mm;">
              "Score: 68/100 [RISQUE ÉLEVÉ]<br/>
              Facteurs : Fréquence cardiaque élevée (+38 bpm vs base) + Chute de SpO₂ (91%) + Rythme respiratoire irrégulier au repos."
            </p>
          </div>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 11.1 — Métriques d'Évaluation du Modèle d'IA Prédictif</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Métrique de Performance</th>
              <th>Définition Mathématique</th>
              <th>Objectif Technique Prototype</th>
              <th>Valeur Expérimentale Réelle</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Exactitude (Accuracy)</strong></td>
              <td><code>(VP + VN) / Total</code></td>
              <td>&gt; 90% sur jeux de test représentatifs</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Sensibilité / Rappel (Recall)</strong></td>
              <td><code>VP / (VP + FN)</code></td>
              <td>&gt; 92% (Minimiser les faux négatifs critiques)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>Précision (Precision)</strong></td>
              <td><code>VP / (VP + FP)</code></td>
              <td>&gt; 85% (Limiter la fatigue des aidants aux alertes)</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
            <tr>
              <td><strong>F1-Score Harmonique</strong></td>
              <td><code>2 · (Prec · Rec) / (Prec + Rec)</code></td>
              <td>Équilibre optimal entre détection et faux positifs</td>
              <td><span class="badge badge-yellow">À mesurer expérimentalement</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 11 : Modélisation du Risque</div>
      <div class="footer-right">Page 23 / 44</div>
    </div>
  </div>
"@
}

function Get-Page24-Ch11-AR {
  return @"
  <!-- PAGE 24: CHAPTER 11 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 11</span>
        <span class="header-title">حساب مؤشر الخطر القلبي (0-100) والتنبؤ</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>11. التنبؤ بالمخاطر القلبية وحساب المؤشر (0–100)</h1>
          <p>مقياس الخطر المتدرج، ومستويات الخطورة الفسيولوجية، وتفسير العوامل المسببة</p>
        </div>
        <div class="chapter-badge">مؤشر الخطر القلبي</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_9_RISK
        <div class="figure-caption"><strong>شكل 11.1 —</strong> السلم المعياري لمؤشر الخطر القلبي الوعائي (0–100) ومصفوفة الحالات الفسيولوجية المرتبطة به</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">11.1 الصياغة الخوارزمية لمؤشر الخطر (0–100)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            يولد نموذج تعلم الآلة احتمالية معايرة تُحول إلى <strong>مؤشر رقمي صحيح يتراوح بين 0 و100</strong>:
          </p>
          <ul class="tech-list">
            <li><strong>المؤشر 0 – 25 (طبيعي):</strong> استقرار تام وتطابق مع السجل الأساسي للشخص.</li>
            <li><strong>المؤشر 26 – 50 (خطر معتدل):</strong> انحراف طفيف لا يستدعي الذعر (مثل إجهاد خفيف، أو تسارع طفيف أثناء الراحة).</li>
            <li><strong>المؤشر 51 – 75 (خطر مرتفع):</strong> تزامن عدة اضطرابات فسيولوجية تتطلب انتباه مقدم الرعاية فورًا.</li>
            <li><strong>المؤشر 76 – 100 (حرج / طوارئ):</strong> تدهور حاد متعدد المعايير أو سقوط مفاجئ مع طلب النجدة.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">11.2 الشفافية والتفسير: العوامل المسببة للارتفاع</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            لتجنب غموض الذكاء الاصطناعي، يرفق كل تقييم خطر بتقرير مفهوم يبين العوامل الفسيولوجية المساهمة:
          </p>
          <div style="background:var(--slate-100); padding:2.5mm; border-radius:5px; border-right:3px solid var(--amber);">
            <div style="font-size:7.5pt; font-weight:700; color:var(--navy-mid);">مثال لتقرير استدلال الذكاء الاصطناعي:</div>
            <p style="font-size:7.2pt; color:var(--slate-700); font-family:monospace; margin-top:1mm;" dir="ltr">
              "Score: 68/100 [HIGH RISK]<br/>
              Contributing Factors: Elevated resting heart rate (+38 bpm vs baseline) + Decreased SpO₂ (91%) + Irregular respiratory pattern."
            </p>
          </div>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 11.1 — معايير ومقاييس تقييم كفاءة نموذج الذكاء الاصطناعي</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المعيار الإحصائي</th>
              <th>التعريف الرياضي</th>
              <th>الهدف التقني للنموذج الأولي</th>
              <th>القيمة التجريبية الحقيقية</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>الدقة الكلية (Accuracy)</strong></td>
              <td><code>(VP + VN) / Total</code></td>
              <td>&gt; 90% في عينات الاختبار التجريبية</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>حساسية الكشف (Recall)</strong></td>
              <td><code>VP / (VP + FN)</code></td>
              <td>&gt; 92% (لتفادي إغفال أي حالة حرجة حقيقية)</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>الدقة الإيجابية (Precision)</strong></td>
              <td><code>VP / (VP + FP)</code></td>
              <td>&gt; 85% (للحد من الإنذارات الكاذبة المزعجة)</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>الدرجة التوافقية (F1-Score)</strong></td>
              <td><code>2 · (Prec · Rec) / (Prec + Rec)</code></td>
              <td>تحقيق التوازن الأمثل بين الرصد والإنذارات</td>
              <td><span class="badge badge-yellow">سيتم تحديدها تجريبيًا</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الحادي عشر : حساب مؤشر الخطر</div>
      <div class="footer-right">الصفحة 24 / 44</div>
    </div>
  </div>
"@
}

function Get-Page25-Ch12-FR {
  return @"
  <!-- PAGE 25: CHAPTER 12 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 12</span>
        <span class="header-title">Application Mobile pour les Aidants (Caregiver App)</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>12. Application Mobile pour les Aidants</h1>
          <p>Tableau de Bord Temps Réel, Historique, Cartographie GPS et Gestion des Alertes</p>
        </div>
        <div class="chapter-badge">CAREGIVER APP</div>
      </div>

      <div class="figure-container">
        $SVG_FIG_MOBILE_DASHBOARD
        <div class="figure-caption"><strong>Figure 12.1 —</strong> Maquette d'interface mobile destinée aux proches aidants (Dashboard, Jauge de Risque et Vitals)</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_13_MOBILE
        <div class="figure-caption"><strong>Figure 12.2 —</strong> Architecture logicielle de l'application mobile : Présentation, Logique BLoC, Services et Persistance</div>
      </div>

      <div class="grid-3" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">12.1 Écrans Clés</div>
          <ul class="tech-list" style="font-size:7.5pt;">
            <li><strong>Tableau de Bord :</strong> Identité du patient, jauge de risque 0-100, FC, SpO₂, Pression, Température.</li>
            <li><strong>Historique Graphique :</strong> Courbes interactives par filtres (Aujourd'hui, 7 Jours, 30 Jours).</li>
            <li><strong>Statut du Boîtier :</strong> Niveau de batterie Li-Po, statut de liaison BLE, synchronisation Cloud.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">12.2 Localisation GPS</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            En cas d'événement critique ou d'appui sur le bouton SOS, les coordonnées GPS acquises par le <strong>module NEO-6M</strong> sont affichées sur une carte vectorielle interactive avec itinéraire d'intervention immédiat.
          </p>
        </div>

        <div class="card">
          <div class="card-title">12.3 Rapports Médicaux</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            Génération automatique de résumés synthétiques PDF exportables pour la consultation du médecin traitant, récapitulant les événements anormaux et la stabilité de la ligne de base.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 12 : Application Mobile Aidant</div>
      <div class="footer-right">Page 25 / 44</div>
    </div>
  </div>
"@
}

function Get-Page26-Ch12-AR {
  return @"
  <!-- PAGE 26: CHAPTER 12 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 12</span>
        <span class="header-title">تطبيق الهاتف المحمول لمرافقي المرضى</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>12. تطبيق الهاتف المحمول لمرافقي المرضى (Caregiver App)</h1>
          <p>لوحة القيادة الحية، والسجل التاريخي، والخرائط الجغرافية، وإدارة الطوارئ</p>
        </div>
        <div class="chapter-badge">تطبيق المرافق</div>
      </div>

      <div class="figure-container">
        $SVG_FIG_MOBILE_DASHBOARD
        <div class="figure-caption"><strong>شكل 12.1 —</strong> النموذج التصميمي لواجهة تطبيق الهاتف المخصص لمرافقي المرضى (مؤشر الخطر، النبض، الموقع)</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_13_MOBILE
        <div class="figure-caption"><strong>شكل 12.2 —</strong> المعمارية البرمجية لتطبيق الهاتف: طبقة العرض، ومنطق BLoC، وخدمات الشبكة والتخزين المحلي</div>
      </div>

      <div class="grid-3" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">12.1 الشاشات الرئيسية</div>
          <ul class="tech-list" style="font-size:7.5pt;">
            <li><strong>لوحة القيادة:</strong> اسم المريض، مؤشر الخطر (0-100)، النبض، الأكسجين، الضغط الخارجي، الحرارة.</li>
            <li><strong>السجل والرسوم:</strong> منحنيات بيانية زمنية (اليوم، آخر 7 أيام، آخر 30 يومًا).</li>
            <li><strong>حالة الجهاز:</strong> شحن بطارية الجهاز المحمول، جودة اتصال البلوتوث، آخر مزامنة سحابية.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">12.2 الخريطة وتحديد الموقع</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            عند وقوع حالة طارئة أو الضغط على زر SOS، تُنقل الإحداثيات الجغرافية الصادرة من <strong>وحدة NEO-6M</strong> مباشرة إلى الخريطة التفاعلية لتسهيل وصول أفراد العائلة أو الإسعاف لمكان المريض.
          </p>
        </div>

        <div class="card">
          <div class="card-title">12.3 التقارير الدورية</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            إمكانية تصدير تقارير صحية موجزة بصيغة PDF لعرضها على الطبيب المعالج أثناء الزيارات الدورية، تلخص الأحداث غير المعتادة واستقرار السجل الحيوي الأساسي.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثاني عشر : تطبيق الهاتف للمرافق</div>
      <div class="footer-right">الصفحة 26 / 44</div>
    </div>
  </div>
"@
}

function Get-Page27-Ch13-FR {
  return @"
  <!-- PAGE 27: CHAPTER 13 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 13</span>
        <span class="header-title">Système d'Alerte Intelligent &amp; Escalade</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>13. Système d'Alerte Intelligent &amp; Escalade</h1>
          <p>Hiérarchisation des Alertes, Déclencheurs Physiques et Protocole Gradué</p>
        </div>
        <div class="chapter-badge">ALERT ESCALATION</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_10_ALERT
        <div class="figure-caption"><strong>Figure 13.1 —</strong> Matrice d'escalade des alertes sur 4 niveaux de risque (Faible, Moyen, Élevé, Critique/SOS)</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 13.1 — Protocole d'Escalade et Actions Selon le Niveau de Risque</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Niveau de Risque</th>
              <th>Plage Score</th>
              <th>Action Matérielle Locale</th>
              <th>Action Application Aidant</th>
              <th>Protocole d'Escalade</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><span class="badge badge-green">FAIBLE (Normal)</span></td>
              <td>0 – 25</td>
              <td>LED Verte allumée fixe, Buzzer muet</td>
              <td>Mise à jour passive du tableau de bord</td>
              <td>Aucune notification requise</td>
            </tr>
            <tr>
              <td><span class="badge badge-yellow">MOYEN (Attention)</span></td>
              <td>26 – 50</td>
              <td>LED Jaune allumée, Buzzer muet</td>
              <td>Notification informative push (repos conseillé)</td>
              <td>Suivi automatique renforcé pendant 30 min</td>
            </tr>
            <tr>
              <td><span class="badge badge-red" style="background:#FED7AA; color:#9A3412;">ÉLEVÉ (Alerte)</span></td>
              <td>51 – 75</td>
              <td>LED Rouge clignotante, Bip discret (1 bip/30s)</td>
              <td>Notification sonore prioritaire avec son d'alerte</td>
              <td>Vérification de l'état du patient par l'aidant</td>
            </tr>
            <tr>
              <td><span class="badge badge-red">CRITIQUE / SOS</span></td>
              <td>76 – 100</td>
              <td>LED Rouge clignotement rapide + Buzzer continu</td>
              <td>Alerte d'urgence persistante + Position GPS</td>
              <td>Workflow d'urgence, SMS/Appel pré-configuré</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">13.1 Précision sur les Services d'Urgence (SAMU/15)</div>
          <div class="callout warning">
            Le prototype <strong>ne prétend pas déclencher un appel automatique garanti vers les services de secours officiels (SAMU / Protection Civile)</strong>, afin de respecter les réglementations strictes interdisant les fausses alertes automatiques. L'escalade prévient les contacts d'urgence préenregistrés qui décident de l'intervention.
          </div>
        </div>

        <div class="card">
          <div class="card-title">13.2 Débruitage et Rejet des Fausses Alertes</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Pour prévenir la fatigue des alertes, le système applique une <strong>fenêtre de confirmation temporelle</strong> : une valeur aberrante isolée sur une seule seconde ne déclenche aucune alarme tant qu'elle n'est pas corroborée sur au moins 3 fenêtres consécutives ou confirmée par le capteur de mouvement MPU6050.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 13 : Système d'Alerte</div>
      <div class="footer-right">Page 27 / 44</div>
    </div>
  </div>
"@
}

function Get-Page28-Ch13-AR {
  return @"
  <!-- PAGE 28: CHAPTER 13 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 13</span>
        <span class="header-title">نظام الإنذار الذكي وتصعيد الطوارئ</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>13. نظام الإنذار الذكي وتصعيد التنبيهات</h1>
          <p>التدرج الهرمي لمستويات الإنذار، والمحفزات العتادية، وبروتوكول الطوارئ</p>
        </div>
        <div class="chapter-badge">تصعيد الطوارئ</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_10_ALERT
        <div class="figure-caption"><strong>شكل 13.1 —</strong> سلم تصعيد التنبيهات عبر 4 مستويات متدرجة (طبيعي، معتدل، مرتفع، حرج / استغاثة)</div>
      </div>

      <div class="card">
        <div class="card-title">جدول 13.1 — مصفوفة خطة تصعيد التنبيهات والإجراءات الفورية بحسب مستوى الخطر</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>مستوى الخطر</th>
              <th>نطاق المؤشر</th>
              <th>الإجراء العتادي بالجهاز</th>
              <th>إجراء تطبيق المرافق بالهاتف</th>
              <th>بروتوكول التصعيد المعتمد</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><span class="badge badge-green">منخفض (طبيعي)</span></td>
              <td>0 – 25</td>
              <td>إضاءة LED خضراء، الجرس صامت</td>
              <td>تحديث دوري هادئ للبيانات الحيوية</td>
              <td>استمرار الرصد دون أي إزعاج</td>
            </tr>
            <tr>
              <td><span class="badge badge-yellow">معتدل (تنبيه وقائي)</span></td>
              <td>26 – 50</td>
              <td>إضاءة LED صفراء، الجرس صامت</td>
              <td>إشعار وقائي نصي (نصيحة بالراحة وشرب الماء)</td>
              <td>تكثيف المراقبة تلقائيًا لمدة 30 دقيقة</td>
            </tr>
            <tr>
              <td><span class="badge badge-red" style="background:#FED7AA; color:#9A3412;">مرتفع (خطر)</span></td>
              <td>51 – 75</td>
              <td>وميض LED أحمر، صفير خفيف متقطع</td>
              <td>إشعار صوتي مميز ومرتفع لهاتف المرافق</td>
              <td>توجيه المرافق للتواصل والاطمئنان على المريض</td>
            </tr>
            <tr>
              <td><span class="badge badge-red">حرج / استغاثة SOS</span></td>
              <td>76 – 100</td>
              <td>وميض أحمر سريع + رنين مستمر للجرس</td>
              <td>تنبيه طوارئ فوري مع عرض موقع GPS</td>
              <td>إرسال رسائل استغاثة للأرقام المعتمدة مسبقًا</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">13.1 توضيح هام بشأن الاتصال بالإسعاف الرسمي</div>
          <div class="callout warning">
            <strong>لا يدّعي النموذج الأولي إجراء اتصال آلي مباشر بأرقام الإسعاف أو الحماية المدنية</strong> تفاديًا للمخالفات القانونية المترتبة على البلاغات الآلية الخاطئة؛ بل يقتصر التصعيد على إشعار أقارب المريض الذين يملكون تقدير الموقف والاتصال بالجهات المعنية.
          </div>
        </div>

        <div class="card">
          <div class="card-title">13.2 تصفية الإنذارات ومنع الإزعاج الكاذب</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            للحد من الإنذارات الكاذبة، يطبق النظام <strong>نافذة تأكيد زمنية متتابعة</strong>؛ حيث يتم تجاهل أي قراءة شاذة معزولة لثانية واحدة ما لم تتكرر لثلاث نوافذ متتالية وتتوافق مع قراءات حركة الجسم الصادرة من MPU6050.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثالث عشر : نظام الإنذار والتصعيد</div>
      <div class="footer-right">الصفحة 28 / 44</div>
    </div>
  </div>
"@
}

function Get-Page29-Ch14-FR {
  return @"
  <!-- PAGE 29: CHAPTER 14 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 14</span>
        <span class="header-title">Sécurité des Données &amp; Confidentialité Médicale</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>14. Sécurité des Données &amp; Confidentialité</h1>
          <p>Protection des Données de Santé à Caractère Sensible, Chiffrement et Conformité</p>
        </div>
        <div class="chapter-badge">SÉCURITÉ &amp; RGPD</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">Principe Fondamental de Traitement des Données Médicales</div>
        <strong>Les données des patients doivent impérativement être traitées comme des informations de santé hautement sensibles (Sensitive Health Information).</strong> Tout le cycle de vie de la donnée (acquisition, transit, stockage et inférence) applique le principe de minimisation et de cloisonnement strict.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">14.1 Sécurisation Multi-Niveaux</div>
          <ul class="tech-list">
            <li><strong>Liaison BLE (Device ➔ Smartphone) :</strong> Appairage sécurisé LE Secure Connections avec chiffrement AES-CCM 128 bits. Les clés sont générées par échange ECDH éphémère.</li>
            <li><strong>Canal Internet (Smartphone ➔ Cloud) :</strong> Tunnels chiffrés sous protocole <strong>TLS 1.3</strong> avec suites cryptographiques robustes et certificats SSL valides.</li>
            <li><strong>Contrôle d'Accès Cloud :</strong> Authentification basée sur des jetons <strong>JSON Web Tokens (JWT)</strong> signés avec algorithme asymétrique RSA-256.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">14.2 Chiffrement au Repos et Isolation</div>
          <ul class="tech-list">
            <li><strong>Stockage Local (microSD &amp; Flash) :</strong> Les données résiduelles tamponnées sont encodées et chiffrées avant écriture physique.</li>
            <li><strong>Base de Données Cloud :</strong> Chiffrement des tables PostgreSQL et InfluxDB au repos (AES-256) via chiffrement de volume LUKS.</li>
            <li><strong>Cloisonnement Multi-Tenant :</strong> Séparation étanche des identifiants patients et des métriques physiologiques pour interdire toute fuite transversale.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 14.1 — Matrice des Mesures de Sécurité et Conformité Réglementaire</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Périmètre de Sécurité</th>
              <th>Menace Identifiée</th>
              <th>Mesure Technique Implémentée</th>
              <th>Standard de Référence</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Liaison Radio BLE</strong></td>
              <td>Attaque Man-in-the-Middle (MitM) / Écoute</td>
              <td>LE Secure Connections + AES-128 CCM</td>
              <td>Bluetooth SIG Core Spec 5.0</td>
            </tr>
            <tr>
              <td><strong>API Backend Cloud</strong></td>
              <td>Usurpation d'identité / Injection</td>
              <td>OAuth2 + JWT (Expiration courte 15 min)</td>
              <td>OWASP API Security Top 10</td>
            </tr>
            <tr>
              <td><strong>Données Personnelles</strong></td>
              <td>Vol de données à caractère médical</td>
              <td>Pseudonymisation + Séparation identité/signaux</td>
              <td>RGPD Article 9 &amp; HIPAA</td>
            </tr>
            <tr>
              <td><strong>Intégrité Télémétrie</strong></td>
              <td>Corruption de paquets ou altération</td>
              <td>Somme de contrôle CRC16 par trame</td>
              <td>IEEE Health Informatics</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 14 : Sécurité &amp; Confidentialité</div>
      <div class="footer-right">Page 29 / 44</div>
    </div>
  </div>
"@
}

function Get-Page30-Ch14-AR {
  return @"
  <!-- PAGE 30: CHAPTER 14 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 14</span>
        <span class="header-title">أمن البيانات والخصوصية وحماية السجلات الصحية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>14. أمن البيانات والخصوصية وحماية المعلومات الصحية</h1>
          <p>حماية السجلات الطبية الحساسة، وبروتوكولات التشفير، والامتثال للمعايير الدولية</p>
        </div>
        <div class="chapter-badge">أمن وخصوصية البيانات</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">المبدأ الأخلاقي والقانوني الصارم لحماية بيانات المرضى</div>
        <strong>يجب التعامل مع كافة بيانات المرضى المقاسة باعتبارها معلومات صحية حساسة للغاية (Sensitive Health Information).</strong> ويخضع مسار البيانات بالكامل لمبادئ تقليص جمع البيانات الشخصية إلى الحد الأدنى والتشفير الشامل في النقل والتخزين.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">14.1 منظومة التشفير متعددة المستويات</div>
          <ul class="tech-list">
            <li><strong>قناة البلوتوث (الجهاز ➔ الهاتف):</strong> اقتران آمن وتشفير عتادي بخوارزمية AES-CCM 128 بت مع توليد مفاتيح تشفير ديناميكية عبر بروتوكول ECDH.</li>
            <li><strong>قناة الإنترنت (الهاتف ➔ السحابة):</strong> نقل البيانات حصريًا عبر أنفاق <strong>TLS 1.3</strong> المشفرة لضمان سرية الحزم وسلامتها من التعديل.</li>
            <li><strong>صلاحيات الوصول السحابي:</strong> التحقق من هوية الأجهزة والمستخدمين عبر رموز <strong>JSON Web Tokens (JWT)</strong> ذات التوقيع الرقمي المشفر.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">14.2 حماية البيانات أثناء التخزين والعزل</div>
          <ul class="tech-list">
            <li><strong>التخزين المحلي بالجهاز (microSD والذاكرة):</strong> تشفير البيانات الفسيولوجية المؤقتة قبل كتابتها محليًا لمنع استخراجها في حال فقدان الجهاز.</li>
            <li><strong>قواعد البيانات السحابية:</strong> تشفير سجلات PostgreSQL وInfluxDB في وحدات التخزين الصلبة بخوارزمية AES-256.</li>
            <li><strong>عزل الهوية الشخصية:</strong> فصل الهوية المدنية للمريض عن الإشارات الحيوية المجمعة (Pseudonymization) لضمان الخصوصية التامة.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 14.1 — مصفوفة التدابير الأمنية والامتثال للمعايير واللوائح الصحية</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المجال الأمني</th>
              <th>التهديد المحتمل</th>
              <th>الإجراء الهندسي المطبق</th>
              <th>المعيار المرجعي</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>البث اللاسلكي للبلوتوث</strong></td>
              <td>التنصت واعتراض الإشارات اللاسلكية</td>
              <td>بروتوكول LE Secure Connections + AES-128</td>
              <td>Bluetooth SIG Core Spec 5.0</td>
            </tr>
            <tr>
              <td><strong>واجهة السحابة البرمجية</strong></td>
              <td>انتحال الشخصية وحقن البيانات الخبيثة</td>
              <td>توثيق OAuth2 مع رموز JWT محدودة الأجل (15 دقيقة)</td>
              <td>OWASP API Security Top 10</td>
            </tr>
            <tr>
              <td><strong>الخصوصية الطبية</strong></td>
              <td>تسريب السجلات الصحية الخاصة للمرضى</td>
              <td>فصل الهوية والاسم عن القياسات الفسيولوجية</td>
              <td>اللائحة العامة لحماية البيانات (RGPD / HIPAA)</td>
            </tr>
            <tr>
              <td><strong>سلامة الإشارات</strong></td>
              <td>تلف الحزم أو التلاعب بمحتواها</td>
              <td>رمز التحقق من الخطأ CRC16 لكل حزمة مرسلة</td>
              <td>معايير IEEE للمعلوماتية الصحية</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الرابع عشر : أمن البيانات والخصوصية</div>
      <div class="footer-right">الصفحة 30 / 44</div>
    </div>
  </div>
"@
}

Write-Output "Pages 21 to 30 generated."
