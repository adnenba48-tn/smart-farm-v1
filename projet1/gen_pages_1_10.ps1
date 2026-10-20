# SmartCardio Guardian - Page Generator: Pages 1 to 10
# Cover, TOC, Ch 1, Ch 2, Ch 3, Ch 4 (Alternating FR / AR)

function Get-Page1-Cover {
  return @"
  <!-- PAGE 1: COVER -->
  <div class="page cover-page">
    <div class="cover-header">
      <div class="cover-institution">PROJET DE FIN D'ÉTUDES — INGÉNIERIE &amp; SYSTÈMES EMBARQUÉS / IOT / IA</div>
      <div class="cover-badge">DOCUMENT DE CONCEPTION TECHNIQUE</div>
    </div>

    <div class="cover-title-area">
      <div class="cover-tagline">SMART HEALTH MONITORING &amp; EARLY WARNING SYSTEM</div>
      <h1 class="cover-title">SmartCardio Guardian</h1>
      <div class="cover-subtitle">
        Système IoT Portable Basé sur l'Intelligence Artificielle pour la Surveillance Continue du Risque Cardiovasculaire et l'Alerte Précoce des Proches
        <br/>
        <span style="font-family:'Cairo', sans-serif; font-size:10pt; color:#90E0EF; display:block; margin-top:4px;" dir="rtl">
          نظام إنترنت الأشياء المحمول المدعوم بالذكاء الاصطناعي للرصد المستمر للمخاطر القلبية والإنذار المبكر
        </span>
      </div>
    </div>

    <div class="cover-illustration">
      $SVG_COVER
    </div>

    <div class="cover-meta">
      <div class="meta-block">
        <h4>Auteur &amp; Réalisateur</h4>
        <p>Adnen Ben Abdallah</p>
        <span>Élève Ingénieur — Projet de Fin d'Études (PFE)</span>
      </div>
      <div class="meta-block">
        <h4>Domaines Technologiques</h4>
        <p>IoT • Embedded Systems • Edge AI • BLE • Cloud</p>
        <span>ESP32-S3 | MAX30102 | MAX30205 | MPU6050 | FastAPI</span>
      </div>
    </div>

    <div class="cover-footer">
      <div>Édition Bilingue Officielle (Français / العربية)</div>
      <div>Notice : Dispositif d'estimation de risque et de prévention — Non destiné au diagnostic médical</div>
      <div>2026-2027</div>
    </div>
  </div>
"@
}

function Get-Page2-TOC {
  return @"
  <!-- PAGE 2: TABLE OF CONTENTS -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">SOMMAIRE</span>
        <span class="header-title">Table des Matières &amp; فهرس المحتويات</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>Table des Matières Bilingue</h1>
          <p>Organisation méthodique alternée : Page Française suivie de sa Page Arabe correspondante</p>
        </div>
        <div class="chapter-badge">44 PAGES</div>
      </div>

      <div class="callout info" style="margin-bottom:2mm;">
        <div class="callout-title">
          <span>Structure du Document Technique</span>
        </div>
        Le présent document suit scrupuleusement une alternance de pages : chaque chapitre est présenté exhaustivement en <strong>Français</strong> sur une page impaire, suivi immédiatement de son équivalent technique rigoureux en <strong>Arabe</strong> sur la page paire suivante.
      </div>

      <div class="toc-grid">
        <div class="toc-column">
          <h3>Partie I : Fondements &amp; Matériel (FR / AR)</h3>
          <div class="toc-item"><span class="toc-item-title">Ch. 1 — Présentation Générale du Projet / نظرة عامة</span><span class="toc-item-page">p. 03 - 04</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 2 — Contexte &amp; Problématique / السياق والإشكالية</span><span class="toc-item-page">p. 05 - 06</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 3 — Solution Proposée &amp; Concept / الحل والمفهوم</span><span class="toc-item-page">p. 07 - 08</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 4 — Spécifications Fonctionnelles / المتطلبات</span><span class="toc-item-page">p. 09 - 10</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 5 — Architecture Matérielle / معمارية العتاد</span><span class="toc-item-page">p. 11 - 12</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 6 — Chaîne de Capteurs / حساسات القياس</span><span class="toc-item-page">p. 13 - 14</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 7 — Système Embarqué &amp; Firmware / النظام المدمج</span><span class="toc-item-page">p. 15 - 16</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 8 — Communication &amp; BLE 5.0 / بروتوكول البلوتوث</span><span class="toc-item-page">p. 17 - 18</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 9 — Architecture Cloud &amp; Backend / الحوسبة السحابية</span><span class="toc-item-page">p. 19 - 20</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 10 — Moteur d'IA &amp; Traitement / الذكاء الاصطناعي</span><span class="toc-item-page">p. 21 - 22</span></div>
        </div>

        <div class="toc-column">
          <h3>Partie II : IA, Alertes, Tests &amp; Validation</h3>
          <div class="toc-item"><span class="toc-item-title">Ch. 11 — Estimation du Risque (0-100) / مؤشر الخطر</span><span class="toc-item-page">p. 23 - 24</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 12 — Application Mobile Aidant / تطبيق الهاتف</span><span class="toc-item-page">p. 25 - 26</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 13 — Système d'Alerte Intelligent / نظام الإنذار</span><span class="toc-item-page">p. 27 - 28</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 14 — Sécurité des Données &amp; RGPD / أمن البيانات</span><span class="toc-item-page">p. 29 - 30</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 15 — Gestion de l'Énergie &amp; Batterie / إدارة الطاقة</span><span class="toc-item-page">p. 31 - 32</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 16 — Stratégie de Validation / التحقق التجريبي</span><span class="toc-item-page">p. 33 - 34</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 17 — Limitations Médicales &amp; Tech. / القيود التقنية</span><span class="toc-item-page">p. 35 - 36</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 18 — Perspectives &amp; Améliorations / الآفاق المستقبلية</span><span class="toc-item-page">p. 37 - 38</span></div>
          <div class="toc-item"><span class="toc-item-title">Ch. 19 — Feuille de Route / خارطة طريق المشروع</span><span class="toc-item-page">p. 39 - 40</span></div>
          <div class="toc-item"><span class="toc-item-title">Conclusion &amp; Annexes Techniques / الخاتمة والمراجع</span><span class="toc-item-page">p. 41 - 44</span></div>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Avertissement Déontologique et Règle d'Intégrité Scientifique</div>
        <p style="font-size:7.8pt; color:var(--slate-600);">
          Ce projet s'inscrit dans le cadre d'un travail d'ingénierie universitaire rigoureux. Conformément aux exigences éthiques, aucune métrique clinique ou précision artificielle n'a été inventée. Toutes les grandeurs expérimentales à valider sur banc d'essai portent la mention explicite : <em>« À mesurer expérimentalement » / « سيتم تحديدها تجريبيًا »</em>.
        </p>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Document de Conception Technique</div>
      <div class="footer-right">Page 02 / 44</div>
    </div>
  </div>
"@
}

function Get-Page3-Ch1-FR {
  return @"
  <!-- PAGE 3: CHAPTER 1 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 01</span>
        <span class="header-title">Présentation Générale du Projet</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>1. Présentation Générale du Projet</h1>
          <p>Système IoT Portable avec Inférence IA pour l'Alerte Cardiovasculaire Précoce</p>
        </div>
        <div class="chapter-badge">CONCEPT INITIAL</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">Avertissement Médical et Délimitation du Périmètre</div>
        SmartCardio Guardian est strictement un <strong>dispositif de surveillance continue, d'estimation probabiliste de risque et d'alerte précoce (Early Warning System)</strong>. Il n'a en aucun cas pour prétention de délivrer un diagnostic médical ni de remplacer un cardiologue qualifié ou un équipement certifié hospitalier.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">1.1 Vision Globale &amp; Public Cible</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            Les accidents cardiovasculaires constituent l'une des premières causes de mortalité dans le monde. La détection tardive des signes avant-coureurs augmente considérablement la morbidité.
          </p>
          <ul class="tech-list">
            <li><strong>Public visé :</strong> Personnes âgées, individus avec antécédents cardiovasculaires ou facteurs de comorbidité (hypertension, arythmie).</li>
            <li><strong>Portabilité :</strong> Boîtier compact porté au quotidien, fixé aux vêtements ou au torse.</li>
            <li><strong>Tranquillité des proches :</strong> Transmission instantanée des alertes vers les aidants familiaux (Caregivers).</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">1.2 Piliers Technologiques du Système</div>
          <ul class="tech-list">
            <li><strong>Acquisition Embarquée :</strong> Microcontrôleur <strong>ESP32-S3</strong> couplé à une chaîne de capteurs I²C haute précision.</li>
            <li><strong>Transmission BLE 5.0 :</strong> Flux bidirectionnel sécurisé vers le smartphone personnel servant de passerelle de relais.</li>
            <li><strong>Moteur d'IA Distribué :</strong> Analyse multimodale (FC, SpO₂, Pression artérielle externe, Température, Activité, Respiration).</li>
            <li><strong>Score de Risque 0–100 :</strong> Indice transparent et explicable accompagné de ses facteurs causaux.</li>
          </ul>
        </div>
      </div>

      <div class="figure-container">
        $SVG_FIG_WEARABLE_CONCEPT
        <div class="figure-caption"><strong>Figure 1.1 —</strong> Concept du boîtier portable SmartCardio Guardian, fixation ergonomique et interface locale</div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">1.3 Objectifs Clés d'Ingénierie</div>
        <div class="grid-4" style="gap:2mm;">
          <div class="metric-pill"><div class="metric-value">&lt; 500 ms</div><div class="metric-label">Latence BLE Locale</div></div>
          <div class="metric-pill"><div class="metric-value">~12 h</div><div class="metric-label">Autonomie Cible</div></div>
          <div class="metric-pill"><div class="metric-value">6 Paramètres</div><div class="metric-label">Signaux Physiologiques</div></div>
          <div class="metric-pill"><div class="metric-value">100% Hors-Ligne</div><div class="metric-label">Buffer Flash / microSD</div></div>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 1 : Présentation Générale</div>
      <div class="footer-right">Page 03 / 44</div>
    </div>
  </div>
"@
}

function Get-Page4-Ch1-AR {
  return @"
  <!-- PAGE 4: CHAPTER 1 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 01</span>
        <span class="header-title">نظرة عامة على المشروع</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>1. نظرة عامة شاملة على المشروع</h1>
          <p>نظام إنترنت الأشياء المحمول المعتمد على الذكاء الاصطناعي للرصد القلبي المستمر والإنذار المبكر</p>
        </div>
        <div class="chapter-badge">المفهوم الأساسي</div>
      </div>

      <div class="callout alert">
        <div class="callout-title">تنبيه طبي وتحديد دقيق لنطاق العمل</div>
        يُعد نظام SmartCardio Guardian حصريًا <strong>نظامًا للرصد المستمر (Continuous Monitoring)، وتقدير المخاطر القلبية (Risk Estimation)، واكتشاف الشذوذ الفسيولوجي والإنذار المبكر (Early Warning System)</strong>. ولا يُعتبر بأي شكل من الأشكال جهاز تشخيص طبي نهائي ولا يحل محل الطبيب المختص أو الفحوصات الإكلينيكية المعتمدة.
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">1.1 الرؤية الشاملة والفئات المستهدفة</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            تمثل أمراض القلب والأوعية الدموية أحد التحديات الصحية الكبرى عالميًا، حيث يؤدي غياب المراقبة المستمرة إلى تفاقم الحالات الحرجة دون إنذار مسبق.
          </p>
          <ul class="tech-list">
            <li><strong>الفئة المستهدفة:</strong> كبار السن، والأشخاص ذوو التاريخ القلبي المسبق أو المعرضون لعوامل الخطورة (ارتفاع الضغط، اضطراب النبض).</li>
            <li><strong>قابلية الارتداء:</strong> جهاز مدمج وخفيف الوزن يُثبت على الملابس أو الجسم لضمان الراحة طوال اليوم.</li>
            <li><strong>طمأنة العائلة:</strong> إرسال تنبيهات فورية لمقدمي الرعاية (Caregivers) وأفراد العائلة عند رصد أي مؤشر غير طبيعي.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">1.2 الركائز التقنية للنظام المتكامل</div>
          <ul class="tech-list">
            <li><strong>الاستشعار المدمج:</strong> وحدة المعالجة الدقيقة <strong>ESP32-S3</strong> المرتبطة بحساسات رقمية دقيقة عبر بروتوكول I²C.</li>
            <li><strong>الاتصال الذكي (BLE 5.0):</strong> نقل البيانات فوريًا ومحليًا إلى الهاتف الذكي ليعمل كبوابة ترحيل سحابية.</li>
            <li><strong>محرك الذكاء الاصطناعي:</strong> تحليل متعدد المعايير (معدل النبض، الأكسجين، الضغط الخارجي، الحرارة، الحركة، التنفس).</li>
            <li><strong>مؤشر الخطر (0–100):</strong> درجة تقييم واضحة وقابلة للتفسير مدعومة ببيان العوامل المسببة للارتفاع.</li>
          </ul>
        </div>
      </div>

      <div class="figure-container">
        $SVG_FIG_WEARABLE_CONCEPT
        <div class="figure-caption"><strong>شكل 1.1 —</strong> المفهوم التصميمي للجهاز المحمول SmartCardio Guardian وطريقة الارتداء وواجهة الاستخدام</div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">1.3 أهداف التصميم الهندسي للمشروع</div>
        <div class="grid-4" style="gap:2mm;">
          <div class="metric-pill"><div class="metric-value">&lt; 500 ms</div><div class="metric-label">زمن استجابة البلوتوث</div></div>
          <div class="metric-pill"><div class="metric-value">~12 ساعة</div><div class="metric-label">عمر البطارية المستهدف</div></div>
          <div class="metric-pill"><div class="metric-value">6 مؤشرات</div><div class="metric-label">إشارات حيوية متزامنة</div></div>
          <div class="metric-pill"><div class="metric-value">100% محلي</div><div class="metric-label">تخزين مؤقت عند انقطاع الشبكة</div></div>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الأول : نظرة عامة على المشروع</div>
      <div class="footer-right">الصفحة 04 / 44</div>
    </div>
  </div>
"@
}

function Get-Page5-Ch2-FR {
  return @"
  <!-- PAGE 5: CHAPTER 2 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 02</span>
        <span class="header-title">Problématique &amp; Contexte Clinique</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>2. Contexte et Problématique</h1>
          <p>Les Limites des Systèmes Conventionnels et la Nécessité d'une Surveillance Intelligente</p>
        </div>
        <div class="chapter-badge">ANALYSE DU BESOIN</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">2.1 Le Défi Médical Cardiovasculaire</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            Les maladies cardiovasculaires représentent plus de 17,9 millions de décès annuels selon l'OMS. Dans une proportion significative des crises aiguës, des dérives physiologiques subtiles se manifestent des dizaines de minutes avant l'événement critique.
          </p>
          <ul class="tech-list">
            <li><strong>Symptômes silencieux :</strong> Variations du rythme cardiaque, baisse graduelle de la saturation en oxygène (SpO₂) sans gêne ressentie immédiatement par le patient.</li>
            <li><strong>Retard à l'alerte :</strong> Les personnes isolées ou âgées tardent souvent à appeler de l'aide par peur de fausse alerte ou incapacité physique soudaine.</li>
            <li><strong>Surveillance fragmentée :</strong> Les consultations médicales ponctuelles ne capturent pas les anomalies épisodiques survenant lors de la vie quotidienne.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">2.2 Limites des Montres Connectées Grand Public</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            Bien que populaires, les montres connectées grand public souffrent de contraintes techniques majeures dans le contexte de la surveillance des personnes à risque :
          </p>
          <ul class="tech-list">
            <li><strong>Absence d'analyse contextuelle :</strong> Une fréquence cardiaque de 110 bpm au repos est inquiétante, mais normale lors d'un effort. La plupart des montres génèrent des faux positifs.</li>
            <li><strong>Écosystèmes fermés :</strong> Pas de transmission directe et personnalisée aux aidants familiaux avec protocole d'escalade d'urgence.</li>
            <li><strong>Algorithmes boîtes noires :</strong> Absence d'explicabilité sur les facteurs ayant conduit à la notification.</li>
          </ul>
        </div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 2.1 — Comparatif des Approches de Suivi Cardiovasculaire</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Critère Technique</th>
              <th>Holter Médical Traditionnel</th>
              <th>Montre Connectée Grand Public</th>
              <th>SmartCardio Guardian (Ce Projet)</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Mode de surveillance</strong></td>
              <td>Enregistrement temporaire (24–48h)</td>
              <td>Ponctuel / Fitness continu</td>
              <td><span class="badge badge-green">Continu au quotidien (~12h/cycle)</span></td>
            </tr>
            <tr>
              <td><strong>Notification Aidant</strong></td>
              <td>Aucune (dépouillement a posteriori)</td>
              <td>Limitée / Partage restreint</td>
              <td><span class="badge badge-blue">Application Aidant dédiée + Escalade</span></td>
            </tr>
            <tr>
              <td><strong>Fusion Multi-Capteurs</strong></td>
              <td>ECG uniquement</td>
              <td>PPG seul + Accéléromètre basique</td>
              <td><span class="badge badge-blue">PPG + Temp + IMU 6-Axes + BP Ext. + GPS</span></td>
            </tr>
            <tr>
              <td><strong>Interprétation Contextuelle</strong></td>
              <td>Praticien après examen</td>
              <td>Seuils statiques rigides</td>
              <td><span class="badge badge-purple">IA Multi-paramètres + Profil Personnel</span></td>
            </tr>
            <tr>
              <td><strong>Bouton SOS &amp; Alarme locale</strong></td>
              <td>Inexistant</td>
              <td>Variable selon modèles</td>
              <td><span class="badge badge-red">Bouton SOS physique + Buzzer + LED RGB</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="callout warning" style="margin-top:auto;">
        <div class="callout-title">Positionnement Éthique et Technique</div>
        Le présent projet n'entend pas se substituer aux appareils de classe médicale III certifiés, mais combler le vide critique entre le confort des montres grand public et l'exigence clinique en offrant un <strong>système d'alerte précoce robuste et accessible</strong>.
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 2 : Problématique &amp; Contexte</div>
      <div class="footer-right">Page 05 / 44</div>
    </div>
  </div>
"@
}

function Get-Page6-Ch2-AR {
  return @"
  <!-- PAGE 6: CHAPTER 2 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 02</span>
        <span class="header-title">السياق وإشكالية البحث</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>2. سياق المشروع وإشكالية البحث</h1>
          <p>قصور الوسائل التقليدية والحاجة الماسة لمنظومة مراقبة استباقية وذكية</p>
        </div>
        <div class="chapter-badge">تحليل الاحتياجات</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">2.1 التحدي الصحي للأمراض القلبية الوعائية</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            تتسبب الأمراض القلبية في وفاة ما يقارب 17.9 مليون شخص سنويًا وفقًا لمنظمة الصحة العالمية. وتكمن المعضلة الرئيسية في أن العديد من النوبات الحادة تسبقها تغيرات فسيولوجية طفيفة قبل وقت كافٍ من وقوع الكارثة.
          </p>
          <ul class="tech-list">
            <li><strong>الأعراض الصامتة:</strong> اضطراب غير محسوس في ضربات القلب أو انخفاض تدريجي في تشبع الأكسجين دون شكوى واضحة من المريض.</li>
            <li><strong>تأخر طلب النجدة:</strong> يعاني المرضى وكبار السن في كثير من الأحيان من العزلة أو التردد في إزعاج ذويهم حتى تفوت اللحظات الحرجة.</li>
            <li><strong>المراقبة المتقطعة:</strong> الزيارات الدورية لعيادة الطبيب لا تكفي لرصد النوبات العابرة التي تحدث أثناء الأنشطة اليومية للمريض.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">2.2 قيود الساعات والأجهزة الاستهلاكية الشائعة</div>
          <p style="font-size:8.2pt; color:var(--slate-700); margin-bottom:2mm;">
            على الرغم من انتشار الساعات الذكية التجارية، إلا أنها تواجه قيودًا جوهرية تحول دون الاعتماد عليها لمراقبة المرضى ذوي الخطورة:
          </p>
          <ul class="tech-list">
            <li><strong>غياب السياق الحركي:</strong> النبض المرتفع أثناء النوم يدعو للقلق، لكنه طبيعي أثناء صعود الدرج؛ وتفتقر الأجهزة البسيطة لهذا التمييز الذكي.</li>
            <li><strong>أنظمة مغلقة:</strong> غياب آليات التنبيه المباشر والمخصص لمرافقي المرضى (Caregivers) وتدرج خطة الطوارئ.</li>
            <li><strong>خوارزميات مبهمة:</strong> عدم توضيح الأسباب الحقيقية والفسيولوجية الكامنة وراء إصدار التنبيه.</li>
          </ul>
        </div>
      </div>

      <div class="card">
        <div class="card-title">جدول 2.1 — مقارنة فنية بين حلول المراقبة القلبية المتاحة ونظام SmartCardio Guardian</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المعيار الفني</th>
              <th>جهاز هولتر الطبي التقليدي</th>
              <th>الساعات الذكية التجارية</th>
              <th>نظام SmartCardio Guardian المقترح</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>طبيعة المراقبة</strong></td>
              <td>تسجيل مؤقت ومحدود (24–48 ساعة)</td>
              <td>متقطعة / موجهة للياقة البدنية</td>
              <td><span class="badge badge-green">رصد مستمر يومي مستهدف (~12 ساعة)</span></td>
            </tr>
            <tr>
              <td><strong>تنبيه المرافقين</strong></td>
              <td>منعدم (تفريغ البيانات بعد انتهاء الفحص)</td>
              <td>محدود وضمن تطبيقات مقيدة</td>
              <td><span class="badge badge-blue">تطبيق مخصص لمقدم الرعاية مع خطة تصعيد</span></td>
            </tr>
            <tr>
              <td><strong>تكامل الحساسات</strong></td>
              <td>تخطيط قلب كهربائي فقط (ECG)</td>
              <td>حساس ضوئي مفرد + حركة بسيطة</td>
              <td><span class="badge badge-blue">PPG + حرارة + حركة 6 محاور + ضغط خارجي + GPS</span></td>
            </tr>
            <tr>
              <td><strong>التفسير السياقي</strong></td>
              <td>يتطلب قراءة لاحقة من الطبيب</td>
              <td>عتبات رقمية ثابتة وغير مرنة</td>
              <td><span class="badge badge-purple">ذكاء اصطناعي متعدد المتغيرات + سجل شخصي</span></td>
            </tr>
            <tr>
              <td><strong>زر الاستغاثة والتنبيه</strong></td>
              <td>غير متوفر</td>
              <td>متباين وغير مخصص للحالات الحرجة</td>
              <td><span class="badge badge-red">زر SOS مادي + جرس صوتي + مؤشرات ضوئية LED</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="callout warning" style="margin-top:auto;">
        <div class="callout-title">الميثاق الهندسي والأخلاقي للنظام</div>
        لا يدّعي هذا المشروع الحلول محل الأجهزة الطبية الجراحية أو المعتمدة سريريًا، بل يهدف إلى سد الفجوة الحرجة بين الأجهزة الاستهلاكية السطحية والاحتياج الواقعي لمرافقي المرضى عبر تقديم <strong>نظام إنذار مبكر دقيق ومتاح</strong>.
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثاني : السياق وإشكالية البحث</div>
      <div class="footer-right">الصفحة 06 / 44</div>
    </div>
  </div>
"@
}

function Get-Page7-Ch3-FR {
  return @"
  <!-- PAGE 7: CHAPTER 3 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 03</span>
        <span class="header-title">Solution Proposée &amp; Concept Global</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>3. Solution Proposée &amp; Concept Global</h1>
          <p>Architecture Multicouche : Du Capteur au Smartphone, au Cloud et à l'Aidant</p>
        </div>
        <div class="chapter-badge">ARCHITECTURE GLOBALE</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_1_ARCHITECTURE
        <div class="figure-caption"><strong>Figure 3.1 —</strong> Architecture système complète de SmartCardio Guardian (du boîtier corporel au Cloud et à l'application aidant)</div>
      </div>

      <div class="grid-3">
        <div class="card">
          <div class="card-title">Étage 1 : Boîtier Corporel</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Module portable articulé autour de l'<strong>ESP32-S3</strong>. Il acquiert à haute fréquence le PPG (MAX30102), la température corporelle (MAX30205), le mouvement 6-axes (MPU6050) et les coordonnées GPS (NEO-6M en cas d'alerte).
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--cyan-accent); font-weight:700;">ESP32-S3 • I²C Bus • OLED • SOS</div>
        </div>

        <div class="card">
          <div class="card-title">Étage 2 : Relais Téléphonique</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Le smartphone du patient agit comme une <strong>passerelle intermédiaire BLE-vers-Internet</strong>. Il assure la réception fluide des données, le stockage local en cas de perte de connexion et le transfert sécurisé via TLS 1.3 vers le Cloud.
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--blue-accent); font-weight:700;">BLE 5.0 • SQLite Buffer • 4G/Wi-Fi</div>
        </div>

        <div class="card">
          <div class="card-title">Étage 3 : Cloud, IA &amp; Aidant</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Le serveur Cloud héberge le moteur d'inférence d'IA qui fusionne les signaux avec l'historique personnel. Il calcule un <strong>Score de Risque (0–100)</strong> et notifie immédiatement le proche aidant via une application dédiée.
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--emerald); font-weight:700;">FastAPI • Modèle ML • Caregiver App</div>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">3.1 Chaîne de Traitement des Données : Vue Linéaire</div>
        <p style="font-size:8pt; color:var(--slate-700); margin-bottom:1.5mm;">
          Le flux global d'information traverse 7 étapes interdépendantes et synchronisées :
        </p>
        <div style="background:var(--slate-100); padding:2mm 3mm; border-radius:5px; font-family:'JetBrains Mono', monospace; font-size:7.2pt; color:var(--navy-mid); text-align:center;">
          Capteurs Physiques ➔ ESP32-S3 (Acquisition &amp; Filtrage) ➔ BLE 5.0 ➔ Passerelle Mobile ➔ API Cloud Sécurisée ➔ Moteur IA (Score 0-100) ➔ Application Mobile Aidant
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 3 : Solution Proposée</div>
      <div class="footer-right">Page 07 / 44</div>
    </div>
  </div>
"@
}

function Get-Page8-Ch3-AR {
  return @"
  <!-- PAGE 8: CHAPTER 3 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 03</span>
        <span class="header-title">الحل المقترح والمفهوم الشامل</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>3. الحل المقترح والمفهوم الشامل للنظام</h1>
          <p>معمارية تقنية متكاملة متعددة الطبقات: من الحساسات إلى السحابة ومقدم الرعاية</p>
        </div>
        <div class="chapter-badge">المعمارية الشاملة</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_1_ARCHITECTURE
        <div class="figure-caption"><strong>شكل 3.1 —</strong> معمارية النظام المتكامل SmartCardio Guardian (من الجهاز المحمول إلى السحابة وتطبيق المرافق)</div>
      </div>

      <div class="grid-3">
        <div class="card">
          <div class="card-title">الطبقة 1: الجهاز المحمول للجسم</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            وحدة ذكية ترتكز على معالج <strong>ESP32-S3</strong> لجمع إشارات النبض والأكسجين (MAX30102)، وحرارة الجسم (MAX30205)، والحركة سداسية المحاور (MPU6050)، وإحداثيات الموقع (NEO-6M) عند الطوارئ.
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--cyan-accent); font-weight:700;">ESP32-S3 • ناقل I²C • شاشة OLED • زر SOS</div>
        </div>

        <div class="card">
          <div class="card-title">الطبقة 2: الهاتف الذكي كبوابة ترحيل</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            يعمل هاتف المريض المحمول كـ <strong>بوابة وسيطة تربط البلوتوث بالإنترنت</strong>؛ حيث يستقبل حزم البيانات بسلاسة، ويخزنها محليًا في حال انقطاع الشبكة، ثم يرسلها مشفرة إلى الخادم السحابي.
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--blue-accent); font-weight:700;">BLE 5.0 • قاعدة SQLite مؤقتة • 4G/Wi-Fi</div>
        </div>

        <div class="card">
          <div class="card-title">الطبقة 3: السحابة والذكاء وتطبيق المرافق</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            يستضيف الخادم محرك الذكاء الاصطناعي لدمج البيانات الفسيولوجية مع السجل الأساسي للمريض، واستخراج <strong>مؤشر الخطر (0–100)</strong>، وتوجيه التنبيهات فورًا لتطبيق مقدم الرعاية (Caregiver App).
          </p>
          <div style="margin-top:1.5mm; font-size:7pt; color:var(--emerald); font-weight:700;">خادم FastAPI • نموذج ML • تطبيق المرافق</div>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">3.1 مسار معالجة وتدفق البيانات الفسيولوجية</div>
        <p style="font-size:8pt; color:var(--slate-700); margin-bottom:1.5mm;">
          تسير البيانات عبر سبع مراحل تقنية متسلسلة ومحكمة الترابط:
        </p>
        <div style="background:var(--slate-100); padding:2mm 3mm; border-radius:5px; font-family:'JetBrains Mono', monospace; font-size:7.2pt; color:var(--navy-mid); text-align:center;" dir="ltr">
          Sensors ➔ ESP32-S3 ➔ BLE 5.0 ➔ Smartphone Gateway ➔ Cloud API ➔ AI Engine (0-100) ➔ Caregiver App
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثالث : الحل المقترح والمفهوم الشامل</div>
      <div class="footer-right">الصفحة 08 / 44</div>
    </div>
  </div>
"@
}

function Get-Page9-Ch4-FR {
  return @"
  <!-- PAGE 9: CHAPTER 4 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 04</span>
        <span class="header-title">Spécifications Fonctionnelles &amp; Non-Fonctionnelles</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>4. Spécifications et Exigences d'Ingénierie</h1>
          <p>Cahier des Charges Fonctionnel et Contraintes Techniques Rigoureuses</p>
        </div>
        <div class="chapter-badge">CAHIER DES CHARGES</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 4.1 — Exigences Fonctionnelles (Functional Requirements - FR)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th style="width:12%;">Réf.</th>
              <th style="width:30%;">Fonctionnalité</th>
              <th style="width:43%;">Description et Comportement Attendu</th>
              <th style="width:15%;">Priorité</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>FR-01</strong></td>
              <td>Acquisition Physiologique Multi-Capteurs</td>
              <td>Mesure périodique de FC, SpO₂ (MAX30102), Température (MAX30205) et Mouvement (MPU6050).</td>
              <td><span class="badge badge-red">CRITIQUE</span></td>
            </tr>
            <tr>
              <td><strong>FR-02</strong></td>
              <td>Intégration Pression Artérielle</td>
              <td>Réception des mesures d'un module/tensiomètre externe validé et injection dans l'IA.</td>
              <td><span class="badge badge-yellow">HAUTE</span></td>
            </tr>
            <tr>
              <td><strong>FR-03</strong></td>
              <td>Estimation Fréquence Respiratoire</td>
              <td>Dérivation par algorithme à partir des signaux PPG et accélérométriques.</td>
              <td><span class="badge badge-yellow">HAUTE</span></td>
            </tr>
            <tr>
              <td><strong>FR-04</strong></td>
              <td>Transmission BLE Basse Consommation</td>
              <td>Émission périodique en paquets GATT chiffrés vers l'application smartphone relais.</td>
              <td><span class="badge badge-red">CRITIQUE</span></td>
            </tr>
            <tr>
              <td><strong>FR-05</strong></td>
              <td>Stockage Local en Cas de Coupure</td>
              <td>Enregistrement sur microSD/Flash interne si le lien BLE ou 4G est interrompu.</td>
              <td><span class="badge badge-red">CRITIQUE</span></td>
            </tr>
            <tr>
              <td><strong>FR-06</strong></td>
              <td>Calcul du Score de Risque (0–100)</td>
              <td>Génération du score par modèle ML sur le Cloud, combiné à la baseline personnelle.</td>
              <td><span class="badge badge-red">CRITIQUE</span></td>
            </tr>
            <tr>
              <td><strong>FR-07</strong></td>
              <td>Alerte d'Urgence Manuelle (Bouton SOS)</td>
              <td>Déclenchement immédiat d'une alarme locale et envoi des coordonnées GPS à l'aidant.</td>
              <td><span class="badge badge-red">CRITIQUE</span></td>
            </tr>
            <tr>
              <td><strong>FR-08</strong></td>
              <td>Tableau de Bord Mobile Aidant</td>
              <td>Visualisation des constantes en temps réel, tendances 24h/7j/30j et journal d'alertes.</td>
              <td><span class="badge badge-blue">MOYENNE</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 4.2 — Exigences Non-Fonctionnelles (Non-Functional Requirements - NFR)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th style="width:12%;">Réf.</th>
              <th style="width:25%;">Catégorie</th>
              <th style="width:48%;">Spécification Technique Ciblée</th>
              <th style="width:15%;">Statut Validation</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>NFR-01</strong></td>
              <td>Autonomie Énergétique</td>
              <td>Autonomie continue ciblée d'environ 12 heures sur batterie Li-Po 1200mAh.</td>
              <td><span class="badge badge-yellow">À mesurer expérim.</span></td>
            </tr>
            <tr>
              <td><strong>NFR-02</strong></td>
              <td>Latence d'Alerte Urgente</td>
              <td>Temps de transmission d'une alerte critique (SOS ou Risque &gt; 75) &lt; 3 secondes.</td>
              <td><span class="badge badge-yellow">À mesurer expérim.</span></td>
            </tr>
            <tr>
              <td><strong>NFR-03</strong></td>
              <td>Sécurité et Confidentialité</td>
              <td>Chiffrement TLS 1.3 en transit, AES-128 sur BLE, respect des principes RGPD santé.</td>
              <td><span class="badge badge-green">Conforme Conception</span></td>
            </tr>
            <tr>
              <td><strong>NFR-04</strong></td>
              <td>Précision des Capteurs</td>
              <td>Tolérance ciblée face aux appareils médicaux de référence (HR ±2 bpm, Temp ±0.2°C).</td>
              <td><span class="badge badge-yellow">À mesurer expérim.</span></td>
            </tr>
            <tr>
              <td><strong>NFR-05</strong></td>
              <td>Résilience Réseau</td>
              <td>Aucune perte de données jusqu'à 72 heures d'interruption réseau via le buffer local.</td>
              <td><span class="badge badge-green">Conforme Conception</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 4 : Exigences d'Ingénierie</div>
      <div class="footer-right">Page 09 / 44</div>
    </div>
  </div>
"@
}

function Get-Page10-Ch4-AR {
  return @"
  <!-- PAGE 10: CHAPTER 4 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 04</span>
        <span class="header-title">المتطلبات الوظيفية وغير الوظيفية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>4. المتطلبات والمواصفات الهندسية للنظام</h1>
          <p>دفتر الشروط الوظيفية والقيود والمعايير التقنية الدقيقة</p>
        </div>
        <div class="chapter-badge">دفتر الشروط الفني</div>
      </div>

      <div class="card">
        <div class="card-title">جدول 4.1 — المتطلبات الوظيفية للنظام (Functional Requirements - FR)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th style="width:12%;">الرمز</th>
              <th style="width:30%;">الوظيفة التقنية</th>
              <th style="width:43%;">الوصف والسلوك التشغيلي المطلوب</th>
              <th style="width:15%;">الأولوية</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>FR-01</strong></td>
              <td>الاستشعار الحيوي متعدد المعايير</td>
              <td>القياس الدوري لمعدل النبض وتشبع الأكسجين (MAX30102)، والحرارة (MAX30205)، والحركة (MPU6050).</td>
              <td><span class="badge badge-red">حرجة للغاية</span></td>
            </tr>
            <tr>
              <td><strong>FR-02</strong></td>
              <td>تضمين قراءات ضغط الدم</td>
              <td>استقبال قياسات ضغط الدم من جهاز خارجي معتمد ودمجها ضمن نموذج التحليل بالذكاء الاصطناعي.</td>
              <td><span class="badge badge-yellow">عالية</span></td>
            </tr>
            <tr>
              <td><strong>FR-03</strong></td>
              <td>تقدير معدل التنفس</td>
              <td>استنباط معدل التنفس خوارزميًا من تذبذبات إشارة PPG وتغيرات زوايا التسارع الحركي.</td>
              <td><span class="badge badge-yellow">عالية</span></td>
            </tr>
            <tr>
              <td><strong>FR-04</strong></td>
              <td>الاتصال عبر البلوتوث منخفض الطاقة</td>
              <td>إرسال البيانات عبر حزم GATT المشفرة إلى الهاتف الذكي المحلي بكفاءة واستهلاك منخفض.</td>
              <td><span class="badge badge-red">حرجة للغاية</span></td>
            </tr>
            <tr>
              <td><strong>FR-05</strong></td>
              <td>التخزين المؤقت عند انقطاع الاتصال</td>
              <td>حفظ القراءات محليًا في بطاقة microSD أو الذاكرة الوميضية عند غياب تغطية البلوتوث أو الإنترنت.</td>
              <td><span class="badge badge-red">حرجة للغاية</span></td>
            </tr>
            <tr>
              <td><strong>FR-06</strong></td>
              <td>حساب مؤشر الخطر (0–100)</td>
              <td>معالجة البيانات عبر نموذج تعلم الآلة في السحابة مع الأخذ بالاعتبار السجل المرجعي للمريض.</td>
              <td><span class="badge badge-red">حرجة للغاية</span></td>
            </tr>
            <tr>
              <td><strong>FR-07</strong></td>
              <td>زر الاستغاثة اليدوي (SOS Button)</td>
              <td>إطلاق تنبيه صوتي فوري وإرسال إحداثيات الموقع الجغرافي (GPS) لهاتف المرافق فور الضغط عليه.</td>
              <td><span class="badge badge-red">حرجة للغاية</span></td>
            </tr>
            <tr>
              <td><strong>FR-08</strong></td>
              <td>لوحة تحكم هاتف المرافق</td>
              <td>عرض المؤشرات الحيوية المباشرة، ورسوم بيانية لـ 24 ساعة/7 أيام/30 يومًا، وسجل التنبيهات.</td>
              <td><span class="badge badge-blue">متوسطة</span></td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 4.2 — المتطلبات غير الوظيفية للنظام (Non-Functional Requirements - NFR)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th style="width:12%;">الرمز</th>
              <th style="width:25%;">التصنيف</th>
              <th style="width:48%;">المعيار الهندسي المستهدف</th>
              <th style="width:15%;">حالة التحقق</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>NFR-01</strong></td>
              <td>الاستقلالية الطاقية</td>
              <td>استهداف استقلالية تشغيلية تبلغ حوالي 12 ساعة متواصلة ببطارية Li-Po سعة 1200mAh.</td>
              <td><span class="badge badge-yellow">ستُقاس تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>NFR-02</strong></td>
              <td>زمن استجابة الإنذار</td>
              <td>إيصال إشعار الخطر الحرج (زر SOS أو درجة خطر &gt; 75) في أقل من 3 ثوانٍ إلى هاتف المرافق.</td>
              <td><span class="badge badge-yellow">ستُقاس تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>NFR-03</strong></td>
              <td>الأمان والخصوصية</td>
              <td>تشفير TLS 1.3 عبر الإنترنت، وAES-128 عبر البلوتوث، والامتثال لمعايير سرية البيانات الطبية.</td>
              <td><span class="badge badge-green">مطابق للتصميم</span></td>
            </tr>
            <tr>
              <td><strong>NFR-04</strong></td>
              <td>دقة الحساسات</td>
              <td>تحقيق نسبة خطأ متوافقة مع الأجهزة المرجعية التجارية (النبض ±2 نبضة، الحرارة ±0.2°م).</td>
              <td><span class="badge badge-yellow">ستُقاس تجريبيًا</span></td>
            </tr>
            <tr>
              <td><strong>NFR-05</strong></td>
              <td>موثوقية نقل البيانات</td>
              <td>ضمان عدم فقدان أي قراءة فسيولوجية لمدة تصل إلى 72 ساعة من انقطاع الشبكة بفضل التخزين المؤقت.</td>
              <td><span class="badge badge-green">مطابق للتصميم</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الرابع : المتطلبات الهندسية للنظام</div>
      <div class="footer-right">الصفحة 10 / 44</div>
    </div>
  </div>
"@
}

Write-Output "Pages 1 to 10 generated."
