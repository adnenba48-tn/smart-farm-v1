# SmartCardio Guardian - Hardware Components & Conceptual Vector Graphics (SVGs)

# Figure 1: ESP32-S3 Microcontroller
$SVG_FIG_ESP32 = @"
<svg viewBox="0 0 400 200" width="100%" height="150" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="pcbGrad" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#0f2b1d"/><stop offset="100%" stop-color="#05140d"/></linearGradient>
    <linearGradient id="shieldGrad" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#CBD5E1"/><stop offset="100%" stop-color="#64748B"/></linearGradient>
  </defs>
  <rect x="20" y="10" width="360" height="180" rx="8" fill="url(#pcbGrad)" stroke="#10B981" stroke-width="1.5"/>
  <!-- Gold Pins Left & Right -->
  <g fill="#F59E0B">
    <rect x="23" y="25" width="10" height="6" rx="1"/><rect x="23" y="37" width="10" height="6" rx="1"/><rect x="23" y="49" width="10" height="6" rx="1"/>
    <rect x="23" y="61" width="10" height="6" rx="1"/><rect x="23" y="73" width="10" height="6" rx="1"/><rect x="23" y="85" width="10" height="6" rx="1"/>
    <rect x="23" y="97" width="10" height="6" rx="1"/><rect x="23" y="109" width="10" height="6" rx="1"/><rect x="23" y="121" width="10" height="6" rx="1"/>
    <rect x="23" y="133" width="10" height="6" rx="1"/><rect x="23" y="145" width="10" height="6" rx="1"/><rect x="23" y="157" width="10" height="6" rx="1"/>

    <rect x="367" y="25" width="10" height="6" rx="1"/><rect x="367" y="37" width="10" height="6" rx="1"/><rect x="367" y="49" width="10" height="6" rx="1"/>
    <rect x="367" y="61" width="10" height="6" rx="1"/><rect x="367" y="73" width="10" height="6" rx="1"/><rect x="367" y="85" width="10" height="6" rx="1"/>
    <rect x="367" y="97" width="10" height="6" rx="1"/><rect x="367" y="109" width="10" height="6" rx="1"/><rect x="367" y="121" width="10" height="6" rx="1"/>
    <rect x="367" y="133" width="10" height="6" rx="1"/><rect x="367" y="145" width="10" height="6" rx="1"/><rect x="367" y="157" width="10" height="6" rx="1"/>
  </g>
  <!-- Metal RF Shield -->
  <rect x="80" y="35" width="180" height="130" rx="4" fill="url(#shieldGrad)" stroke="#475569" stroke-width="1.5"/>
  <text x="170" y="65" fill="#0F172A" font-family="sans-serif" font-size="13" font-weight="900" text-anchor="middle">ESPRESSIF</text>
  <text x="170" y="88" fill="#1E293B" font-family="sans-serif" font-size="11" font-weight="bold" text-anchor="middle">ESP32-S3-WROOM-1</text>
  <text x="170" y="108" fill="#334155" font-family="monospace" font-size="8.5" text-anchor="middle">Xtensa Dual-Core LX7 @ 240MHz</text>
  <text x="170" y="122" fill="#334155" font-family="monospace" font-size="8" text-anchor="middle">BLE 5.0 + Wi-Fi | 16MB Flash | 8MB PSRAM</text>
  <circle cx="100" cy="145" r="4" fill="#64748B"/>
  <text x="110" y="148" fill="#475569" font-family="sans-serif" font-size="7">CE / FCC ID</text>
  <!-- PCB Antenna -->
  <g transform="translate(280, 45)" stroke="#D97706" stroke-width="2.5" fill="none">
    <path d="M 0 0 H 60 V 20 H 15 V 40 H 60 V 60 H 15 V 80 H 60"/>
  </g>
  <text x="315" y="150" fill="#F59E0B" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">PCB Antenna</text>
</svg>
"@

# Figure 2: MAX30102 Pulse Oximeter & HR Sensor
$SVG_FIG_MAX30102 = @"
<svg viewBox="0 0 360 170" width="100%" height="135" xmlns="http://www.w3.org/2000/svg">
  <rect x="15" y="10" width="330" height="150" rx="6" fill="#1B1F3B" stroke="#00B4D8" stroke-width="1.5"/>
  <!-- Optical Sensor Window -->
  <rect x="110" y="30" width="140" height="80" rx="4" fill="#0A0D1A" stroke="#475569" stroke-width="1.5"/>
  <!-- Red LED -->
  <circle cx="145" cy="70" r="14" fill="#DC2626" fill-opacity="0.8"/>
  <circle cx="145" cy="70" r="6" fill="#EF4444"/>
  <text x="145" y="100" fill="#FCA5A5" font-family="sans-serif" font-size="6.5" text-anchor="middle">RED 660nm</text>
  <!-- IR LED & Photodiode -->
  <circle cx="215" cy="70" r="14" fill="#4C1D95" fill-opacity="0.8"/>
  <circle cx="215" cy="70" r="6" fill="#8B5CF6"/>
  <text x="215" y="100" fill="#DDD6FE" font-family="sans-serif" font-size="6.5" text-anchor="middle">IR 880nm + PD</text>
  <!-- Pin Header -->
  <g transform="translate(30, 40)" fill="#F59E0B">
    <rect x="0" y="0" width="18" height="6" rx="1"/><text x="25" y="6" fill="#CBD5E1" font-family="monospace" font-size="7">VIN (3.3V)</text>
    <rect x="0" y="14" width="18" height="6" rx="1"/><text x="25" y="20" fill="#CBD5E1" font-family="monospace" font-size="7">SDA (0x57)</text>
    <rect x="0" y="28" width="18" height="6" rx="1"/><text x="25" y="34" fill="#CBD5E1" font-family="monospace" font-size="7">SCL</text>
    <rect x="0" y="42" width="18" height="6" rx="1"/><text x="25" y="48" fill="#CBD5E1" font-family="monospace" font-size="7">INT</text>
    <rect x="0" y="56" width="18" height="6" rx="1"/><text x="25" y="62" fill="#CBD5E1" font-family="monospace" font-size="7">GND</text>
  </g>
  <text x="180" y="135" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MAX30102 High-Sensitivity Pulse Oximeter &amp; HR</text>
  <text x="180" y="148" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Comparaison avec référence médicale commerciale</text>
</svg>
"@

# Figure 3: MAX30205 Clinical Body Temperature Sensor
$SVG_FIG_MAX30205 = @"
<svg viewBox="0 0 360 170" width="100%" height="135" xmlns="http://www.w3.org/2000/svg">
  <rect x="15" y="10" width="330" height="150" rx="6" fill="#132B45" stroke="#00B4D8" stroke-width="1.5"/>
  <!-- Thermal Pad Area -->
  <rect x="120" y="28" width="120" height="75" rx="6" fill="#1E3E62" stroke="#90E0EF" stroke-width="1.5"/>
  <circle cx="180" cy="55" r="20" fill="#0284C7" fill-opacity="0.3"/>
  <!-- Thermometer icon -->
  <path d="M 180 42 V 62 M 176 65 A 6 6 0 1 0 184 65" stroke="#90E0EF" stroke-width="2.5" fill="#00B4D8"/>
  <text x="180" y="90" fill="#FFFFFF" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Précision: ±0.1°C</text>
  <!-- Pins Left -->
  <g transform="translate(35, 45)" fill="#F59E0B">
    <rect x="0" y="0" width="16" height="6" rx="1"/><text x="24" y="6" fill="#CBD5E1" font-family="monospace" font-size="7">SDA</text>
    <rect x="0" y="15" width="16" height="6" rx="1"/><text x="24" y="21" fill="#CBD5E1" font-family="monospace" font-size="7">SCL</text>
    <rect x="0" y="30" width="16" height="6" rx="1"/><text x="24" y="36" fill="#CBD5E1" font-family="monospace" font-size="7">OS (Alerte)</text>
    <rect x="0" y="45" width="16" height="6" rx="1"/><text x="24" y="51" fill="#CBD5E1" font-family="monospace" font-size="7">GND</text>
  </g>
  <!-- Specs Right -->
  <g transform="translate(255, 40)">
    <text x="0" y="15" fill="#10B981" font-family="sans-serif" font-size="8" font-weight="bold">ASTM E1112</text>
    <text x="0" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="7">Grade Médical</text>
    <text x="0" y="45" fill="#90E0EF" font-family="sans-serif" font-size="8" font-weight="bold">Plage 37°C-39°C</text>
    <text x="0" y="58" fill="#CBD5E1" font-family="sans-serif" font-size="7">Sigma-Delta 16b</text>
  </g>
  <text x="180" y="132" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MAX30205 Human Body Temperature Sensor</text>
  <text x="180" y="147" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">I²C Address: 0x48 | Contact direct cutané</text>
</svg>
"@

# Figure 4: MPU6050 Motion Tracking IMU
$SVG_FIG_MPU6050 = @"
<svg viewBox="0 0 360 170" width="100%" height="135" xmlns="http://www.w3.org/2000/svg">
  <rect x="15" y="10" width="330" height="150" rx="6" fill="#162E3B" stroke="#00B4D8" stroke-width="1.5"/>
  <!-- QFN Chip -->
  <rect x="125" y="30" width="110" height="75" rx="4" fill="#0F172A" stroke="#64748B" stroke-width="1.5"/>
  <text x="180" y="60" fill="#FFFFFF" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MPU-6050</text>
  <text x="180" y="75" fill="#90E0EF" font-family="sans-serif" font-size="7.5" text-anchor="middle">6-Axis MEMS</text>
  <text x="180" y="88" fill="#10B981" font-family="sans-serif" font-size="7" text-anchor="middle">DMP Motion Engine</text>
  <circle cx="138" cy="42" r="3" fill="#64748B"/>
  <!-- Axis coordinate cross -->
  <g transform="translate(270, 65)">
    <line x1="0" y1="0" x2="30" y2="0" stroke="#EF4444" stroke-width="2"/>
    <text x="35" y="3" fill="#EF4444" font-family="sans-serif" font-size="7" font-weight="bold">X</text>
    <line x1="0" y1="0" x2="0" y2="-25" stroke="#10B981" stroke-width="2"/>
    <text x="-4" y="-28" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold">Y</text>
    <line x1="0" y1="0" x2="-15" y2="15" stroke="#00B4D8" stroke-width="2"/>
    <text x="-25" y="20" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold">Z</text>
  </g>
  <!-- Pins Left -->
  <g transform="translate(30, 35)" fill="#F59E0B">
    <rect x="0" y="0" width="16" height="5" rx="1"/><text x="22" y="6" fill="#CBD5E1" font-family="monospace" font-size="6.5">VCC / GND</text>
    <rect x="0" y="13" width="16" height="5" rx="1"/><text x="22" y="19" fill="#CBD5E1" font-family="monospace" font-size="6.5">SCL (0x68)</text>
    <rect x="0" y="26" width="16" height="5" rx="1"/><text x="22" y="32" fill="#CBD5E1" font-family="monospace" font-size="6.5">SDA</text>
    <rect x="0" y="39" width="16" height="5" rx="1"/><text x="22" y="45" fill="#CBD5E1" font-family="monospace" font-size="6.5">XDA / XCL</text>
    <rect x="0" y="52" width="16" height="5" rx="1"/><text x="22" y="58" fill="#CBD5E1" font-family="monospace" font-size="6.5">AD0 / INT</text>
  </g>
  <text x="180" y="132" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">MPU6050 Accelerometer &amp; Gyroscope</text>
  <text x="180" y="147" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Détection mouvement, chute &amp; compensation d'artefacts PPG</text>
</svg>
"@

# Figure 5: NEO-6M GPS Module
$SVG_FIG_GPS = @"
<svg viewBox="0 0 360 170" width="100%" height="135" xmlns="http://www.w3.org/2000/svg">
  <rect x="15" y="10" width="330" height="150" rx="6" fill="#1C2E3D" stroke="#00B4D8" stroke-width="1.5"/>
  <!-- Ceramic Patch Antenna -->
  <rect x="35" y="30" width="90" height="75" rx="4" fill="#78716C" stroke="#A8A29E" stroke-width="1.5"/>
  <circle cx="80" cy="67" r="8" fill="#D6D3D1"/>
  <circle cx="80" cy="67" r="3" fill="#1C1917"/>
  <text x="80" y="118" fill="#CBD5E1" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Antenne Patch 25x25mm</text>
  <!-- u-blox Shield -->
  <rect x="145" y="30" width="110" height="75" rx="4" fill="#94A3B8" stroke="#475569" stroke-width="1.5"/>
  <text x="200" y="55" fill="#0F172A" font-family="sans-serif" font-size="9.5" font-weight="900" text-anchor="middle">u-blox 6</text>
  <text x="200" y="72" fill="#1E293B" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">NEO-6M-0-001</text>
  <text x="200" y="88" fill="#334155" font-family="sans-serif" font-size="7" text-anchor="middle">UART NMEA 9600 Bd</text>
  <!-- Pins Right -->
  <g transform="translate(280, 40)" fill="#F59E0B">
    <rect x="0" y="0" width="16" height="6" rx="1"/><text x="22" y="6" fill="#CBD5E1" font-family="monospace" font-size="7">VCC</text>
    <rect x="0" y="15" width="16" height="6" rx="1"/><text x="22" y="21" fill="#CBD5E1" font-family="monospace" font-size="7">RXD</text>
    <rect x="0" y="30" width="16" height="6" rx="1"/><text x="22" y="36" fill="#CBD5E1" font-family="monospace" font-size="7">TXD</text>
    <rect x="0" y="45" width="16" height="6" rx="1"/><text x="22" y="51" fill="#CBD5E1" font-family="monospace" font-size="7">GND</text>
  </g>
  <text x="180" y="135" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">Module Récepteur GPS NEO-6M</text>
  <text x="180" y="148" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Géolocalisation du patient en cas d'urgence critique ou SOS</text>
</svg>
"@

# Figure 6: 0.96" OLED I2C Display
$SVG_FIG_OLED = @"
<svg viewBox="0 0 360 170" width="100%" height="135" xmlns="http://www.w3.org/2000/svg">
  <rect x="15" y="10" width="330" height="150" rx="6" fill="#0C1D2E" stroke="#0077B6" stroke-width="1.5"/>
  <!-- PCB Frame -->
  <rect x="35" y="22" width="290" height="95" rx="4" fill="#0A0F1D" stroke="#1E3E62" stroke-width="1.5"/>
  <!-- Screen Area -->
  <rect x="50" y="28" width="260" height="82" rx="3" fill="#000000"/>
  <!-- UI Live Screen on OLED -->
  <text x="60" y="45" fill="#00B4D8" font-family="monospace" font-size="9" font-weight="bold">SMARTCARDIO v1.0</text>
  <text x="250" y="45" fill="#10B981" font-family="monospace" font-size="8.5">BLE:OK [■■■]</text>
  <line x1="60" y1="50" x2="300" y2="50" stroke="#0077B6" stroke-width="1"/>
  <text x="60" y="68" fill="#FFFFFF" font-family="monospace" font-size="11" font-weight="bold">HR: 74 BPM</text>
  <text x="180" y="68" fill="#00B4D8" font-family="monospace" font-size="11" font-weight="bold">SpO2: 98%</text>
  <text x="60" y="86" fill="#FFFFFF" font-family="monospace" font-size="9.5">TEMP: 36.8 C</text>
  <text x="180" y="86" fill="#10B981" font-family="monospace" font-size="9.5" font-weight="bold">STATUS: NORMAL</text>
  <path d="M 60 98 L 85 98 L 92 90 L 100 105 L 108 94 L 115 98 L 160 98" fill="none" stroke="#00B4D8" stroke-width="1.5"/>
  <text x="180" y="102" fill="#F59E0B" font-family="monospace" font-size="7.5">BAT: 82% | GPS: FIX</text>
  <text x="180" y="135" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">Écran OLED 0.96" I²C SSD1306 (128x64)</text>
  <text x="180" y="148" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Affichage local direct des constantes physiologiques et de l'état</text>
</svg>
"@

# Figure 7: Wearable Portable Device Concept (Enclosure & Wear)
$SVG_FIG_WEARABLE_CONCEPT = @"
<svg viewBox="0 0 420 220" width="100%" height="165" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="caseGrad" x1="0%" y1="0%" x2="100%" y2="100%"><stop offset="0%" stop-color="#1E293B"/><stop offset="100%" stop-color="#0F172A"/></linearGradient>
    <radialGradient id="lensGrad" cx="50%" cy="50%" r="50%"><stop offset="0%" stop-color="#00B4D8"/><stop offset="100%" stop-color="#0F172A"/></radialGradient>
  </defs>
  <rect x="10" y="10" width="400" height="200" rx="10" fill="#0A1828" stroke="#0077B6" stroke-width="1.5"/>
  <!-- Device Body Isometric/Rounded -->
  <g transform="translate(60, 25)">
    <!-- Wearable Strap Top/Bottom -->
    <rect x="90" y="0" width="40" height="25" rx="3" fill="#334155"/>
    <rect x="90" y="145" width="40" height="25" rx="3" fill="#334155"/>
    <!-- Main Enclosure -->
    <rect x="40" y="20" width="140" height="130" rx="18" fill="url(#caseGrad)" stroke="#00B4D8" stroke-width="2"/>
    <!-- Screen Glass -->
    <rect x="55" y="35" width="110" height="60" rx="8" fill="#050C16" stroke="#1E3E62" stroke-width="1.5"/>
    <text x="110" y="55" fill="#00B4D8" font-family="monospace" font-size="8" font-weight="bold" text-anchor="middle">72 BPM | 98% SpO₂</text>
    <path d="M 65 75 L 85 75 L 92 65 L 100 85 L 108 72 L 115 75 L 155 75" fill="none" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="110" y="87" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">RISQUE: NORMAL</text>
    <!-- Physical Emergency SOS Button -->
    <circle cx="110" cy="120" r="14" fill="#991B1B" stroke="#EF4444" stroke-width="2"/>
    <text x="110" y="124" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">SOS</text>
    <!-- Tricolor Status LED -->
    <circle cx="65" cy="120" r="4" fill="#10B981"/>
    <!-- Buzzer grill -->
    <circle cx="155" cy="116" r="1.5" fill="#64748B"/>
    <circle cx="155" cy="120" r="1.5" fill="#64748B"/>
    <circle cx="155" cy="124" r="1.5" fill="#64748B"/>
  </g>
  <!-- Callout labels -->
  <g transform="translate(245, 35)">
    <rect x="0" y="0" width="150" height="150" rx="6" fill="#10253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="75" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">CONCEPTION ERGONOMIQUE</text>
    <text x="12" y="38" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Fixation: Poignet ou Torse</text>
    <text x="12" y="53" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Boîtier compact et léger</text>
    <text x="12" y="68" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Bouton SOS tactile d'accès direct</text>
    <text x="12" y="83" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Écran OLED basse consommation</text>
    <text x="12" y="98" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Capteurs optiques face interne</text>
    <text x="12" y="113" fill="#CBD5E1" font-family="sans-serif" font-size="7">■ Recharge USB-C intégrée</text>
    <text x="75" y="135" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Autonomie cible : ~12h</text>
  </g>
</svg>
"@

# Figure 8: Caregiver Mobile Dashboard Interface
$SVG_FIG_MOBILE_DASHBOARD = @"
<svg viewBox="0 0 420 230" width="100%" height="175" xmlns="http://www.w3.org/2000/svg">
  <rect x="10" y="5" width="400" height="220" rx="10" fill="#0A1828" stroke="#0077B6" stroke-width="1.5"/>
  <!-- Phone Frame -->
  <g transform="translate(30, 15)">
    <rect x="0" y="0" width="115" height="200" rx="14" fill="#0F172A" stroke="#00B4D8" stroke-width="2"/>
    <!-- Top Notch -->
    <rect x="35" y="4" width="45" height="5" rx="2.5" fill="#334155"/>
    <!-- Dashboard Screen Content -->
    <rect x="6" y="14" width="103" height="176" rx="8" fill="#091E33"/>
    <text x="57" y="28" fill="#00B4D8" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">SmartCardio Caregiver</text>
    <text x="57" y="38" fill="#A7F3D0" font-family="sans-serif" font-size="6" text-anchor="middle">Patient: Adnen B. (Stable)</text>
    
    <!-- Risk Gauge Card -->
    <rect x="10" y="44" width="95" height="36" rx="4" fill="#0C2D24" stroke="#10B981" stroke-width="1"/>
    <text x="57" y="56" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">SCORE RISQUE : 18 / 100</text>
    <text x="57" y="68" fill="#A7F3D0" font-family="sans-serif" font-size="6" text-anchor="middle">Niveau : Risque Faible (Normal)</text>
    <text x="57" y="76" fill="#CBD5E1" font-family="sans-serif" font-size="5.5" text-anchor="middle">Facteurs : Paramètres stables</text>

    <!-- Vitals Grid -->
    <rect x="10" y="84" width="45" height="25" rx="3" fill="#132B45"/>
    <text x="32" y="94" fill="#90E0EF" font-family="sans-serif" font-size="5.5" text-anchor="middle">Pouls (HR)</text>
    <text x="32" y="105" fill="#FFFFFF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">72 bpm</text>

    <rect x="60" y="84" width="45" height="25" rx="3" fill="#132B45"/>
    <text x="82" y="94" fill="#90E0EF" font-family="sans-serif" font-size="5.5" text-anchor="middle">SpO₂</text>
    <text x="82" y="105" fill="#FFFFFF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">98 %</text>

    <rect x="10" y="112" width="45" height="25" rx="3" fill="#132B45"/>
    <text x="32" y="122" fill="#90E0EF" font-family="sans-serif" font-size="5.5" text-anchor="middle">Pression Ext.</text>
    <text x="32" y="133" fill="#FFFFFF" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">122/78</text>

    <rect x="60" y="112" width="45" height="25" rx="3" fill="#132B45"/>
    <text x="82" y="122" fill="#90E0EF" font-family="sans-serif" font-size="5.5" text-anchor="middle">Temp / Resp</text>
    <text x="82" y="133" fill="#FFFFFF" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">36.7°C | 16/m</text>

    <!-- Mini GPS Location Box -->
    <rect x="10" y="140" width="95" height="25" rx="3" fill="#132B45"/>
    <text x="57" y="150" fill="#00B4D8" font-family="sans-serif" font-size="6" font-weight="bold" text-anchor="middle">Position GPS Active</text>
    <text x="57" y="160" fill="#CBD5E1" font-family="sans-serif" font-size="5.5" text-anchor="middle">36.8065 N, 10.1815 E</text>

    <!-- Bottom Nav -->
    <rect x="6" y="168" width="103" height="22" rx="4" fill="#071321"/>
    <text x="25" y="181" fill="#00B4D8" font-family="sans-serif" font-size="6" font-weight="bold" text-anchor="middle">Accueil</text>
    <text x="57" y="181" fill="#64748B" font-family="sans-serif" font-size="6" text-anchor="middle">Graphes</text>
    <text x="89" y="181" fill="#64748B" font-family="sans-serif" font-size="6" text-anchor="middle">Alertes</text>
  </g>

  <!-- Side Description Cards -->
  <g transform="translate(170, 20)">
    <rect x="0" y="0" width="220" height="190" rx="8" fill="#10253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="110" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">MODULES CLÉS DE L'APPLICATION AIDANT</text>
    
    <g transform="translate(10, 30)">
      <rect x="0" y="0" width="200" height="32" rx="4" fill="#143454"/>
      <text x="10" y="14" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold">Tableau de bord temps réel</text>
      <text x="10" y="25" fill="#CBD5E1" font-family="sans-serif" font-size="6.8">Affichage des constantes, batterie boîtier, statut BLE</text>
    </g>

    <g transform="translate(10, 68)">
      <rect x="0" y="0" width="200" height="32" rx="4" fill="#143454"/>
      <text x="10" y="14" fill="#00B4D8" font-family="sans-serif" font-size="7.5" font-weight="bold">Historique &amp; Tendances (24h, 7j, 30j)</text>
      <text x="10" y="25" fill="#CBD5E1" font-family="sans-serif" font-size="6.8">Courbes interactives FC, SpO₂, Pression et Température</text>
    </g>

    <g transform="translate(10, 106)">
      <rect x="0" y="0" width="200" height="32" rx="4" fill="#143454"/>
      <text x="10" y="14" fill="#F59E0B" font-family="sans-serif" font-size="7.5" font-weight="bold">Gestionnaire d'alertes &amp; escalade</text>
      <text x="10" y="25" fill="#CBD5E1" font-family="sans-serif" font-size="6.8">Historique horodaté, niveau de risque, facteurs causaux</text>
    </g>

    <g transform="translate(10, 144)">
      <rect x="0" y="0" width="200" height="36" rx="4" fill="#143454"/>
      <text x="10" y="14" fill="#EF4444" font-family="sans-serif" font-size="7.5" font-weight="bold">Cartographie &amp; Géolocalisation d'urgence</text>
      <text x="10" y="27" fill="#CBD5E1" font-family="sans-serif" font-size="6.8">Affichage direct sur plan en cas d'alerte critique / SOS</text>
    </g>
  </g>
</svg>
"@

Write-Output "Component illustrations written."
