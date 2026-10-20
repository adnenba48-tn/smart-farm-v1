# SmartCardio Guardian - SVG Asset Library (Part 3)

# Diagram 4: ESP32-S3 Firmware Data Flow & FreeRTOS Tasks
$SVG_DIAG_4_FIRMWARE = @"
<svg viewBox="0 0 740 210" width="100%" height="170" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="200" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">ARCHITECTURE MULTITÂCHE DU FIRMWARE ESP32-S3 (FreeRTOS DUAL-CORE)</text>

  <!-- Core 0: Acquisition & Local Processing -->
  <g transform="translate(20, 38)">
    <rect x="0" y="0" width="340" height="155" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="170" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">CORE 0 : ACQUISITION &amp; GESTION MATÉRIELLE</text>

    <!-- Task 1: SensorTask -->
    <rect x="15" y="32" width="145" height="50" rx="4" fill="#143454"/>
    <text x="87" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_SensorAcq (100Hz)</text>
    <text x="87" y="62" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">I²C Polling: MAX30102, 30205</text>
    <text x="87" y="73" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">MPU6050 &amp; UART GPS</text>

    <!-- Task 2: FilterTask -->
    <rect x="180" y="32" width="145" height="50" rx="4" fill="#143454"/>
    <text x="252" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_Preprocess (50Hz)</text>
    <text x="252" y="62" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Filtrage passe-bande PPG</text>
    <text x="252" y="73" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Détection crêtes &amp; calcul HRV</text>

    <!-- Task 3: Display & Safety -->
    <rect x="15" y="92" width="310" height="50" rx="4" fill="#143454"/>
    <text x="170" y="108" fill="#10B981" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_LocalUI_Safety (10Hz) &amp; Interruption SOS</text>
    <text x="170" y="122" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Rafraîchissement OLED SSD1306, Contrôle LEDs (Vert/Jaune/Rouge)</text>
    <text x="170" y="133" fill="#F59E0B" font-family="sans-serif" font-size="6.5" text-anchor="middle">ISR Bouton SOS matériel (GPIO 0) avec anti-rebond matériel/logiciel</text>
  </g>

  <!-- FreeRTOS Queue / IPC -->
  <g transform="translate(365, 90)">
    <line x1="0" y1="20" x2="30" y2="20" stroke="#00B4D8" stroke-width="2" stroke-dasharray="3,2"/>
    <polygon points="30,17 36,20 30,23" fill="#00B4D8"/>
    <text x="18" y="12" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Queue</text>
  </g>

  <!-- Core 1: Wireless Comm & Buffering -->
  <g transform="translate(400, 38)">
    <rect x="0" y="0" width="320" height="155" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="160" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">CORE 1 : COMMUNICATION SANS FIL &amp; BUFFER</text>

    <!-- Task 4: BLE Task -->
    <rect x="15" y="32" width="135" height="50" rx="4" fill="#143454"/>
    <text x="82" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_BLE_GATT (NimBLE)</text>
    <text x="82" y="62" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">GATT Server Notifications</text>
    <text x="82" y="73" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">MTU 247 octets / Chiffrement</text>

    <!-- Task 5: Storage Task -->
    <rect x="165" y="32" width="140" height="50" rx="4" fill="#143454"/>
    <text x="235" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_Storage_SD (Asynchrone)</text>
    <text x="235" y="62" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Buffer circulaire Flash SPI / SD</text>
    <text x="235" y="73" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Gestion coupure réseau</text>

    <!-- Task 6: Power Management -->
    <rect x="15" y="92" width="290" height="50" rx="4" fill="#143454"/>
    <text x="160" y="108" fill="#10B981" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Task_Power_Supervisor (1Hz)</text>
    <text x="160" y="122" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Surveillance tension batterie via ADC (GPIO 4), régulation dynamique (DFS)</text>
    <text x="160" y="133" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Gestion Light Sleep entre cycles d'acquisition pour autonomie 12h</text>
  </g>
</svg>
"@

# Diagram 5: BLE Communication Architecture
$SVG_DIAG_5_BLE = @"
<svg viewBox="0 0 740 200" width="100%" height="165" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="190" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">ARCHITECTURE DE COMMUNICATION BLE 5.0 (PROFIL GATT PERSONNALISÉ)</text>

  <!-- GATT Server (ESP32-S3) -->
  <g transform="translate(20, 38)">
    <rect x="0" y="0" width="330" height="145" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="165" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">ESP32-S3 (GATT SERVER)</text>

    <rect x="15" y="32" width="300" height="24" rx="4" fill="#143454"/>
    <text x="165" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Primary Service : SmartCardio Service (UUID: 0xFFE0)</text>

    <!-- Characteristics -->
    <g transform="translate(15, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Char: Live Vitals</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">UUID: 0xFFE1 (Notify)</text>
      <text x="47" y="38" fill="#10B981" font-family="sans-serif" font-size="6" text-anchor="middle">HR, SpO₂, Temp</text>
    </g>

    <g transform="translate(117, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Char: Motion / IMU</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">UUID: 0xFFE2 (Notify)</text>
      <text x="47" y="38" fill="#10B981" font-family="sans-serif" font-size="6" text-anchor="middle">Acc_XYZ, Activity</text>
    </g>

    <g transform="translate(220, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Char: Emergency</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">UUID: 0xFFE3 (Indicate)</text>
      <text x="47" y="38" fill="#EF4444" font-family="sans-serif" font-size="6" text-anchor="middle">SOS Trigger &amp; GPS</text>
    </g>

    <!-- Config Char -->
    <rect x="15" y="110" width="300" height="24" rx="4" fill="#143454"/>
    <text x="165" y="126" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Char: Device Control &amp; Time Sync (UUID: 0xFFE4 - Read/Write)</text>
  </g>

  <!-- BLE Wireless Link -->
  <g transform="translate(355, 90)">
    <line x1="0" y1="15" x2="30" y2="15" stroke="#00B4D8" stroke-width="2.5" stroke-dasharray="4,2"/>
    <polygon points="30,11 36,15 30,19" fill="#00B4D8"/>
    <line x1="36" y1="25" x2="6" y2="25" stroke="#00B4D8" stroke-width="2.5" stroke-dasharray="4,2"/>
    <polygon points="6,21 0,25 6,29" fill="#00B4D8"/>
    <text x="18" y="5" fill="#00B4D8" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">BLE 5.0</text>
    <text x="18" y="38" fill="#90E0EF" font-family="sans-serif" font-size="6" text-anchor="middle">AES-128</text>
  </g>

  <!-- GATT Client (Smartphone App) -->
  <g transform="translate(390, 38)">
    <rect x="0" y="0" width="330" height="145" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="165" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">SMARTPHONE (GATT CLIENT)</text>

    <rect x="15" y="32" width="300" height="24" rx="4" fill="#143454"/>
    <text x="165" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">BLE Central Manager &amp; Background Service</text>

    <!-- Client Modules -->
    <g transform="translate(15, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Auto-Reconnect</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Scan &amp; Bond</text>
      <text x="47" y="38" fill="#10B981" font-family="sans-serif" font-size="6" text-anchor="middle">RSSI Monitor</text>
    </g>

    <g transform="translate(117, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Payload Parser</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Byte Unpack</text>
      <text x="47" y="38" fill="#10B981" font-family="sans-serif" font-size="6" text-anchor="middle">CRC16 Check</text>
    </g>

    <g transform="translate(220, 62)">
      <rect x="0" y="0" width="95" height="42" rx="4" fill="#091A2E"/>
      <text x="47" y="16" fill="#90E0EF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Sync Manager</text>
      <text x="47" y="28" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Queue to Cloud</text>
      <text x="47" y="38" fill="#F59E0B" font-family="sans-serif" font-size="6" text-anchor="middle">SQLite Fallback</text>
    </g>

    <rect x="15" y="110" width="300" height="24" rx="4" fill="#143454"/>
    <text x="165" y="126" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Transmission HTTPS / WSS vers le Serveur Cloud Backend</text>
  </g>
</svg>
"@

# Diagram 6: Smartphone -> Cloud Architecture
$SVG_DIAG_6_CLOUD = @"
<svg viewBox="0 0 740 200" width="100%" height="165" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="190" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">ARCHITECTURE CLOUD &amp; SYNCHRONISATION DES DONNÉES DE SANTÉ</text>

  <!-- Gateway Mobile -->
  <g transform="translate(20, 38)">
    <rect x="0" y="0" width="160" height="145" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="80" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">SMARTPHONE GATEWAY</text>
    <rect x="12" y="32" width="136" height="30" rx="4" fill="#143454"/>
    <text x="80" y="46" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Formatage JSON Payload</text>
    <text x="80" y="56" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Vitals + Horodatage UTC</text>
    <rect x="12" y="68" width="136" height="30" rx="4" fill="#143454"/>
    <text x="80" y="82" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Authentification JWT</text>
    <text x="80" y="92" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Bearer Token Sécurisé</text>
    <rect x="12" y="104" width="136" height="30" rx="4" fill="#143454"/>
    <text x="80" y="118" fill="#10B981" font-family="sans-serif" font-size="7.5" text-anchor="middle">Chiffrement TLS 1.3</text>
    <text x="80" y="128" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">HTTPS / WSS Tunnel</text>
  </g>

  <!-- Arrow -->
  <path d="M 185 105 H 215" stroke="#00B4D8" stroke-width="2.5"/>
  <polygon points="215,101 223,105 215,109" fill="#00B4D8"/>

  <!-- Cloud API & Load Balancer -->
  <g transform="translate(225, 38)">
    <rect x="0" y="0" width="150" height="145" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="75" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">API GATEWAY</text>
    <rect x="10" y="32" width="130" height="45" rx="4" fill="#143454"/>
    <text x="75" y="50" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Nginx Reverse Proxy</text>
    <text x="75" y="62" fill="#CBD5E1" font-family="sans-serif" font-size="6.8" text-anchor="middle">SSL Termination</text>
    <text x="75" y="71" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Rate Limiting</text>
    <rect x="10" y="85" width="130" height="50" rx="4" fill="#143454"/>
    <text x="75" y="103" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">FastAPI Backend</text>
    <text x="75" y="115" fill="#90E0EF" font-family="sans-serif" font-size="6.8" text-anchor="middle">Endpoints REST &amp; WSS</text>
    <text x="75" y="125" fill="#10B981" font-family="sans-serif" font-size="6.5" text-anchor="middle">Validation Pydantic</text>
  </g>

  <!-- Arrow -->
  <path d="M 380 105 H 410" stroke="#00B4D8" stroke-width="2.5"/>
  <polygon points="410,101 418,105 410,109" fill="#00B4D8"/>

  <!-- Databases & Storage -->
  <g transform="translate(420, 38)">
    <rect x="0" y="0" width="145" height="145" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="72" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">STOCKAGE CLOUD</text>
    <rect x="10" y="32" width="125" height="45" rx="4" fill="#143454"/>
    <text x="72" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">InfluxDB (Séries Temp.)</text>
    <text x="72" y="60" fill="#90E0EF" font-family="sans-serif" font-size="6.8" text-anchor="middle">Signaux bruts PPG, HR,</text>
    <text x="72" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">SpO₂, Température</text>
    <rect x="10" y="85" width="125" height="50" rx="4" fill="#143454"/>
    <text x="72" y="102" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">PostgreSQL (Relationnel)</text>
    <text x="72" y="114" fill="#90E0EF" font-family="sans-serif" font-size="6.8" text-anchor="middle">Utilisateurs, Alertes,</text>
    <text x="72" y="125" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Historique des risques</text>
  </g>

  <!-- Arrow to AI Service -->
  <path d="M 570 105 H 600" stroke="#00B4D8" stroke-width="2.5"/>
  <polygon points="600,101 608,105 600,109" fill="#00B4D8"/>

  <!-- Microservice IA & Alertes -->
  <g transform="translate(610, 38)">
    <rect x="0" y="0" width="115" height="145" rx="6" fill="#0D243F" stroke="#10B981" stroke-width="1.5"/>
    <text x="57" y="20" fill="#10B981" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">SERVICE IA &amp; ALERT</text>
    <rect x="8" y="32" width="99" height="45" rx="4" fill="#143454"/>
    <text x="57" y="48" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Modèle Inférence</text>
    <text x="57" y="60" fill="#A7F3D0" font-family="sans-serif" font-size="6.8" text-anchor="middle">Score Risque 0-100</text>
    <text x="57" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Calcul en direct</text>
    <rect x="8" y="85" width="99" height="50" rx="4" fill="#143454"/>
    <text x="57" y="102" fill="#F59E0B" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Firebase FCM</text>
    <text x="57" y="114" fill="#CBD5E1" font-family="sans-serif" font-size="6.8" text-anchor="middle">Push Notifications</text>
    <text x="57" y="125" fill="#10B981" font-family="sans-serif" font-size="6.5" text-anchor="middle">Vers App Aidant</text>
  </g>
</svg>
"@

# Diagram 13: Caregiver Mobile App Architecture
$SVG_DIAG_13_MOBILE = @"
<svg viewBox="0 0 740 190" width="100%" height="155" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="180" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">ARCHITECTURE LOGICIELLE DE L'APPLICATION MOBILE AIDANT (Caregiver App)</text>

  <!-- Layer 1: UI Presentation Layer -->
  <g transform="translate(20, 38)">
    <rect x="0" y="0" width="165" height="135" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="82" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">UI / PRÉSENTATION</text>
    <rect x="10" y="28" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Tableau de Bord Vitals</text>
    <rect x="10" y="54" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="68" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Jauge de Risque 0-100</text>
    <rect x="10" y="80" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="94" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Carte GPS Interactive</text>
    <rect x="10" y="106" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="120" fill="#10B981" font-family="sans-serif" font-size="7.5" text-anchor="middle">Historique des Alertes</text>
  </g>

  <!-- Arrow -->
  <path d="M 190 100 H 215" stroke="#00B4D8" stroke-width="2"/>
  <polygon points="215,96 223,100 215,104" fill="#00B4D8"/>

  <!-- Layer 2: Business Logic / State Management -->
  <g transform="translate(225, 38)">
    <rect x="0" y="0" width="165" height="135" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="82" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">LOGIQUE MÉTIER &amp; ÉTAT</text>
    <rect x="10" y="28" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">BLoC / Provider Pattern</text>
    <rect x="10" y="54" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="68" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Gestionnaire d'Alertes</text>
    <rect x="10" y="80" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="94" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Suivi Seuil &amp; Escalade</text>
    <rect x="10" y="106" width="145" height="22" rx="3" fill="#143454"/>
    <text x="82" y="120" fill="#F59E0B" font-family="sans-serif" font-size="7.5" text-anchor="middle">Générateur de Rapports</text>
  </g>

  <!-- Arrow -->
  <path d="M 395 100 H 420" stroke="#00B4D8" stroke-width="2"/>
  <polygon points="420,96 428,100 420,104" fill="#00B4D8"/>

  <!-- Layer 3: Services & Networking -->
  <g transform="translate(430, 38)">
    <rect x="0" y="0" width="145" height="135" rx="6" fill="#0D243F" stroke="#00B4D8" stroke-width="1"/>
    <text x="72" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">SERVICES RÉSEAU</text>
    <rect x="10" y="28" width="125" height="22" rx="3" fill="#143454"/>
    <text x="72" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">WebSocket Listener</text>
    <rect x="10" y="54" width="125" height="22" rx="3" fill="#143454"/>
    <text x="72" y="68" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">REST Client (Dio / Retrofit)</text>
    <rect x="10" y="80" width="125" height="22" rx="3" fill="#143454"/>
    <text x="72" y="94" fill="#FFFFFF" font-family="sans-serif" font-size="7.5" text-anchor="middle">Firebase Messaging FCM</text>
    <rect x="10" y="106" width="125" height="22" rx="3" fill="#143454"/>
    <text x="72" y="120" fill="#A7F3D0" font-family="sans-serif" font-size="7.5" text-anchor="middle">Notification Prioritaire</text>
  </g>

  <!-- Arrow -->
  <path d="M 580 100 H 605" stroke="#00B4D8" stroke-width="2"/>
  <polygon points="605,96 613,100 605,104" fill="#00B4D8"/>

  <!-- Layer 4: Local Storage & Cache -->
  <g transform="translate(615, 38)">
    <rect x="0" y="0" width="105" height="135" rx="6" fill="#0D243F" stroke="#10B981" stroke-width="1"/>
    <text x="52" y="18" fill="#10B981" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">PERSISTANCE</text>
    <rect x="8" y="28" width="89" height="30" rx="3" fill="#143454"/>
    <text x="52" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="7.2" text-anchor="middle">SQLite / Hive</text>
    <text x="52" y="52" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Cache local</text>
    <rect x="8" y="66" width="89" height="30" rx="3" fill="#143454"/>
    <text x="52" y="80" fill="#FFFFFF" font-family="sans-serif" font-size="7.2" text-anchor="middle">Secure Storage</text>
    <text x="52" y="90" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Tokens JWT</text>
    <rect x="8" y="104" width="89" height="24" rx="3" fill="#143454"/>
    <text x="52" y="120" fill="#10B981" font-family="sans-serif" font-size="7" text-anchor="middle">Mode Hors-ligne</text>
  </g>
</svg>
"@

# Diagram 15: System Sequence Diagram
$SVG_DIAG_15_SEQUENCE = @"
<svg viewBox="0 0 740 220" width="100%" height="180" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="210" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">DIAGRAMME DE SÉQUENCE : GESTION D'UN ÉVÉNEMENT CARDIOVASCULAIRE ET ALERTE</text>

  <!-- Actors / Lifelines -->
  <!-- Col 1: Patient / Device -->
  <rect x="30" y="38" width="100" height="25" rx="4" fill="#123B66"/>
  <text x="80" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Boîtier ESP32-S3</text>
  <line x1="80" y1="63" x2="80" y2="195" stroke="#1E3E62" stroke-width="1.5" stroke-dasharray="3,3"/>

  <!-- Col 2: Smartphone -->
  <rect x="175" y="38" width="100" height="25" rx="4" fill="#123B66"/>
  <text x="225" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Passerelle Mobile</text>
  <line x1="225" y1="63" x2="225" y2="195" stroke="#1E3E62" stroke-width="1.5" stroke-dasharray="3,3"/>

  <!-- Col 3: Cloud API -->
  <rect x="320" y="38" width="100" height="25" rx="4" fill="#123B66"/>
  <text x="370" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Cloud Backend</text>
  <line x1="370" y1="63" x2="370" y2="195" stroke="#1E3E62" stroke-width="1.5" stroke-dasharray="3,3"/>

  <!-- Col 4: AI Engine -->
  <rect x="465" y="38" width="100" height="25" rx="4" fill="#123B66"/>
  <text x="515" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Moteur IA</text>
  <line x1="515" y1="63" x2="515" y2="195" stroke="#1E3E62" stroke-width="1.5" stroke-dasharray="3,3"/>

  <!-- Col 5: Caregiver App -->
  <rect x="610" y="38" width="100" height="25" rx="4" fill="#1B4D3E"/>
  <text x="660" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">App Aidant Proche</text>
  <line x1="660" y1="63" x2="660" y2="195" stroke="#1E3E62" stroke-width="1.5" stroke-dasharray="3,3"/>

  <!-- Sequence Step 1 -->
  <line x1="80" y1="80" x2="225" y2="80" stroke="#00B4D8" stroke-width="1.5"/>
  <polygon points="221,77 225,80 221,83" fill="#00B4D8"/>
  <text x="152" y="75" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">1. BLE Notify (Vitals)</text>

  <!-- Sequence Step 2 -->
  <line x1="225" y1="98" x2="370" y2="98" stroke="#00B4D8" stroke-width="1.5"/>
  <polygon points="366,95 370,98 366,101" fill="#00B4D8"/>
  <text x="297" y="93" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">2. HTTPS POST (JSON)</text>

  <!-- Sequence Step 3 -->
  <line x1="370" y1="116" x2="515" y2="116" stroke="#00B4D8" stroke-width="1.5"/>
  <polygon points="511,113 515,116 511,119" fill="#00B4D8"/>
  <text x="442" y="111" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">3. Stream Data</text>

  <!-- Sequence Step 4: AI Analysis -->
  <rect x="505" y="125" width="20" height="22" rx="2" fill="#10B981"/>
  <text x="515" y="139" fill="#051B12" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">IA</text>
  <text x="545" y="137" fill="#CBD5E1" font-family="sans-serif" font-size="7">Inférence: Score 82 (Critique)</text>

  <!-- Sequence Step 5: Alert Dispatch -->
  <line x1="515" y1="156" x2="370" y2="156" stroke="#EF4444" stroke-width="1.5"/>
  <polygon points="374,153 370,156 374,159" fill="#EF4444"/>
  <text x="442" y="151" fill="#EF4444" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">5. Déclenchement Alerte Urgente</text>

  <!-- Sequence Step 6: Push to Caregiver -->
  <line x1="370" y1="174" x2="660" y2="174" stroke="#EF4444" stroke-width="2"/>
  <polygon points="656,171 660,174 656,177" fill="#EF4444"/>
  <text x="515" y="169" fill="#EF4444" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">6. Push FCM Urgent + GPS + Alarme Sonore</text>

  <!-- Sequence Step 7: Feedback to Device -->
  <line x1="370" y1="190" x2="80" y2="190" stroke="#F59E0B" stroke-width="1.5" stroke-dasharray="3,2"/>
  <polygon points="84,187 80,190 84,193" fill="#F59E0B"/>
  <text x="225" y="186" fill="#F59E0B" font-family="sans-serif" font-size="7" text-anchor="middle">7. Ordre d'activation Buzzer local / LED Rouge</text>
</svg>
"@

Write-Output "Extended SVGs part 3 written."
