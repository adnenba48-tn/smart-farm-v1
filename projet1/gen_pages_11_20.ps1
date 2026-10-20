# SmartCardio Guardian - Page Generator: Pages 11 to 20
# Chapters 5, 6, 7, 8, 9 (Alternating FR / AR)

function Get-Page11-Ch5-FR {
  return @"
  <!-- PAGE 11: CHAPTER 5 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 05</span>
        <span class="header-title">Architecture Matérielle &amp; Hardware</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>5. Architecture Matérielle Globale (Hardware)</h1>
          <p>Schéma Bloc des Composants Électroniques et Interconnexions Physiques</p>
        </div>
        <div class="chapter-badge">HARDWARE BLOCK</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_2_HARDWARE
        <div class="figure-caption"><strong>Figure 5.1 —</strong> Schéma bloc matériel complet centré sur le microcontrôleur ESP32-S3 et ses interfaces périphériques</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">5.1 Choix Technologique du Cœur : ESP32-S3</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            L'<strong>ESP32-S3</strong> a été sélectionné pour sa puissance de calcul élevée, sa prise en charge native du Bluetooth 5.0 Low Energy et ses instructions vectorielles dédiées à l'accélération des calculs de prétraitement :
          </p>
          <ul class="tech-list">
            <li><strong>CPU :</strong> Xtensa Dual-Core 32-bit LX7 cadencé jusqu'à 240 MHz.</li>
            <li><strong>Mémoire :</strong> 512 Ko SRAM interne + 8 Mo PSRAM externe pour stocker les fenêtres d'échantillonnage PPG.</li>
            <li><strong>Sécurité matérielle :</strong> Moteur de cryptographie matérielle (AES-128/256, SHA-2, RSA) pour sécuriser les trames BLE.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">5.2 Périphériques d'Interface et Sécurité Locale</div>
          <ul class="tech-list">
            <li><strong>Écran OLED 0.96" I²C :</strong> Permet au patient de visualiser immédiatement sa FC, sa SpO₂ et l'état de la batterie.</li>
            <li><strong>Bouton SOS Physique (GPIO 0) :</strong> Bouton poussoir d'urgence câblé sur interruption matérielle (ISR) prioritaire.</li>
            <li><strong>Buzzer Piézoélectrique :</strong> Génération de motifs d'alarme sonore gradués selon le niveau de gravité.</li>
            <li><strong>LED Tricolore (RVB) :</strong> Verte (Normal), Jaune (Attention/Modéré), Rouge (Critique/Urgence).</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 5.1 — Nomenclature des Composants Matériels Principaux</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Composant</th>
              <th>Référence</th>
              <th>Interface</th>
              <th>Rôle dans le Prototype</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Microcontrôleur</strong></td>
              <td>ESP32-S3-WROOM-1</td>
              <td>SoC</td>
              <td>Acquisition, filtrage local, pile BLE 5.0, ordonnancement FreeRTOS</td>
            </tr>
            <tr>
              <td><strong>Oxymétrie / Pouls</strong></td>
              <td>MAX30102</td>
              <td>I²C (0x57)</td>
              <td>Photopléthysmographie (PPG), calcul FC et estimation SpO₂</td>
            </tr>
            <tr>
              <td><strong>Température</strong></td>
              <td>MAX30205</td>
              <td>I²C (0x48)</td>
              <td>Température corporelle humaine de précision clinique (±0.1°C)</td>
            </tr>
            <tr>
              <td><strong>Centrale Inertielle</strong></td>
              <td>MPU6050</td>
              <td>I²C (0x68)</td>
              <td>Détection de mouvement, niveau d'activité et compensation d'artefacts</td>
            </tr>
            <tr>
              <td><strong>Module GPS</strong></td>
              <td>u-blox NEO-6M</td>
              <td>UART (9600 Bd)</td>
              <td>Acquisition des coordonnées de géolocalisation en cas d'alerte critique</td>
            </tr>
            <tr>
              <td><strong>Affichage Local</strong></td>
              <td>OLED 0.96" SSD1306</td>
              <td>I²C (0x3C)</td>
              <td>Restitution visuelle directe des constantes et statut au patient</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 5 : Architecture Matérielle</div>
      <div class="footer-right">Page 11 / 44</div>
    </div>
  </div>
"@
}

function Get-Page12-Ch5-AR {
  return @"
  <!-- PAGE 12: CHAPTER 5 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 05</span>
        <span class="header-title">معمارية العتاد والمكونات الإلكترونية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>5. معمارية العتاد والنظام المتكامل (Hardware)</h1>
          <p>المخطط الهيكلي للمكونات الإلكترونية ودوائر الربط البيني للمتحكم الرئيسي</p>
        </div>
        <div class="chapter-badge">مخطط العتاد</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_2_HARDWARE
        <div class="figure-caption"><strong>شكل 5.1 —</strong> المخطط الصندوقي الشامل للعتاد الإلكتروني المتمحور حول وحدة التحكم ESP32-S3 ومنافذ الحساسات</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">5.1 مبررات اختيار المعالج الرئيسي: ESP32-S3</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            تم اعتماد متحكم <strong>ESP32-S3</strong> نظرًا لكفاءته الحسابية الفائقة، ودعمه المدمج لتقنية البلوتوth 5.0 منخفض الطاقة، وتوفره على تعليمات تسريع معالجة الإشارات:
          </p>
          <ul class="tech-list">
            <li><strong>المعالج:</strong> ثنائي النواة من طراز Xtensa LX7 بتردد يصل إلى 240 ميغاهرتز.</li>
            <li><strong>الذاكرة:</strong> 512 كيلوبايت SRAM داخلية بالإضافة إلى 8 ميغابايت PSRAM خارجية لاستيعاب نوافذ إشارات PPG.</li>
            <li><strong>الأمان العتادي:</strong> وحدات تشفير عتادية مدمجة (AES, SHA, RSA) لتأمين حزم البيانات اللاسلكية.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">5.2 الملحقات التفاعلية وإشارات التنبيه المحلية</div>
          <ul class="tech-list">
            <li><strong>شاشة OLED مقاس 0.96 بوصة:</strong> تتيح للمريض قراءة معدل نبضه ونسبة الأكسجين وحالة الجهاز مباشرة.</li>
            <li><strong>زر الطوارئ المادي (GPIO 0):</strong> زر ضاغط مخصص للاستغاثة الفورية ومرتبط بمقاطعة عتادية ذات أولوية قصوى.</li>
            <li><strong>جرس التنبيه (Buzzer):</strong> يصدر أنماطًا صوتية متدرجة تشتد بحسب درجة الخطر المقدرة.</li>
            <li><strong>مؤشرات ضوئية ثلاثية (LED):</strong> أخضر (طبيعي)، أصفر (تحذير/خطر معتدل)، أحمر (حرج/استغاثة).</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 5.1 — جدول المكونات الإلكترونية الرئيسية للنموذج الأولي</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>المكون الإلكتروني</th>
              <th>الرمز الفني</th>
              <th>بروتوكول الربط</th>
              <th>الدور الوظيفي في النموذج الأولي</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>وحدة التحكم الرئيسية</strong></td>
              <td>ESP32-S3-WROOM-1</td>
              <td>SoC مدمج</td>
              <td>جمع البيانات، الترشيح الأولي، خادم BLE 5.0، جدولة FreeRTOS</td>
            </tr>
            <tr>
              <td><strong>حساس النبض والأكسجين</strong></td>
              <td>MAX30102</td>
              <td>I²C (0x57)</td>
              <td>قياس الامتصاص الضوئي (PPG) وحساب معدل ضربات القلب والـ SpO₂</td>
            </tr>
            <tr>
              <td><strong>حساس درجة الحرارة</strong></td>
              <td>MAX30205</td>
              <td>I²C (0x48)</td>
              <td>قياس حرارة الجسم بدقة سريرية طبية معتمدة (±0.1° مئوية)</td>
            </tr>
            <tr>
              <td><strong>وحدة القصور والحركة</strong></td>
              <td>MPU6050</td>
              <td>I²C (0x68)</td>
              <td>رصد نشاط وحركة المريض وتصحيح التشوهات الحركية في إشارة PPG</td>
            </tr>
            <tr>
              <td><strong>وحدة التموضع الجغرافي</strong></td>
              <td>u-blox NEO-6M</td>
              <td>UART (9600)</td>
              <td>تحديد إحداثيات موقع المريض بدقة عند وقوع حالات الطوارئ القصوى</td>
            </tr>
            <tr>
              <td><strong>شاشة العرض المحلية</strong></td>
              <td>OLED 0.96" SSD1306</td>
              <td>I²C (0x3C)</td>
              <td>عرض حي ومباشر للمؤشرات الحيوية وحالة النظام للمريض محليًا</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الخامس : معمارية العتاد والمكونات</div>
      <div class="footer-right">الصفحة 12 / 44</div>
    </div>
  </div>
"@
}

function Get-Page13-Ch6-FR {
  return @"
  <!-- PAGE 13: CHAPTER 6 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 06</span>
        <span class="header-title">Chaîne d'Acquisition &amp; Capteurs</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>6. Chaîne d'Acquisition et Capteurs Physiologiques</h1>
          <p>Principe de Fonctionnement, Topologie du Bus I²C et Validation Expérimentale</p>
        </div>
        <div class="chapter-badge">SENSORS &amp; I2C</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_3_SENSORS
        <div class="figure-caption"><strong>Figure 6.1 —</strong> Topologie du bus partagé I²C, adressage physique et lignes SDA/SCL protégées par pull-up 4.7kΩ</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">6.1 Capteur MAX30102 : Photopléthysmographie</div>
          <div style="display:flex; gap:3mm; align-items:center;">
            <div style="width:45%;">$SVG_FIG_MAX30102</div>
            <div style="width:55%;">
              <p style="font-size:7.5pt; color:var(--slate-700);">
                Le <strong>MAX30102</strong> intègre une LED rouge (660nm) et une LED infrarouge (880nm). En analysant l'absorption pulsatile de la lumière par l'hémoglobine oxygénée (HbO₂) et désoxygénée (Hb), le microcontrôleur extrait l'onde de pouls (PPG) et la saturation SpO₂.
              </p>
              <div class="badge badge-yellow" style="margin-top:1.5mm;">À valider vs oxymètre médical</div>
            </div>
          </div>
        </div>

        <div class="card">
          <div class="card-title">6.2 Capteur MAX30205 : Température Clinique</div>
          <div style="display:flex; gap:3mm; align-items:center;">
            <div style="width:45%;">$SVG_FIG_MAX30205</div>
            <div style="width:55%;">
              <p style="font-size:7.5pt; color:var(--slate-700);">
                Conforme à la norme clinique <strong>ASTM E1112</strong>, le MAX30205 mesure la température corporelle avec une précision de <strong>±0.1°C</strong> sur la plage vitale (37°C à 39°C). Sa pastille thermique métallique est appliquée directement contre la peau du patient.
              </p>
              <div class="badge badge-yellow" style="margin-top:1.5mm;">À valider vs thermomètre réf.</div>
            </div>
          </div>
        </div>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">6.3 Centrale Inertielle MPU6050 &amp; Mouvement</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            L'accéléromètre 3 axes quantifie l'effort physique en temps réel. Cette métrique est primordiale pour <strong>contextualiser les signaux</strong> : une élévation de la fréquence cardiaque lors de la marche est physiologique, tandis qu'au repos absolu, elle traduit une tachycardie anormale.
          </p>
        </div>

        <div class="card">
          <div class="card-title">6.4 Pression Artérielle &amp; Fréquence Respiratoire</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            <strong>Pression artérielle :</strong> Importée d'un tensiomètre externe validé. Aucune mesure directe non-validée n'est prétendue.<br/>
            <strong>Fréquence respiratoire :</strong> Estimée à partir des modulations basse fréquence de l'amplitude du PPG et validée expérimentalement lors des essais.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 6 : Capteurs Physiologiques</div>
      <div class="footer-right">Page 13 / 44</div>
    </div>
  </div>
"@
}

function Get-Page14-Ch6-AR {
  return @"
  <!-- PAGE 14: CHAPTER 6 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 06</span>
        <span class="header-title">حساسات القياس الحيوي ومعالجة الإشارات</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>6. حساسات القياس الحيوي ومعالجة الإشارات الفسيولوجية</h1>
          <p>مبادئ التشغيل الفيزيائي، وتوزيع عناوين ناقل I²C، ومنهجية المعايرة التجريبية</p>
        </div>
        <div class="chapter-badge">حساسات القياس</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_3_SENSORS
        <div class="figure-caption"><strong>شكل 6.1 —</strong> معمارية ناقل I²C المشترك، والعناوين الفيزيائية، وخطوط SDA/SCL المحمية بمقاومات رفع 4.7kΩ</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">6.1 حساس MAX30102: قياس النبض والتشبع الضوئي</div>
          <div style="display:flex; gap:3mm; align-items:center;">
            <div style="width:45%;">$SVG_FIG_MAX30102</div>
            <div style="width:55%;">
              <p style="font-size:7.5pt; color:var(--slate-700);">
                يعتمد <strong>MAX30102</strong> على باعثين ضوئيين: ضوء أحمر (660nm) وأشعة تحت حمراء (880nm). وبتحليل امتصاص الهيموغلوبين المؤكسج وغير المؤكسج للضوء، يستخلص المعالج موجة النبض (PPG) ومستوى تشبع الأكسجين (SpO₂).
              </p>
              <div class="badge badge-yellow" style="margin-top:1.5mm;">ستتم مقارنته بجهاز قياس طبي تجاري</div>
            </div>
          </div>
        </div>

        <div class="card">
          <div class="card-title">6.2 حساس MAX30205: قياس حرارة الجسم بدقة سريرية</div>
          <div style="display:flex; gap:3mm; align-items:center;">
            <div style="width:45%;">$SVG_FIG_MAX30205</div>
            <div style="width:55%;">
              <p style="font-size:7.5pt; color:var(--slate-700);">
                يتوافق الحساس مع المعيار الطبي العالمي <strong>ASTM E1112</strong>، حيث يوفر دقة قياس فائقة تصل إلى <strong>±0.1° مئوية</strong> في النطاق الفسيولوجي الحيوي (37 إلى 39°م)، بفضل تلامس قاعدته الحرارية مباشرة مع الجلد.
              </p>
              <div class="badge badge-yellow" style="margin-top:1.5mm;">ستتم مقارنته بميزان حرارة مرجعي</div>
            </div>
          </div>
        </div>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">6.3 وحدة القصور الذاتي MPU6050 وسياق الحركة</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            يقوم مقياس التسارع ثلاثي المحاور بتحديد النشاط الحركي في الوقت الفعلي. وتُعد هذه المعلومة حاسمة <strong>لتفسير الإشارات الحيوية في سياقها الواقعي</strong>؛ فارتفاع النبض أثناء الحركة أمر طبيعي، بينما يمثل مؤشر خطر إذا حدث أثناء السكون التام.
          </p>
        </div>

        <div class="card">
          <div class="card-title">6.4 ضغط الدم ومعدل التنفس</div>
          <p style="font-size:7.5pt; color:var(--slate-700);">
            <strong>ضغط الدم:</strong> يتم إدخاله من جهاز قياس ضغط دم خارجي معتمد سريريًا، دون ادعاء قياسه مباشرة بالـ ESP32.<br/>
            <strong>معدل التنفس:</strong> يتم تقديره خوارزميًا من التعديل الدوري لسعة إشارة PPG وحركات الصدر، وسيخضع للتحقق التجريبي.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل السادس : حساسات القياس الحيوي</div>
      <div class="footer-right">الصفحة 14 / 44</div>
    </div>
  </div>
"@
}

function Get-Page15-Ch7-FR {
  return @"
  <!-- PAGE 15: CHAPTER 7 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 07</span>
        <span class="header-title">Système Embarqué &amp; Firmware ESP32-S3</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>7. Système Embarqué &amp; Firmware ESP32-S3</h1>
          <p>Conception Logicielle Temps Réel sous FreeRTOS, Tâches Asynchrones et Sécurité</p>
        </div>
        <div class="chapter-badge">FREERTOS &amp; DUAL-CORE</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_4_FIRMWARE
        <div class="figure-caption"><strong>Figure 7.1 —</strong> Architecture multitâche FreeRTOS répartie sur les deux cœurs de l'ESP32-S3 et files d'attente (Queues)</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">7.1 Répartition Dual-Core sous FreeRTOS</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Pour éviter les blocages de la boucle de calcul lors des transactions radio, les processus sont strictement cloisonnés :
          </p>
          <ul class="tech-list">
            <li><strong>Core 0 (Matériel &amp; Filtrage) :</strong> Dédié à l'acquisition I²C cadencée à 100 Hz, au filtrage passe-bande et à la détection d'artefacts.</li>
            <li><strong>Core 1 (Connectivité &amp; Stockage) :</strong> Gère la pile NimBLE, les notifications GATT, l'écriture sur microSD et la veille dynamique.</li>
            <li><strong>Files d'attente (Queues) :</strong> Communication inter-cœurs sécurisée par des structures mémoires sans copie (Passage par pointeurs).</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">7.2 Algorithme de Prétraitement Local</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Avant transmission, le firmware opère un premier niveau de conditionnement du signal :
          </p>
          <ul class="tech-list">
            <li><strong>Filtre Passe-Bande Butterworth (0.5 – 4.0 Hz) :</strong> Élimination de la dérive de ligne de base et du bruit haute fréquence.</li>
            <li><strong>Algorithme Pan-Tompkins adapté au PPG :</strong> Détection des pics pulsatiles et calcul de l'intervalle inter-battements (IBI / RR).</li>
            <li><strong>Seuils de cohérence :</strong> Rejet automatique des valeurs physiologiquement aberrantes (FC &lt; 30 ou &gt; 230 bpm).</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">7.3 Gestion des Interruptions Matérielles Critiques (ISR Bouton SOS)</div>
        <p style="font-size:8pt; color:var(--slate-700);">
          Le bouton physique SOS est relié au GPIO 0 configuré avec résistance de tirage (pull-up) interne. Une routine d'interruption prioritaire (<code>gpio_isr_handler</code>) déclenche immédiatement un sémaphore FreeRTOS réveillant la tâche d'urgence, contournant toutes les files ordinaires pour émettre l'alerte en moins de <strong>100 ms</strong> vers le BLE et le buzzer local.
        </p>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 7 : Firmware Embarqué</div>
      <div class="footer-right">Page 15 / 44</div>
    </div>
  </div>
"@
}

function Get-Page16-Ch7-AR {
  return @"
  <!-- PAGE 16: CHAPTER 7 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 07</span>
        <span class="header-title">النظام المدمج والبرمجيات الدقيقة ESP32-S3</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>7. الأنظمة المدمجة والبرمجيات الدقيقة (Firmware)</h1>
          <p>التصميم البرمجي في الوقت الحقيقي تحت نظام التشغيل FreeRTOS وإدارة النواتين</p>
        </div>
        <div class="chapter-badge">نظام تشغيل مدمج</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_4_FIRMWARE
        <div class="figure-caption"><strong>شكل 7.1 —</strong> معمارية المهام المتعددة لنظام FreeRTOS وتوزيعها المتوازن على نواتي معالج ESP32-S3</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">7.1 توزيع المهام بين النواتين (Dual-Core Execution)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            لتفادي أي تأخير أو تجميد في معالجة الإشارات الحيوية أثناء البث اللاسلكي، تم تقسيم المهام بدقة:
          </p>
          <ul class="tech-list">
            <li><strong>النواة 0 (العتاد والترشيح الأولي):</strong> مخصصة لجمع عينات الحساسات بمعدل 100 هرتز وترشيح الإشارات الحيوية.</li>
            <li><strong>النواة 1 (الاتصال اللاسلكي والتخزين):</strong> مسؤولة عن إدارة بروتوكول NimBLE، وإرسال الإشعارات، وحفظ البيانات في microSD.</li>
            <li><strong>طوابير الرسائل (Queues):</strong> ضمان تبادل آمن للبيانات بين النواتين دون استهلاك مفرط للذاكرة العشوائية.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">7.2 خوارزميات المعالجة والترشيح الأولي محليًا</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            تقوم البرمجيات الدقيقة بتحسين جودة الإشارة الحيوية محليًا قبل إرسالها:
          </p>
          <ul class="tech-list">
            <li><strong>مرشح تمرير النطاق (0.5 – 4.0 هرتز):</strong> إزالة الانجراف في خط الأساس والضوضاء الناتجة عن التشويش الكهربائي.</li>
            <li><strong>خوارزمية رصد نبضات PPG:</strong> كشف القمم النبضية بدقة وحساب الفواصل الزمنية بين النبضات (IBI / RR).</li>
            <li><strong>مرشح التحقق الفسيولوجي:</strong> استبعاد القراءات غير المنطقية فسيولوجيًا الناتجة عن حركة اليد الشديدة.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">7.3 معالجة مقاطعات الطوارئ العتادية (زر الاستغاثة SOS)</div>
        <p style="font-size:8pt; color:var(--slate-700);">
          تم ربط زر الاستغاثة SOS بالمنفذ GPIO 0 ومقاطعته عتاديًا بنظام ISR؛ حيث تقوم دالة المقاطعة بإيقاظ مهمة الطوارئ فورًا وتجاوز كافة الطوابير العادية، لإرسال إشعار الخطر وتشغيل جرس التنبيه في زمن استجابة قياسي يقل عن <strong>100 ميلي ثانية</strong>.
        </p>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل السابع : البرمجيات الدقيقة المدمجة</div>
      <div class="footer-right">الصفحة 16 / 44</div>
    </div>
  </div>
"@
}

function Get-Page17-Ch8-FR {
  return @"
  <!-- PAGE 17: CHAPTER 8 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 08</span>
        <span class="header-title">Communication &amp; Protocole BLE 5.0</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>8. Architecture de Communication &amp; Protocole BLE</h1>
          <p>Profil GATT Personnalisé, Paquets Compacts, Sécurité BLE et Appairage</p>
        </div>
        <div class="chapter-badge">BLUETOOTH LOW ENERGY</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_5_BLE
        <div class="figure-caption"><strong>Figure 8.1 —</strong> Profil GATT personnalisé (Serveur ESP32-S3 vers Client Smartphone), Services, Caractéristiques et Chiffrement</div>
      </div>

      <div class="card">
        <div class="card-title">Tableau 8.1 — Spécification des Caractéristiques du Service GATT SmartCardio (0xFFE0)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Caractéristique</th>
              <th>UUID</th>
              <th>Propriétés</th>
              <th>Structure du Payload (Octets)</th>
              <th>Périodicité</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>Live Vitals</strong></td>
              <td>0xFFE1</td>
              <td>NOTIFY</td>
              <td><code>[HR:uint8, SpO2:uint8, Temp:uint16, RR:uint8, Batt:uint8]</code> (6 octets)</td>
              <td>1 Hz (1 sec)</td>
            </tr>
            <tr>
              <td><strong>Motion / IMU</strong></td>
              <td>0xFFE2</td>
              <td>NOTIFY</td>
              <td><code>[AccX:int16, AccY:int16, AccZ:int16, ActivityLevel:uint8]</code> (7 octets)</td>
              <td>5 Hz (200 ms)</td>
            </tr>
            <tr>
              <td><strong>Emergency / SOS</strong></td>
              <td>0xFFE3</td>
              <td>INDICATE</td>
              <td><code>[TriggerType:uint8, Lat:int32, Lon:int32, Timestamp:uint32]</code> (13 octets)</td>
              <td>Événementiel</td>
            </tr>
            <tr>
              <td><strong>Device Config</strong></td>
              <td>0xFFE4</td>
              <td>READ / WRITE</td>
              <td><code>[SamplingRate:uint8, LedMode:uint8, SyncTimestamp:uint32]</code> (6 octets)</td>
              <td>Sur demande</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">8.1 Optimisation du Débit et MTU</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Négociation dynamique du <strong>MTU à 247 octets</strong> (au lieu des 23 octets par défaut), permettant le regroupement (batching) des échantillons de signaux sans fragmentation radio, réduisant l'énergie d'émission de près de <strong>35%</strong>.
          </p>
        </div>

        <div class="card">
          <div class="card-title">8.2 Sécurité de la Liaison BLE (LE Secure Connections)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            Appairage sécurisé via <strong>ECDH P-256</strong> et chiffrement de canal en <strong>AES-CCM 128-bit</strong>. Aucun périphérique tiers non authentifié ne peut intercepter ou usurper les données physiologiques transmises.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 8 : Architecture BLE 5.0</div>
      <div class="footer-right">Page 17 / 44</div>
    </div>
  </div>
"@
}

function Get-Page18-Ch8-AR {
  return @"
  <!-- PAGE 18: CHAPTER 8 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 08</span>
        <span class="header-title">بروتوكولات الاتصال والبلوتوث منخفض الطاقة</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>8. بروتوكولات الاتصال والبلوتوث منخفض الطاقة (BLE)</h1>
          <p>توصيف ملف GATT المخصص، وهيكلة الحزم، والأمان اللاسلكي والاقتران المشفر</p>
        </div>
        <div class="chapter-badge">بروتوكول BLE 5.0</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_5_BLE
        <div class="figure-caption"><strong>شكل 8.1 —</strong> معمارية ملف GATT المخصص بين خادم ESP32-S3 وتطبيق الهاتف الذكي وتشفير القنوات اللاسلكية</div>
      </div>

      <div class="card">
        <div class="card-title">جدول 8.1 — مواصفات خصائص خدمة GATT المخصصة لنظام SmartCardio (0xFFE0)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>الخاصية (Characteristic)</th>
              <th>المعرف (UUID)</th>
              <th>نمط القراءة</th>
              <th>تركيبة حمولة البيانات (Bytes Payload)</th>
              <th>معدل التحديث</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>المؤشرات الحيوية المباشرة</strong></td>
              <td>0xFFE1</td>
              <td>NOTIFY</td>
              <td><code>[HR:uint8, SpO2:uint8, Temp:uint16, RR:uint8, Batt:uint8]</code> (6 بايت)</td>
              <td>1 هرتز (مرة كل ثانية)</td>
            </tr>
            <tr>
              <td><strong>إشارات الحركة والتسارع</strong></td>
              <td>0xFFE2</td>
              <td>NOTIFY</td>
              <td><code>[AccX:int16, AccY:int16, AccZ:int16, ActivityLevel:uint8]</code> (7 بايت)</td>
              <td>5 هرتز (كل 200 ميلي ثانية)</td>
            </tr>
            <tr>
              <td><strong>إشعار الطوارئ والاستغاثة</strong></td>
              <td>0xFFE3</td>
              <td>INDICATE</td>
              <td><code>[TriggerType:uint8, Lat:int32, Lon:int32, Timestamp:uint32]</code> (13 بايت)</td>
              <td>فوري عند الحدث</td>
            </tr>
            <tr>
              <td><strong>إعدادات ومزامنة الجهاز</strong></td>
              <td>0xFFE4</td>
              <td>READ / WRITE</td>
              <td><code>[SamplingRate:uint8, LedMode:uint8, SyncTimestamp:uint32]</code> (6 بايت)</td>
              <td>عند الطلب المباشر</td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="grid-2" style="margin-top:auto;">
        <div class="card">
          <div class="card-title">8.1 تحسين استهلاك الطاقة وحجم الحزمة (MTU)</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            تمت مضاعفة سعة الحزمة (MTU) إلى <strong>247 بايت</strong> بدلاً من 23 بايت الافتراضية، مما يسمح بتجميع عينات الإشارات دون تجزئة لاسلكية، محققًا وفرًا في طاقة البث بنسبة تقارب <strong>35%</strong>.
          </p>
        </div>

        <div class="card">
          <div class="card-title">8.2 أمان الاتصال اللاسلكي وتشفير البيانات</div>
          <p style="font-size:7.8pt; color:var(--slate-700);">
            اعتماد بروتوكول الاقتران الآمن <strong>ECDH P-256</strong> وتشفير القناة بخوارزمية <strong>AES-CCM 128-bit</strong>، لمنع أي جهاز دخيل من التنصت على البيانات الفسيولوجية المنقولة عبر الهواء.
          </p>
        </div>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل الثامن : بروتوكولات الاتصال BLE</div>
      <div class="footer-right">الصفحة 18 / 44</div>
    </div>
  </div>
"@
}

function Get-Page19-Ch9-FR {
  return @"
  <!-- PAGE 19: CHAPTER 9 (FR) -->
  <div class="page">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">CHAPITRE 09</span>
        <span class="header-title">Infrastructure Cloud &amp; Backend</span>
      </div>
      <div class="header-right">SmartCardio Guardian — PFE</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>9. Infrastructure Cloud &amp; Backend</h1>
          <p>Microservices FastAPI, Base de Données Séries Temporelles et API Sécurisée</p>
        </div>
        <div class="chapter-badge">CLOUD &amp; FASTAPI</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_6_CLOUD
        <div class="figure-caption"><strong>Figure 9.1 —</strong> Architecture Cloud distribuée : Passerelle API, Microservices, Bases Séries Temporelles et Dispatcher d'alertes</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">9.1 Backend FastAPI Haute Performance</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Le serveur d'application est développé sous <strong>FastAPI (Python 3.11)</strong> tirant parti des coroutines asynchrones (async/await) pour traiter simultanément des milliers de requêtes de capteurs :
          </p>
          <ul class="tech-list">
            <li><strong>Points d'accès REST :</strong> Ingestion de flux télémétriques, gestion des comptes utilisateurs et profils aidants.</li>
            <li><strong>Canal WebSocket Bidirectionnel :</strong> Streaming temps réel du score de risque et des constantes vers l'application mobile.</li>
            <li><strong>Conteneurisation Docker :</strong> Déploiement reproductible et évolutif en cluster sécurisé.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">9.2 Stratégie de Stockage Hybride</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            Deux moteurs de bases de données spécialisés sont couplés :
          </p>
          <ul class="tech-list">
            <li><strong>InfluxDB (Time-Series) :</strong> Stockage optimisé des signaux haute fréquence (PPG brut, FC, SpO₂) horodatés avec politique de rétention progressive.</li>
            <li><strong>PostgreSQL (Relationnel) :</strong> Gestion intègre des dossiers patients, liens de parenté, historiques des alertes et configurations d'escalade.</li>
            <li><strong>Redis Cache :</strong> Mise en mémoire tampon des derniers états vitaux pour une latence de lecture quasi nulle.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">Tableau 9.1 — Principaux Endpoints de l'API Cloud SmartCardio</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>Méthode</th>
              <th>Endpoint URL</th>
              <th>Authentification</th>
              <th>Description Fonctionnelle</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><span class="badge badge-green">POST</span></td>
              <td><code>/api/v1/telemetry/ingest</code></td>
              <td>Bearer JWT</td>
              <td>Réception des lots de données vitaux depuis la passerelle mobile</td>
            </tr>
            <tr>
              <td><span class="badge badge-blue">GET</span></td>
              <td><code>/api/v1/patients/{id}/live-status</code></td>
              <td>Bearer JWT</td>
              <td>Interrogation instantanée du dernier score de risque et constantes</td>
            </tr>
            <tr>
              <td><span class="badge badge-purple">WS</span></td>
              <td><code>/ws/v1/caregiver/stream</code></td>
              <td>WSS Token</td>
              <td>Flux WebSocket direct pour les notifications et jauges de l'aidant</td>
            </tr>
            <tr>
              <td><span class="badge badge-red">POST</span></td>
              <td><code>/api/v1/emergency/trigger</code></td>
              <td>Bearer JWT</td>
              <td>Déclenchement d'une alerte critique avec coordonnées GPS</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — Rapport PFE Adnen Ben Abdallah</div>
      <div class="footer-center">Chapitre 9 : Infrastructure Cloud</div>
      <div class="footer-right">Page 19 / 44</div>
    </div>
  </div>
"@
}

function Get-Page20-Ch9-AR {
  return @"
  <!-- PAGE 20: CHAPTER 9 (AR) -->
  <div class="page ar">
    <div class="page-header">
      <div class="header-left">
        <span class="header-tag">الفصل 09</span>
        <span class="header-title">البنية السحابية والخوادم المركزية</span>
      </div>
      <div class="header-right">SmartCardio Guardian — مشروع التخرج</div>
    </div>

    <div class="page-body">
      <div class="chapter-banner">
        <div class="chapter-title-group">
          <h1>9. الحوسبة السحابية والبنية الخلفية للنظام (Cloud)</h1>
          <p>خوادم FastAPI المصغرة، وقواعد بيانات السلاسل الزمنية، وواجهة البرمجة الآمنة</p>
        </div>
        <div class="chapter-badge">السحابة وخوادم الويب</div>
      </div>

      <div class="figure-container">
        $SVG_DIAG_6_CLOUD
        <div class="figure-caption"><strong>شكل 9.1 —</strong> المعمارية السحابية الموزعة: بوابة API، والخدمات المصغرة، وقواعد البيانات الزمنية وموزع التنبيهات</div>
      </div>

      <div class="grid-2">
        <div class="card">
          <div class="card-title">9.1 خادم التطبيقات عالي الكفاءة (FastAPI)</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            تم تطوير البنية الخلفية باستخدام إطار عمل <strong>FastAPI (Python 3.11)</strong> بالاعتماد على البرمجة غير المتزامنة لمعالجة آلاف القراءات المتدفقة لحظيًا:
          </p>
          <ul class="tech-list">
            <li><strong>نقاط اتصال REST:</strong> استقبال تدفقات المؤشرات الحيوية وإدارة حسابات المرضى والمرافقين.</li>
            <li><strong>قنوات WebSocket التفاعلية:</strong> بث فوري لمؤشر الخطر المحسوب إلى تطبيق هاتف المرافق في أجزاء من الثانية.</li>
            <li><strong>حاويات Docker:</strong> عزل ونشر موثوق للخدمات مع ضمان قابلية التوسع الأفقي عند زيادة عدد الأجهزة.</li>
          </ul>
        </div>

        <div class="card">
          <div class="card-title">9.2 استراتيجية قواعد البيانات الهجينة</div>
          <p style="font-size:7.8pt; color:var(--slate-700); margin-bottom:1.5mm;">
            تم الجمع بين محركين متخصصين لقواعد البيانات لضمان السرعة والموثوقية:
          </p>
          <ul class="tech-list">
            <li><strong>قاعدة InfluxDB (سلاسل زمنية):</strong> مخصصة لحفظ الإشارات الحيوية عالية التردد (النبض، الأكسجين، الحرارة) المؤرخة بدقة.</li>
            <li><strong>قاعدة PostgreSQL (علاقية):</strong> لإدارة الحسابات الطبية، وصلاحيات الوصول، وسجل الحوادث الحرجة والتنبيهات.</li>
            <li><strong>ذاكرة التخزين المؤقت Redis:</strong> للاحتفاظ بآخر حالة حيوية لكل مريض لتقليل زمن استجابة الاستعلامات.</li>
          </ul>
        </div>
      </div>

      <div class="card" style="margin-top:auto;">
        <div class="card-title">جدول 9.1 — نقاط الاتصال البرمجية الرئيسية لواجهة السحابة (Cloud API)</div>
        <table class="data-table">
          <thead>
            <tr>
              <th>طريقة الطلب</th>
              <th>مسار الرابط (Endpoint)</th>
              <th>نوع التحقق</th>
              <th>الوظيفة التشغيلية للواجهة</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><span class="badge badge-green">POST</span></td>
              <td><code>/api/v1/telemetry/ingest</code></td>
              <td>رمز JWT</td>
              <td>استقبال حزم المؤشرات الحيوية الواردة من بوابة الهاتف الذكي للمريض</td>
            </tr>
            <tr>
              <td><span class="badge badge-blue">GET</span></td>
              <td><code>/api/v1/patients/{id}/live-status</code></td>
              <td>رمز JWT</td>
              <td>استعلام مباشر عن آخر مؤشر خطر وقراءات فسيولوجية للمريض المحدد</td>
            </tr>
            <tr>
              <td><span class="badge badge-purple">WS</span></td>
              <td><code>/ws/v1/caregiver/stream</code></td>
              <td>رمز WSS</td>
              <td>بث مباشر ومستمر عبر WebSocket لتحديث واجهة هاتف المرافق فوريًا</td>
            </tr>
            <tr>
              <td><span class="badge badge-red">POST</span></td>
              <td><code>/api/v1/emergency/trigger</code></td>
              <td>رمز JWT</td>
              <td>إطلاق حالة استغاثة عاجلة وإرسال إحداثيات الموقع الجغرافي للمرافق</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="page-footer">
      <div class="footer-left">SmartCardio Guardian — مشروع تخرج المهندس عدنان بن عبد الله</div>
      <div class="footer-center">الفصل التاسع : البنية السحابية والخوادم</div>
      <div class="footer-right">الصفحة 20 / 44</div>
    </div>
  </div>
"@
}

Write-Output "Pages 11 to 20 generated."
