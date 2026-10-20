# SmartCardio Guardian - SVG Asset Library
# High-Quality Technical & Conceptual Vector Graphics

$SVG_COVER = @"
<svg viewBox="0 0 700 280" width="100%" height="210" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="covBg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" stop-color="#0f2b48" stop-opacity="0.9"/>
      <stop offset="100%" stop-color="#081422" stop-opacity="0.95"/>
    </linearGradient>
    <linearGradient id="cyanGrad" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="#00B4D8"/>
      <stop offset="100%" stop-color="#90E0EF"/>
    </linearGradient>
    <filter id="glow" x="-20%" y="-20%" width="140%" height="140%">
      <feGaussianBlur stdDeviation="3" result="blur"/>
      <feMerge>
        <feMergeNode in="blur"/>
        <feMergeNode in="SourceGraphic"/>
      </feMerge>
    </filter>
  </defs>

  <!-- Background Card -->
  <rect x="5" y="5" width="690" height="270" rx="16" fill="url(#covBg)" stroke="#00B4D8" stroke-width="1.5" stroke-opacity="0.4"/>
  
  <!-- Subtle Circuit Lines -->
  <path d="M 20 80 H 120 L 150 110 H 220" stroke="#0077B6" stroke-width="1.5" fill="none" opacity="0.3"/>
  <path d="M 480 80 H 560 L 590 110 H 680" stroke="#0077B6" stroke-width="1.5" fill="none" opacity="0.3"/>
  <circle cx="220" cy="110" r="3" fill="#00B4D8" opacity="0.5"/>
  <circle cx="480" cy="80" r="3" fill="#00B4D8" opacity="0.5"/>

  <!-- Left: Portable Device -->
  <g transform="translate(45, 60)">
    <rect x="0" y="0" width="130" height="150" rx="14" fill="#13273E" stroke="#00B4D8" stroke-width="2"/>
    <rect x="15" y="20" width="100" height="55" rx="6" fill="#050C16" stroke="#1E3E62" stroke-width="1"/>
    <!-- ECG line on OLED -->
    <path d="M 20 48 L 45 48 L 52 32 L 60 62 L 68 40 L 75 48 L 105 48" fill="none" stroke="#00B4D8" stroke-width="2" filter="url(#glow)"/>
    <text x="65" y="90" fill="#E2E8F0" font-size="10" font-family="sans-serif" font-weight="bold" text-anchor="middle">ESP32-S3 IoT</text>
    <text x="65" y="105" fill="#90E0EF" font-size="8" font-family="sans-serif" text-anchor="middle">MAX30102 + MPU</text>
    <!-- Status LEDs -->
    <circle cx="35" cy="125" r="5" fill="#10B981" filter="url(#glow)"/>
    <circle cx="65" cy="125" r="5" fill="#F59E0B"/>
    <circle cx="95" cy="125" r="5" fill="#EF4444"/>
    <text x="65" y="165" fill="#94A3B8" font-size="9" font-family="sans-serif" font-weight="bold" text-anchor="middle">Boîtier Portable</text>
  </g>

  <!-- Arrow BLE -->
  <g transform="translate(185, 120)">
    <path d="M 0 15 H 45" stroke="#00B4D8" stroke-width="2.5" stroke-dasharray="4,3"/>
    <polygon points="45,10 55,15 45,20" fill="#00B4D8"/>
    <text x="25" y="5" fill="#90E0EF" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">BLE 5.0</text>
  </g>

  <!-- Center-Left: Smartphone Gateway -->
  <g transform="translate(250, 45)">
    <rect x="0" y="0" width="95" height="180" rx="16" fill="#0C1D2E" stroke="#0077B6" stroke-width="2"/>
    <rect x="8" y="18" width="79" height="138" rx="8" fill="#142B42"/>
    <!-- Screen content -->
    <rect x="15" y="28" width="65" height="24" rx="4" fill="#0E4166"/>
    <text x="47" y="44" fill="#FFFFFF" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">Heart: 72 bpm</text>
    <rect x="15" y="58" width="65" height="24" rx="4" fill="#0E4166"/>
    <text x="47" y="74" fill="#FFFFFF" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">SpO₂: 98 %</text>
    <rect x="15" y="88" width="65" height="35" rx="4" fill="#10B981" fill-opacity="0.2" stroke="#10B981" stroke-width="1"/>
    <text x="47" y="103" fill="#10B981" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">Score: 18/100</text>
    <text x="47" y="115" fill="#90E0EF" font-size="7" font-family="sans-serif" text-anchor="middle">NORMAL RISK</text>
    <!-- Home bar -->
    <rect x="35" y="165" width="25" height="3" rx="1.5" fill="#64748B"/>
    <text x="47" y="195" fill="#94A3B8" font-size="9" font-family="sans-serif" font-weight="bold" text-anchor="middle">Passerelle Mobile</text>
  </g>

  <!-- Arrow 4G/Cloud -->
  <g transform="translate(355, 120)">
    <path d="M 0 15 H 45" stroke="#00B4D8" stroke-width="2.5" stroke-dasharray="4,3"/>
    <polygon points="45,10 55,15 45,20" fill="#00B4D8"/>
    <text x="25" y="5" fill="#90E0EF" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">TLS / HTTPS</text>
  </g>

  <!-- Center-Right: Cloud & AI Engine -->
  <g transform="translate(410, 50)">
    <path d="M 25 50 a 25 25 0 0 1 45 -15 a 35 35 0 0 1 65 10 a 25 25 0 0 1 0 45 a 20 20 0 0 1 -35 5 h -60 a 22 22 0 0 1 -15 -45 z" fill="#142B42" stroke="#00B4D8" stroke-width="2"/>
    <g transform="translate(45, 45)">
      <!-- AI Neural Icon -->
      <circle cx="15" cy="15" r="4" fill="#00B4D8" filter="url(#glow)"/>
      <circle cx="15" cy="40" r="4" fill="#00B4D8"/>
      <circle cx="45" cy="10" r="4" fill="#90E0EF"/>
      <circle cx="45" cy="27" r="4" fill="#90E0EF" filter="url(#glow)"/>
      <circle cx="45" cy="45" r="4" fill="#90E0EF"/>
      <circle cx="75" cy="27" r="5" fill="#10B981" filter="url(#glow)"/>
      <line x1="15" y1="15" x2="45" y2="10" stroke="#0077B6" stroke-width="1.5"/>
      <line x1="15" y1="15" x2="45" y2="27" stroke="#0077B6" stroke-width="1.5"/>
      <line x1="15" y1="40" x2="45" y2="27" stroke="#0077B6" stroke-width="1.5"/>
      <line x1="15" y1="40" x2="45" y2="45" stroke="#0077B6" stroke-width="1.5"/>
      <line x1="45" y1="10" x2="75" y2="27" stroke="#00B4D8" stroke-width="1.5"/>
      <line x1="45" y1="27" x2="75" y2="27" stroke="#00B4D8" stroke-width="1.5"/>
      <line x1="45" y1="45" x2="75" y2="27" stroke="#00B4D8" stroke-width="1.5"/>
    </g>
    <text x="85" y="125" fill="#FFFFFF" font-size="10" font-family="sans-serif" font-weight="bold" text-anchor="middle">Cloud &amp; Moteur IA</text>
    <text x="85" y="140" fill="#90E0EF" font-size="8" font-family="sans-serif" text-anchor="middle">Analyse Multi-Signaux</text>
    <text x="85" y="190" fill="#94A3B8" font-size="9" font-family="sans-serif" font-weight="bold" text-anchor="middle">Serveur Cloud &amp; IA</text>
  </g>

  <!-- Arrow Push to Caregiver -->
  <g transform="translate(545, 120)">
    <path d="M 0 15 H 40" stroke="#00B4D8" stroke-width="2.5" stroke-dasharray="4,3"/>
    <polygon points="40,10 50,15 40,20" fill="#00B4D8"/>
    <text x="22" y="5" fill="#90E0EF" font-size="8" font-family="sans-serif" font-weight="bold" text-anchor="middle">Push Alert</text>
  </g>

  <!-- Right: Caregiver Mobile App -->
  <g transform="translate(600, 60)">
    <rect x="0" y="0" width="85" height="150" rx="12" fill="#0C1D2E" stroke="#10B981" stroke-width="2"/>
    <rect x="8" y="15" width="69" height="115" rx="6" fill="#142B42"/>
    <!-- Caregiver alert card -->
    <rect x="12" y="25" width="61" height="30" rx="4" fill="#065F46" stroke="#10B981" stroke-width="1"/>
    <text x="42" y="40" fill="#FFFFFF" font-size="7" font-family="sans-serif" font-weight="bold" text-anchor="middle">Patient: Adnen B.</text>
    <text x="42" y="50" fill="#A7F3D0" font-size="6.5" font-family="sans-serif" text-anchor="middle">Statut: Stable</text>
    <!-- Live Map Pin -->
    <circle cx="42" cy="80" r="14" fill="#1E3E62"/>
    <path d="M 42 70 C 37 70 33 74 33 79 C 33 86 42 93 42 93 C 42 93 51 86 51 79 C 51 74 47 70 42 70 Z" fill="#EF4444"/>
    <circle cx="42" cy="78" r="3" fill="#FFFFFF"/>
    <text x="42" y="110" fill="#90E0EF" font-size="6.5" font-family="sans-serif" text-anchor="middle">GPS Actif</text>
    <text x="42" y="165" fill="#94A3B8" font-size="9" font-family="sans-serif" font-weight="bold" text-anchor="middle">App Aidant</text>
  </g>
</svg>
"@

$SVG_DIAG_1_ARCHITECTURE = @"
<svg viewBox="0 0 760 370" width="100%" height="240" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="boxGrad1" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#0F2A4A"/><stop offset="100%" stop-color="#091A2E"/></linearGradient>
    <linearGradient id="boxGrad2" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#123B66"/><stop offset="100%" stop-color="#0A223D"/></linearGradient>
    <linearGradient id="boxGrad3" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#1B4D3E"/><stop offset="100%" stop-color="#0D2B22"/></linearGradient>
  </defs>

  <!-- Box 1: PORTABLE DEVICE -->
  <g transform="translate(15, 20)">
    <rect x="0" y="0" width="135" height="320" rx="10" fill="url(#boxGrad1)" stroke="#00B4D8" stroke-width="2"/>
    <rect x="0" y="0" width="135" height="34" rx="10" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="67" y="22" fill="#00B4D8" font-family="sans-serif" font-size="10" font-weight="bold" text-anchor="middle">PORTABLE DEVICE</text>
    
    <!-- Items inside -->
    <g transform="translate(10, 45)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">ESP32-S3 (MCU)</text>
    </g>
    <g transform="translate(10, 75)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">MAX30102 (HR/SpO₂)</text>
    </g>
    <g transform="translate(10, 105)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">MAX30205 (Temp)</text>
    </g>
    <g transform="translate(10, 135)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">MPU6050 (Motion)</text>
    </g>
    <g transform="translate(10, 165)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">NEO-6M (GPS)</text>
    </g>
    <g transform="translate(10, 195)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">0.96" OLED I²C</text>
    </g>
    <g transform="translate(10, 225)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">microSD Buffer</text>
    </g>
    <g transform="translate(10, 255)">
      <rect x="0" y="0" width="115" height="25" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="16" fill="#90E0EF" font-family="sans-serif" font-size="8.5" text-anchor="middle">Li-Po Batt + SOS Btn</text>
    </g>
    <g transform="translate(10, 285)">
      <rect x="0" y="0" width="115" height="22" rx="5" fill="#16385C" stroke="#0077B6" stroke-width="1"/>
      <text x="57" y="15" fill="#90E0EF" font-family="sans-serif" font-size="8" text-anchor="middle">Buzzer + LEDs (G/Y/R)</text>
    </g>
  </g>

  <!-- Arrow BLE -->
  <g transform="translate(150, 160)">
    <line x1="5" y1="20" x2="35" y2="20" stroke="#00B4D8" stroke-width="3" stroke-dasharray="4,2"/>
    <polygon points="35,14 45,20 35,26" fill="#00B4D8"/>
    <text x="25" y="10" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">BLE 5.0</text>
  </g>

  <!-- Box 2: SMARTPHONE APP -->
  <g transform="translate(195, 45)">
    <rect x="0" y="0" width="125" height="270" rx="10" fill="url(#boxGrad2)" stroke="#0077B6" stroke-width="2"/>
    <rect x="0" y="0" width="125" height="34" rx="10" fill="#0077B6" fill-opacity="0.25"/>
    <text x="62" y="22" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">SMARTPHONE APP</text>
    <g transform="translate(8, 48)">
      <rect x="0" y="0" width="109" height="35" rx="5" fill="#0D223B"/>
      <text x="54" y="15" fill="#90E0EF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">BLE Gateway</text>
      <text x="54" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Data Reception</text>
    </g>
    <g transform="translate(8, 93)">
      <rect x="0" y="0" width="109" height="35" rx="5" fill="#0D223B"/>
      <text x="54" y="15" fill="#90E0EF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Local Storage</text>
      <text x="54" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">SQLite Fallback Buffer</text>
    </g>
    <g transform="translate(8, 138)">
      <rect x="0" y="0" width="109" height="35" rx="5" fill="#0D223B"/>
      <text x="54" y="15" fill="#90E0EF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Location Service</text>
      <text x="54" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Phone GPS Backup</text>
    </g>
    <g transform="translate(8, 183)">
      <rect x="0" y="0" width="109" height="35" rx="5" fill="#0D223B"/>
      <text x="54" y="15" fill="#90E0EF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Sync Manager</text>
      <text x="54" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Automatic Retry Sync</text>
    </g>
    <g transform="translate(8, 228)">
      <rect x="0" y="0" width="109" height="30" rx="5" fill="#0D223B"/>
      <text x="54" y="19" fill="#10B981" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Local UI Display</text>
    </g>
  </g>

  <!-- Arrow Internet -->
  <g transform="translate(320, 160)">
    <line x1="5" y1="20" x2="35" y2="20" stroke="#00B4D8" stroke-width="3"/>
    <polygon points="35,14 45,20 35,26" fill="#00B4D8"/>
    <text x="25" y="10" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Internet (TLS)</text>
  </g>

  <!-- Box 3: CLOUD BACKEND -->
  <g transform="translate(365, 45)">
    <rect x="0" y="0" width="120" height="270" rx="10" fill="url(#boxGrad1)" stroke="#00B4D8" stroke-width="2"/>
    <rect x="0" y="0" width="120" height="34" rx="10" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="60" y="22" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">CLOUD BACKEND</text>
    <g transform="translate(8, 48)">
      <rect x="0" y="0" width="104" height="35" rx="5" fill="#13273E"/>
      <text x="52" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Auth &amp; Security</text>
      <text x="52" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">OAuth2 / JWT</text>
    </g>
    <g transform="translate(8, 93)">
      <rect x="0" y="0" width="104" height="35" rx="5" fill="#13273E"/>
      <text x="52" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">REST &amp; WS API</text>
      <text x="52" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">FastAPI Endpoints</text>
    </g>
    <g transform="translate(8, 138)">
      <rect x="0" y="0" width="104" height="35" rx="5" fill="#13273E"/>
      <text x="52" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Time-Series DB</text>
      <text x="52" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">InfluxDB / Timescale</text>
    </g>
    <g transform="translate(8, 183)">
      <rect x="0" y="0" width="104" height="35" rx="5" fill="#13273E"/>
      <text x="52" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Relational DB</text>
      <text x="52" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">PostgreSQL Users</text>
    </g>
    <g transform="translate(8, 228)">
      <rect x="0" y="0" width="104" height="30" rx="5" fill="#13273E"/>
      <text x="52" y="19" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Alert Dispatcher</text>
    </g>
  </g>

  <!-- Arrow to AI Engine -->
  <g transform="translate(485, 160)">
    <line x1="5" y1="20" x2="30" y2="20" stroke="#00B4D8" stroke-width="3"/>
    <polygon points="30,14 40,20 30,26" fill="#00B4D8"/>
    <text x="20" y="10" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Pipe</text>
  </g>

  <!-- Box 4: AI ENGINE -->
  <g transform="translate(525, 45)">
    <rect x="0" y="0" width="110" height="270" rx="10" fill="url(#boxGrad2)" stroke="#90E0EF" stroke-width="2"/>
    <rect x="0" y="0" width="110" height="34" rx="10" fill="#90E0EF" fill-opacity="0.25"/>
    <text x="55" y="22" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">AI ENGINE</text>
    <g transform="translate(6, 48)">
      <rect x="0" y="0" width="98" height="35" rx="5" fill="#0E2D4E"/>
      <text x="49" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Preprocessing</text>
      <text x="49" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Filter &amp; Clean</text>
    </g>
    <g transform="translate(6, 93)">
      <rect x="0" y="0" width="98" height="35" rx="5" fill="#0E2D4E"/>
      <text x="49" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Feature Extract</text>
      <text x="49" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">HRV, RR, Wavelet</text>
    </g>
    <g transform="translate(6, 138)">
      <rect x="0" y="0" width="98" height="35" rx="5" fill="#0E2D4E"/>
      <text x="49" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">ML Inference</text>
      <text x="49" y="28" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">XGBoost / Random F.</text>
    </g>
    <g transform="translate(6, 183)">
      <rect x="0" y="0" width="98" height="35" rx="5" fill="#0E2D4E"/>
      <text x="49" y="15" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Risk Score 0-100</text>
      <text x="49" y="28" fill="#10B981" font-family="sans-serif" font-size="7" text-anchor="middle">Level Estimation</text>
    </g>
    <g transform="translate(6, 228)">
      <rect x="0" y="0" width="98" height="30" rx="5" fill="#0E2D4E"/>
      <text x="49" y="19" fill="#F59E0B" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Contributing Factors</text>
    </g>
  </g>

  <!-- Arrow to Caregiver -->
  <g transform="translate(635, 160)">
    <line x1="5" y1="20" x2="25" y2="20" stroke="#10B981" stroke-width="3"/>
    <polygon points="25,14 35,20 25,26" fill="#10B981"/>
    <text x="17" y="10" fill="#10B981" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Alert</text>
  </g>

  <!-- Box 5: CAREGIVER APP -->
  <g transform="translate(670, 45)">
    <rect x="0" y="0" width="80" height="270" rx="10" fill="url(#boxGrad3)" stroke="#10B981" stroke-width="2"/>
    <rect x="0" y="0" width="80" height="34" rx="10" fill="#10B981" fill-opacity="0.3"/>
    <text x="40" y="22" fill="#FFFFFF" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">CAREGIVER</text>
    <g transform="translate(5, 48)">
      <rect x="0" y="0" width="70" height="35" rx="4" fill="#09241C"/>
      <text x="35" y="16" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Dashboard</text>
      <text x="35" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Vitals Live</text>
    </g>
    <g transform="translate(5, 93)">
      <rect x="0" y="0" width="70" height="35" rx="4" fill="#09241C"/>
      <text x="35" y="16" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Risk Gauge</text>
      <text x="35" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">0 - 100 Score</text>
    </g>
    <g transform="translate(5, 138)">
      <rect x="0" y="0" width="70" height="35" rx="4" fill="#09241C"/>
      <text x="35" y="16" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">GPS Map</text>
      <text x="35" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Real-time Pin</text>
    </g>
    <g transform="translate(5, 183)">
      <rect x="0" y="0" width="70" height="35" rx="4" fill="#09241C"/>
      <text x="35" y="16" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Alert Log</text>
      <text x="35" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Escalation Flow</text>
    </g>
    <g transform="translate(5, 228)">
      <rect x="0" y="0" width="70" height="30" rx="4" fill="#09241C"/>
      <text x="35" y="18" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Reports</text>
    </g>
  </g>
</svg>
"@

Write-Output "Basic SVGs defined."

# Hardware Block Diagram
$SVG_DIAG_2_HARDWARE = @"
<svg viewBox="0 0 740 330" width="100%" height="220" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="mcuGrad" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#1E3E62"/><stop offset="100%" stop-color="#0B192C"/></linearGradient>
    <linearGradient id="sensorGrad" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#16385C"/><stop offset="100%" stop-color="#0D223B"/></linearGradient>
  </defs>
  <!-- Central ESP32-S3 MCU -->
  <rect x="260" y="70" width="220" height="190" rx="10" fill="url(#mcuGrad)" stroke="#00B4D8" stroke-width="2.5"/>
  <rect x="270" y="80" width="200" height="30" rx="5" fill="#00B4D8" fill-opacity="0.15"/>
  <text x="370" y="100" fill="#00B4D8" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">ESP32-S3 Microcontroller</text>
  <text x="370" y="125" fill="#CBD5E1" font-family="sans-serif" font-size="8.5" text-anchor="middle">Xtensa Dual-Core 32-bit LX7 @ 240MHz</text>
  <text x="370" y="140" fill="#90E0EF" font-family="sans-serif" font-size="8" text-anchor="middle">512KB SRAM | 8MB PSRAM | 16MB Flash</text>
  <text x="370" y="155" fill="#CBD5E1" font-family="sans-serif" font-size="8" text-anchor="middle">BLE 5.0 / Bluetooth Mesh / Wi-Fi 2.4GHz</text>
  <rect x="280" y="170" width="180" height="75" rx="5" fill="#050C16" stroke="#1E3E62" stroke-width="1"/>
  <text x="370" y="190" fill="#10B981" font-family="monospace" font-size="8" text-anchor="middle">I²C (GPIO 8/9) | UART (GPIO 17/18)</text>
  <text x="370" y="205" fill="#10B981" font-family="monospace" font-size="8" text-anchor="middle">SPI microSD (GPIO 11-13) | ADC (GPIO 4)</text>
  <text x="370" y="220" fill="#10B981" font-family="monospace" font-size="8" text-anchor="middle">GPIO Inputs: SOS Button (GPIO 0)</text>
  <text x="370" y="235" fill="#10B981" font-family="monospace" font-size="8" text-anchor="middle">PWM: Buzzer (GPIO 5) | LEDs (GPIO 6,7,10)</text>

  <!-- Left: Sensor Modules -->
  <!-- MAX30102 -->
  <g transform="translate(30, 25)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MAX30102 (I²C 0x57)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Heart Rate (PPG) &amp; SpO₂ Sensor</text>
    <path d="M 180 22 H 260" stroke="#00B4D8" stroke-width="2" marker-end="url(#arrow)"/>
  </g>
  <!-- MAX30205 -->
  <g transform="translate(30, 85)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MAX30205 (I²C 0x48)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Clinical Body Temperature (±0.1°C)</text>
    <path d="M 180 22 H 260" stroke="#00B4D8" stroke-width="2"/>
  </g>
  <!-- MPU6050 -->
  <g transform="translate(30, 145)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MPU6050 (I²C 0x68)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">6-DOF Accelerometer + Gyroscope</text>
    <path d="M 180 22 H 260" stroke="#00B4D8" stroke-width="2"/>
  </g>
  <!-- GPS NEO-6M -->
  <g transform="translate(30, 205)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">NEO-6M GPS (UART)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Geolocation in Emergency Situations</text>
    <path d="M 180 22 H 260" stroke="#00B4D8" stroke-width="2"/>
  </g>
  <!-- Ext Blood Pressure Note -->
  <g transform="translate(30, 265)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="#1C2E42" stroke="#F59E0B" stroke-width="1.2" stroke-dasharray="3,2"/>
    <text x="90" y="18" fill="#F59E0B" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">External Validated BP Module</text>
    <text x="90" y="32" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">BLE / Manual Synchronization</text>
    <path d="M 180 22 H 260" stroke="#F59E0B" stroke-width="1.5" stroke-dasharray="3,2"/>
  </g>

  <!-- Right: Peripherals & Power -->
  <!-- OLED -->
  <g transform="translate(530, 25)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">0.96" OLED I²C (0x3C)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">128x64 Local Status &amp; Vitals Display</text>
    <path d="M 0 22 H -50" stroke="#00B4D8" stroke-width="2"/>
  </g>
  <!-- microSD -->
  <g transform="translate(530, 85)">
    <rect x="0" y="0" width="180" height="45" rx="6" fill="url(#sensorGrad)" stroke="#0077B6" stroke-width="1.5"/>
    <text x="90" y="18" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">microSD Card (SPI)</text>
    <text x="90" y="32" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Offline Circular Data Buffering</text>
    <path d="M 0 22 H -50" stroke="#00B4D8" stroke-width="2"/>
  </g>
  <!-- Battery & Power Management -->
  <g transform="translate(530, 145)">
    <rect x="0" y="0" width="180" height="50" rx="6" fill="#14342B" stroke="#10B981" stroke-width="1.5"/>
    <text x="90" y="18" fill="#10B981" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">Li-Po 3.7V (~12h Autonomy)</text>
    <text x="90" y="31" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" text-anchor="middle">TP4056 + LDO 3.3V + ADC Monitor</text>
    <text x="90" y="43" fill="#A7F3D0" font-family="sans-serif" font-size="7" text-anchor="middle">Sensor Duty Cycling &amp; Deep Sleep</text>
    <path d="M 0 25 H -50" stroke="#10B981" stroke-width="2"/>
  </g>
  <!-- Alert Peripherals (Buzzer, LEDs, SOS) -->
  <g transform="translate(530, 210)">
    <rect x="0" y="0" width="180" height="50" rx="6" fill="url(#sensorGrad)" stroke="#EF4444" stroke-width="1.5"/>
    <text x="90" y="16" fill="#EF4444" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Alerts &amp; User Inputs</text>
    <text x="90" y="29" fill="#FCA5A5" font-family="sans-serif" font-size="7.5" text-anchor="middle">SOS Emergency Push Button</text>
    <text x="90" y="41" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Acoustic Buzzer + LEDs (Green/Yel/Red)</text>
    <path d="M 0 25 H -50" stroke="#EF4444" stroke-width="2"/>
  </g>
</svg>
"@

# Sensor Architecture Diagram
$SVG_DIAG_3_SENSORS = @"
<svg viewBox="0 0 740 240" width="100%" height="200" xmlns="http://www.w3.org/2000/svg">
  <rect x="10" y="10" width="720" height="220" rx="10" fill="#0A1C30" stroke="#0077B6" stroke-width="1.5"/>
  <text x="30" y="32" fill="#00B4D8" font-family="sans-serif" font-size="11" font-weight="bold">Bus I²C Partagé (SDA: GPIO 8 / SCL: GPIO 9) + Résistances Pull-Up 4.7kΩ</text>
  <!-- I2C Bus Lines -->
  <line x1="40" y1="55" x2="700" y2="55" stroke="#00B4D8" stroke-width="3"/>
  <text x="45" y="50" fill="#00B4D8" font-family="monospace" font-size="9" font-weight="bold">SDA</text>
  <line x1="40" y1="75" x2="700" y2="75" stroke="#90E0EF" stroke-width="3"/>
  <text x="45" y="70" fill="#90E0EF" font-family="monospace" font-size="9" font-weight="bold">SCL</text>
  <!-- Devices on I2C -->
  <!-- Device 1: MAX30102 -->
  <g transform="translate(60, 100)">
    <line x1="40" y1="-45" x2="40" y2="0" stroke="#00B4D8" stroke-width="2"/>
    <line x1="50" y1="-25" x2="50" y2="0" stroke="#90E0EF" stroke-width="2"/>
    <rect x="0" y="0" width="140" height="110" rx="8" fill="#132E4C" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="70" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">MAX30102</text>
    <rect x="25" y="28" width="90" height="18" rx="4" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="70" y="41" fill="#00B4D8" font-family="monospace" font-size="8.5" font-weight="bold" text-anchor="middle">Addr: 0x57</text>
    <text x="70" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LED Rouge (660nm)</text>
    <text x="70" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LED Infrarouge (880nm)</text>
    <text x="70" y="90" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Heart Rate &amp; SpO₂</text>
  </g>
  <!-- Device 2: MAX30205 -->
  <g transform="translate(230, 100)">
    <line x1="40" y1="-45" x2="40" y2="0" stroke="#00B4D8" stroke-width="2"/>
    <line x1="50" y1="-25" x2="50" y2="0" stroke="#90E0EF" stroke-width="2"/>
    <rect x="0" y="0" width="140" height="110" rx="8" fill="#132E4C" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="70" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">MAX30205</text>
    <rect x="25" y="28" width="90" height="18" rx="4" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="70" y="41" fill="#00B4D8" font-family="monospace" font-size="8.5" font-weight="bold" text-anchor="middle">Addr: 0x48</text>
    <text x="70" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Précision Clinique ±0.1°C</text>
    <text x="70" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Convertisseur Sigma-Delta</text>
    <text x="70" y="90" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Température Corporelle</text>
  </g>
  <!-- Device 3: MPU6050 -->
  <g transform="translate(400, 100)">
    <line x1="40" y1="-45" x2="40" y2="0" stroke="#00B4D8" stroke-width="2"/>
    <line x1="50" y1="-25" x2="50" y2="0" stroke="#90E0EF" stroke-width="2"/>
    <rect x="0" y="0" width="140" height="110" rx="8" fill="#132E4C" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="70" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">MPU6050</text>
    <rect x="25" y="28" width="90" height="18" rx="4" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="70" y="41" fill="#00B4D8" font-family="monospace" font-size="8.5" font-weight="bold" text-anchor="middle">Addr: 0x68</text>
    <text x="70" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Accéléromètre 3 Axes</text>
    <text x="70" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Gyroscope 3 Axes</text>
    <text x="70" y="90" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Activité &amp; Détection Choc</text>
  </g>
  <!-- Device 4: OLED -->
  <g transform="translate(570, 100)">
    <line x1="40" y1="-45" x2="40" y2="0" stroke="#00B4D8" stroke-width="2"/>
    <line x1="50" y1="-25" x2="50" y2="0" stroke="#90E0EF" stroke-width="2"/>
    <rect x="0" y="0" width="140" height="110" rx="8" fill="#132E4C" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="70" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">OLED 0.96"</text>
    <rect x="25" y="28" width="90" height="18" rx="4" fill="#00B4D8" fill-opacity="0.2"/>
    <text x="70" y="41" fill="#00B4D8" font-family="monospace" font-size="8.5" font-weight="bold" text-anchor="middle">Addr: 0x3C</text>
    <text x="70" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Contrôleur SSD1306</text>
    <text x="70" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Résolution 128x64</text>
    <text x="70" y="90" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Affichage Local Direct</text>
  </g>
</svg>
"@

# AI Inference Pipeline
$SVG_DIAG_7_AI_PIPELINE = @"
<svg viewBox="0 0 740 180" width="100%" height="150" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="pipeG" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" stop-color="#0F2A4A"/>
      <stop offset="50%" stop-color="#123B66"/>
      <stop offset="100%" stop-color="#1B4D3E"/>
    </linearGradient>
  </defs>
  <!-- Step 1: Sensors -->
  <g transform="translate(10, 30)">
    <rect x="0" y="0" width="105" height="95" rx="8" fill="#10253F" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="52" y="25" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">1. Signaux IoT</text>
    <text x="52" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">PPG Raw</text>
    <text x="52" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Temp / MPU Acc</text>
    <text x="52" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Ext. Blood Press.</text>
    <!-- Arrow -->
    <path d="M 105 48 H 125" stroke="#00B4D8" stroke-width="2"/>
    <polygon points="125,44 133,48 125,52" fill="#00B4D8"/>
  </g>
  <!-- Step 2: Preprocessing -->
  <g transform="translate(135, 30)">
    <rect x="0" y="0" width="110" height="95" rx="8" fill="#10253F" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="55" y="25" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">2. Prétraitement</text>
    <text x="55" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Bandpass 0.5-4Hz</text>
    <text x="55" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Motion Artifact Cut</text>
    <text x="55" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Outlier Removal</text>
    <!-- Arrow -->
    <path d="M 110 48 H 130" stroke="#00B4D8" stroke-width="2"/>
    <polygon points="130,44 138,48 130,52" fill="#00B4D8"/>
  </g>
  <!-- Step 3: Feature Extraction -->
  <g transform="translate(268, 30)">
    <rect x="0" y="0" width="115" height="95" rx="8" fill="#10253F" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="57" y="25" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">3. Extraction</text>
    <text x="57" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">HRV (RMSSD, SDNN)</text>
    <text x="57" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Resp Rate (PPG/Acc)</text>
    <text x="57" y="75" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Activity Met Level</text>
    <!-- Arrow -->
    <path d="M 115 48 H 135" stroke="#00B4D8" stroke-width="2"/>
    <polygon points="135,44 143,48 135,52" fill="#00B4D8"/>
  </g>
  <!-- Step 4: Personal Baseline & ML Model -->
  <g transform="translate(405, 20)">
    <rect x="0" y="0" width="130" height="115" rx="8" fill="#13365C" stroke="#90E0EF" stroke-width="2"/>
    <text x="65" y="22" fill="#90E0EF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">4. Modèle IA &amp; Base</text>
    <rect x="10" y="32" width="110" height="25" rx="4" fill="#081A2F"/>
    <text x="65" y="48" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Personal Baseline Hist.</text>
    <rect x="10" y="62" width="110" height="42" rx="4" fill="#0A223D"/>
    <text x="65" y="78" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Random Forest / XGB</text>
    <text x="65" y="93" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Inférence Prédictive</text>
    <!-- Arrow -->
    <path d="M 130 58 H 150" stroke="#00B4D8" stroke-width="2"/>
    <polygon points="150,54 158,58 150,62" fill="#00B4D8"/>
  </g>
  <!-- Step 5: Risk Output -->
  <g transform="translate(560, 30)">
    <rect x="0" y="0" width="165" height="95" rx="8" fill="#0B261D" stroke="#10B981" stroke-width="2"/>
    <text x="82" y="22" fill="#10B981" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">5. Sortie &amp; Alerte</text>
    <text x="82" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">Score Risque: 0–100</text>
    <text x="82" y="58" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" text-anchor="middle">Niveaux: Normal / Modéré / Haut / Critique</text>
    <text x="82" y="74" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Contributing Factors</text>
    <text x="82" y="87" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Notification Immédiate Proche</text>
  </g>
</svg>
"@

# Risk Classification Diagram (Levels 0-100)
$SVG_DIAG_9_RISK = @"
<svg viewBox="0 0 740 180" width="100%" height="150" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="gNormal" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#065F46"/><stop offset="100%" stop-color="#10B981"/></linearGradient>
    <linearGradient id="gMod" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#92400E"/><stop offset="100%" stop-color="#F59E0B"/></linearGradient>
    <linearGradient id="gHigh" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#9A3412"/><stop offset="100%" stop-color="#F97316"/></linearGradient>
    <linearGradient id="gCrit" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#881337"/><stop offset="100%" stop-color="#EF4444"/></linearGradient>
  </defs>

  <!-- Scale Bar -->
  <g transform="translate(30, 20)">
    <!-- 0 - 25 Normal -->
    <rect x="0" y="0" width="165" height="40" rx="6" fill="url(#gNormal)"/>
    <text x="82" y="24" fill="#FFFFFF" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">0 – 25 : NORMAL</text>
    <rect x="0" y="48" width="165" height="85" rx="6" fill="#09291E" stroke="#10B981" stroke-width="1"/>
    <text x="82" y="68" fill="#A7F3D0" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">État Physiologique Stable</text>
    <text x="82" y="84" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">HR: 60-90 bpm | SpO₂ &gt; 95%</text>
    <text x="82" y="98" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Action: Surveillance passive</text>
    <text x="82" y="115" fill="#10B981" font-family="sans-serif" font-size="7" text-anchor="middle">Aucune intervention requise</text>
  </g>

  <g transform="translate(202, 20)">
    <!-- 26 - 50 Moderate -->
    <rect x="0" y="0" width="165" height="40" rx="6" fill="url(#gMod)"/>
    <text x="82" y="24" fill="#FFFFFF" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">26 – 50 : MODÉRÉ</text>
    <rect x="0" y="48" width="165" height="85" rx="6" fill="#2E1C0A" stroke="#F59E0B" stroke-width="1"/>
    <text x="82" y="68" fill="#FDE68A" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Écart Léger / Fatigue</text>
    <text x="82" y="84" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">HRV abaissée / Légère dérive</text>
    <text x="82" y="98" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Action: Notification Aidant</text>
    <text x="82" y="115" fill="#F59E0B" font-family="sans-serif" font-size="7" text-anchor="middle">Conseils repos &amp; hydratation</text>
  </g>

  <g transform="translate(374, 20)">
    <!-- 51 - 75 High -->
    <rect x="0" y="0" width="165" height="40" rx="6" fill="url(#gHigh)"/>
    <text x="82" y="24" fill="#FFFFFF" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">51 – 75 : ÉLEVÉ</text>
    <rect x="0" y="48" width="165" height="85" rx="6" fill="#36170B" stroke="#F97316" stroke-width="1"/>
    <text x="82" y="68" fill="#FED7AA" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Anomalie Multi-Signaux</text>
    <text x="82" y="84" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Tachycardie repos + SpO₂ bas</text>
    <text x="82" y="98" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Action: Alerte push prioritaire</text>
    <text x="82" y="115" fill="#F97316" font-family="sans-serif" font-size="7" text-anchor="middle">Buzzer doux + Check-in aidant</text>
  </g>

  <g transform="translate(546, 20)">
    <!-- 76 - 100 Critical -->
    <rect x="0" y="0" width="165" height="40" rx="6" fill="url(#gCrit)"/>
    <text x="82" y="24" fill="#FFFFFF" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">76 – 100 : CRITIQUE</text>
    <rect x="0" y="48" width="165" height="85" rx="6" fill="#350E17" stroke="#EF4444" stroke-width="1.5"/>
    <text x="82" y="68" fill="#FECDD3" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Urgence Potentielle / SOS</text>
    <text x="82" y="84" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Décompensation brutale / Chute</text>
    <text x="82" y="98" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Action: Alerte rouge sonore</text>
    <text x="82" y="115" fill="#EF4444" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Envoi immédiat position GPS</text>
  </g>
</svg>
"@

# Offline Sync Workflow Diagram
$SVG_DIAG_11_OFFLINE = @"
<svg viewBox="0 0 740 180" width="100%" height="150" xmlns="http://www.w3.org/2000/svg">
  <!-- State 1: Normal BLE Connection -->
  <g transform="translate(20, 25)">
    <rect x="0" y="0" width="140" height="120" rx="8" fill="#0C2037" stroke="#10B981" stroke-width="2"/>
    <text x="70" y="25" fill="#10B981" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">1. Mode Connecté</text>
    <text x="70" y="45" fill="#FFFFFF" font-family="sans-serif" font-size="8" text-anchor="middle">ESP32-S3  BLE</text>
    <text x="70" y="65" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Flux temps réel direct</text>
    <text x="70" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Smartphone Online</text>
    <text x="70" y="105" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Latence &lt; 500 ms</text>
    <!-- Arrow -->
    <path d="M 140 60 H 175" stroke="#00B4D8" stroke-width="2"/>
    <polygon points="175,56 183,60 175,64" fill="#00B4D8"/>
  </g>

  <!-- State 2: Connection Interrupted -->
  <g transform="translate(185, 25)">
    <rect x="0" y="0" width="160" height="120" rx="8" fill="#2E1C0C" stroke="#F59E0B" stroke-width="2"/>
    <text x="80" y="25" fill="#F59E0B" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">2. Perte de Connexion</text>
    <text x="80" y="45" fill="#EF4444" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">[X] BLE ou 4G Coupé</text>
    <text x="80" y="65" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Basculement autonome</text>
    <text x="80" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Horodatage RTC interne</text>
    <text x="80" y="105" fill="#FDE68A" font-family="sans-serif" font-size="7" text-anchor="middle">Surveillance locale maintenue</text>
    <!-- Arrow -->
    <path d="M 160 60 H 195" stroke="#F59E0B" stroke-width="2"/>
    <polygon points="195,56 203,60 195,64" fill="#F59E0B"/>
  </g>

  <!-- State 3: Local Storage / microSD Buffer -->
  <g transform="translate(385, 25)">
    <rect x="0" y="0" width="160" height="120" rx="8" fill="#122742" stroke="#00B4D8" stroke-width="2"/>
    <text x="80" y="25" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">3. Buffer Local / SD</text>
    <text x="80" y="45" fill="#FFFFFF" font-family="sans-serif" font-size="8" text-anchor="middle">Écriture Circulaire</text>
    <text x="80" y="65" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">microSD + Flash SPI</text>
    <text x="80" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Format JSON compacté</text>
    <text x="80" y="105" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Capacité: &gt; 72h données</text>
    <!-- Arrow -->
    <path d="M 160 60 H 195" stroke="#10B981" stroke-width="2"/>
    <polygon points="195,56 203,60 195,64" fill="#10B981"/>
  </g>

  <!-- State 4: Reconnection & Batch Sync -->
  <g transform="translate(580, 25)">
    <rect x="0" y="0" width="145" height="120" rx="8" fill="#0D2D20" stroke="#10B981" stroke-width="2"/>
    <text x="72" y="25" fill="#10B981" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">4. Reconnexion &amp; Sync</text>
    <text x="72" y="45" fill="#FFFFFF" font-family="sans-serif" font-size="8" text-anchor="middle">Synchronisation Batch</text>
    <text x="72" y="65" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Vérification d'intégrité</text>
    <text x="72" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Injection Cloud DB</text>
    <text x="72" y="105" fill="#A7F3D0" font-family="sans-serif" font-size="7" text-anchor="middle">Alerte si coupure prolongée</text>
  </g>
</svg>
"@

Write-Output "Extended SVGs defined successfully."
