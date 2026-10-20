# SmartCardio Guardian - Additional SVG Asset Library (Part 2)

# Diagram 8: AI Training Pipeline & 3-Level Dataset Strategy
$SVG_DIAG_8_TRAINING = @"
<svg viewBox="0 0 740 240" width="100%" height="195" xmlns="http://www.w3.org/2000/svg">
  <!-- Datasets Level 1, 2, 3 -->
  <g transform="translate(15, 20)">
    <rect x="0" y="0" width="170" height="195" rx="8" fill="#0C2038" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="85" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">SOURCES DE DONNÉES</text>
    
    <rect x="10" y="38" width="150" height="42" rx="5" fill="#143454"/>
    <text x="85" y="54" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Niveau 1 : Données Publiques</text>
    <text x="85" y="68" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">PhysioNet / MIMIC-III (PPG, ECG)</text>

    <rect x="10" y="88" width="150" height="42" rx="5" fill="#143454"/>
    <text x="85" y="104" fill="#FFFFFF" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Niveau 2 : Données Cliniques</text>
    <text x="85" y="118" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Collaborations &amp; Anonymisées</text>

    <rect x="10" y="138" width="150" height="45" rx="5" fill="#184337" stroke="#10B981" stroke-width="1"/>
    <text x="85" y="154" fill="#10B981" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Niveau 3 : Profil Individuel</text>
    <text x="85" y="168" fill="#A7F3D0" font-family="sans-serif" font-size="7" text-anchor="middle">Historique Personnel (Baseline)</text>
    <text x="85" y="177" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Personnalisation Progressive</text>
  </g>

  <!-- Arrow -->
  <path d="M 190 115 H 220" stroke="#00B4D8" stroke-width="2.5"/>
  <polygon points="220,111 228,115 220,119" fill="#00B4D8"/>

  <!-- Pipeline Stages -->
  <g transform="translate(230, 20)">
    <rect x="0" y="0" width="495" height="195" rx="8" fill="#08182B" stroke="#1E3E62" stroke-width="1.5"/>
    <text x="247" y="22" fill="#90E0EF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">PIPELINE D'ENTRAÎNEMENT &amp; ÉVALUATION DU MODÈLE</text>

    <!-- Stage 1: Data Cleaning -->
    <g transform="translate(15, 38)">
      <rect x="0" y="0" width="85" height="135" rx="6" fill="#102B48"/>
      <text x="42" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Nettoyage</text>
      <text x="42" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Suppression</text>
      <text x="42" y="57" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Artefacts Mouvement</text>
      <text x="42" y="77" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Normalisation</text>
      <text x="42" y="89" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Z-score signaux</text>
      <text x="42" y="112" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Fenêtrage 30s</text>
    </g>

    <!-- Arrow -->
    <path d="M 103 105 H 112" stroke="#0077B6" stroke-width="1.5"/>
    <polygon points="112,102 117,105 112,108" fill="#0077B6"/>

    <!-- Stage 2: Feature Engineering -->
    <g transform="translate(118, 38)">
      <rect x="0" y="0" width="85" height="135" rx="6" fill="#102B48"/>
      <text x="42" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Extraction</text>
      <text x="42" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">HRV Temporel</text>
      <text x="42" y="57" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">(SDNN, RMSSD)</text>
      <text x="42" y="77" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">HRV Fréquence</text>
      <text x="42" y="89" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">(LF/HF ratio)</text>
      <text x="42" y="112" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Resp. Rate PPG</text>
    </g>

    <!-- Arrow -->
    <path d="M 206 105 H 215" stroke="#0077B6" stroke-width="1.5"/>
    <polygon points="215,102 220,105 215,108" fill="#0077B6"/>

    <!-- Stage 3: Training -->
    <g transform="translate(221, 38)">
      <rect x="0" y="0" width="85" height="135" rx="6" fill="#102B48"/>
      <text x="42" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Entraînement</text>
      <text x="42" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Ensemble Learning</text>
      <text x="42" y="57" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Random Forest</text>
      <text x="42" y="77" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Gradient Boost</text>
      <text x="42" y="89" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">(XGBoost)</text>
      <text x="42" y="112" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Cross-Val k=5</text>
    </g>

    <!-- Arrow -->
    <path d="M 309 105 H 318" stroke="#0077B6" stroke-width="1.5"/>
    <polygon points="318,102 323,105 318,108" fill="#0077B6"/>

    <!-- Stage 4: Validation & Evaluation -->
    <g transform="translate(324, 38)">
      <rect x="0" y="0" width="85" height="135" rx="6" fill="#102B48"/>
      <text x="42" y="20" fill="#00B4D8" font-family="sans-serif" font-size="8" font-weight="bold" text-anchor="middle">Validation</text>
      <text x="42" y="45" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Matrice Confusion</text>
      <text x="42" y="57" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Precision / Recall</text>
      <text x="42" y="77" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Score F1-Measure</text>
      <text x="42" y="89" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Courbe ROC-AUC</text>
      <text x="42" y="112" fill="#F59E0B" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">Tests Réels</text>
    </g>

    <!-- Arrow -->
    <path d="M 412 105 H 421" stroke="#10B981" stroke-width="2"/>
    <polygon points="421,102 426,105 421,108" fill="#10B981"/>

    <!-- Stage 5: Deployment -->
    <g transform="translate(427, 38)">
      <rect x="0" y="0" width="55" height="135" rx="6" fill="#0F3325" stroke="#10B981" stroke-width="1"/>
      <text x="27" y="25" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Déploiement</text>
      <text x="27" y="50" fill="#CBD5E1" font-family="sans-serif" font-size="6.8" text-anchor="middle">ONNX /</text>
      <text x="27" y="62" fill="#CBD5E1" font-family="sans-serif" font-size="6.8" text-anchor="middle">FastAPI</text>
      <text x="27" y="80" fill="#A7F3D0" font-family="sans-serif" font-size="6.8" text-anchor="middle">Inférence</text>
      <text x="27" y="92" fill="#A7F3D0" font-family="sans-serif" font-size="6.8" text-anchor="middle">Cloud</text>
      <text x="27" y="115" fill="#10B981" font-family="sans-serif" font-size="6.5" font-weight="bold" text-anchor="middle">Temps Réel</text>
    </g>
  </g>
</svg>
"@

# Diagram 10: Alert Escalation Flow Ladder
$SVG_DIAG_10_ALERT = @"
<svg viewBox="0 0 740 210" width="100%" height="170" xmlns="http://www.w3.org/2000/svg">
  <!-- Level 1: LOW RISK -->
  <g transform="translate(20, 20)">
    <rect x="0" y="0" width="165" height="170" rx="8" fill="#09241C" stroke="#10B981" stroke-width="2"/>
    <rect x="0" y="0" width="165" height="30" rx="8" fill="#10B981"/>
    <text x="82" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">RISQUE FAIBLE (0-25)</text>
    <text x="82" y="50" fill="#A7F3D0" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Surveillance Continue</text>
    <text x="82" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LED Verte active</text>
    <text x="82" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Aucune alarme sonore</text>
    <text x="82" y="100" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Synchronisation passive</text>
    <rect x="15" y="125" width="135" height="30" rx="4" fill="#051711"/>
    <text x="82" y="143" fill="#10B981" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Pas de notification aidant</text>
  </g>

  <!-- Level 2: MEDIUM RISK -->
  <g transform="translate(200, 20)">
    <rect x="0" y="0" width="165" height="170" rx="8" fill="#2E1C0A" stroke="#F59E0B" stroke-width="2"/>
    <rect x="0" y="0" width="165" height="30" rx="8" fill="#F59E0B"/>
    <text x="82" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">RISQUE MOYEN (26-50)</text>
    <text x="82" y="50" fill="#FDE68A" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Notification Préventive</text>
    <text x="82" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LED Jaune active</text>
    <text x="82" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Push notification simple</text>
    <text x="82" y="100" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Recommandation repos</text>
    <rect x="15" y="125" width="135" height="30" rx="4" fill="#1A1005"/>
    <text x="82" y="143" fill="#F59E0B" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Conseils d'hydratation</text>
  </g>

  <!-- Level 3: HIGH RISK -->
  <g transform="translate(380, 20)">
    <rect x="0" y="0" width="165" height="170" rx="8" fill="#36170B" stroke="#F97316" stroke-width="2"/>
    <rect x="0" y="0" width="165" height="30" rx="8" fill="#F97316"/>
    <text x="82" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">RISQUE ÉLEVÉ (51-75)</text>
    <text x="82" y="50" fill="#FED7AA" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Alerte Prioritaire</text>
    <text x="82" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LED Rouge clignotante</text>
    <text x="82" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Bip intermittent (Buzzer)</text>
    <text x="82" y="100" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Alerte push sonore aidant</text>
    <rect x="15" y="125" width="135" height="30" rx="4" fill="#200D05"/>
    <text x="82" y="143" fill="#F97316" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Activation suivi GPS actif</text>
  </g>

  <!-- Level 4: CRITICAL / SOS -->
  <g transform="translate(560, 20)">
    <rect x="0" y="0" width="165" height="170" rx="8" fill="#350E17" stroke="#EF4444" stroke-width="2.5"/>
    <rect x="0" y="0" width="165" height="30" rx="8" fill="#EF4444"/>
    <text x="82" y="20" fill="#FFFFFF" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">CRITIQUE / SOS (76-100)</text>
    <text x="82" y="50" fill="#FECDD3" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Urgence &amp; Localisation</text>
    <text x="82" y="70" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Buzzer continu haute puiss.</text>
    <text x="82" y="85" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Transmission Coordonnées GPS</text>
    <text x="82" y="100" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Appel / SMS automatique aidant</text>
    <rect x="15" y="125" width="135" height="30" rx="4" fill="#1C060B"/>
    <text x="82" y="137" fill="#EF4444" font-family="sans-serif" font-size="7.5" font-weight="bold" text-anchor="middle">Workflow d'Escalade</text>
    <text x="82" y="149" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">Bouton SOS déclenché</text>
  </g>
</svg>
"@

# Diagram 12: Battery Management & Autonomy
$SVG_DIAG_12_BATTERY = @"
<svg viewBox="0 0 740 190" width="100%" height="160" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="batG" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#059669"/><stop offset="100%" stop-color="#10B981"/></linearGradient>
  </defs>

  <!-- Li-Po Battery -->
  <g transform="translate(15, 30)">
    <rect x="0" y="0" width="115" height="120" rx="8" fill="#0E2D22" stroke="#10B981" stroke-width="2"/>
    <text x="57" y="22" fill="#10B981" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Batterie Li-Po</text>
    <text x="57" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="8" text-anchor="middle">3.7V / 1200 mAh</text>
    <text x="57" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Cible: ~12h</text>
    <rect x="12" y="75" width="90" height="15" rx="3" fill="#064E3B"/>
    <rect x="12" y="75" width="70" height="15" rx="3" fill="url(#batG)"/>
    <text x="57" y="86" fill="#FFFFFF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">78% Actif</text>
    <text x="57" y="110" fill="#A7F3D0" font-family="sans-serif" font-size="7" text-anchor="middle">Recharge USB-C</text>
  </g>

  <!-- Arrow -->
  <path d="M 130 90 H 155" stroke="#10B981" stroke-width="2"/>
  <polygon points="155,86 163,90 155,94" fill="#10B981"/>

  <!-- Power Management IC -->
  <g transform="translate(165, 30)">
    <rect x="0" y="0" width="130" height="120" rx="8" fill="#122A44" stroke="#00B4D8" stroke-width="1.5"/>
    <text x="65" y="22" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">Gestion Énergie</text>
    <text x="65" y="42" fill="#FFFFFF" font-family="sans-serif" font-size="8" text-anchor="middle">TP4056 + Protec</text>
    <text x="65" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">LDO Régulé 3.3V</text>
    <text x="65" y="78" fill="#CBD5E1" font-family="sans-serif" font-size="7.5" text-anchor="middle">Diviseur Résistif ADC</text>
    <text x="65" y="96" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Lecture Vbatt GPIO 4</text>
    <text x="65" y="112" fill="#F59E0B" font-family="sans-serif" font-size="6.8" font-weight="bold" text-anchor="middle">Alerte Batterie &lt; 20%</text>
  </g>

  <!-- Arrow -->
  <path d="M 295 90 H 320" stroke="#00B4D8" stroke-width="2"/>
  <polygon points="320,86 328,90 320,94" fill="#00B4D8"/>

  <!-- Optimization Domains -->
  <g transform="translate(330, 25)">
    <rect x="0" y="0" width="390" height="130" rx="8" fill="#0A1C30" stroke="#1E3E62" stroke-width="1.5"/>
    <text x="195" y="20" fill="#00B4D8" font-family="sans-serif" font-size="9" font-weight="bold" text-anchor="middle">STRATÉGIES D'OPTIMISATION DE L'AUTONOMIE (~12 HEURES)</text>
    
    <g transform="translate(15, 30)">
      <rect x="0" y="0" width="110" height="85" rx="5" fill="#14314F"/>
      <text x="55" y="16" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Duty Cycling</text>
      <text x="55" y="32" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">MAX30102: 10s actif</text>
      <text x="55" y="44" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">puis 50s standby</text>
      <text x="55" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">MAX30205: 1 éch/min</text>
      <text x="55" y="75" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Gain: ~60% conso</text>
    </g>

    <g transform="translate(135, 30)">
      <rect x="0" y="0" width="110" height="85" rx="5" fill="#14314F"/>
      <text x="55" y="16" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">BLE Optimization</text>
      <text x="55" y="32" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Intervalles 500ms</text>
      <text x="55" y="44" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Mode Sniff basse conso</text>
      <text x="55" y="60" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Data Batching paquets</text>
      <text x="55" y="75" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Gain: ~25% RF</text>
    </g>

    <g transform="translate(255, 30)">
      <rect x="0" y="0" width="120" height="85" rx="5" fill="#14314F"/>
      <text x="60" y="16" fill="#FFFFFF" font-family="sans-serif" font-size="7.8" font-weight="bold" text-anchor="middle">Modulation GPS</text>
      <text x="60" y="32" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">GPS en veille continue</text>
      <text x="60" y="44" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Réveil uniquement si</text>
      <text x="60" y="58" fill="#F59E0B" font-family="sans-serif" font-size="7" text-anchor="middle">Choc / SOS / Haut Risque</text>
      <text x="60" y="75" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Économie critique</text>
    </g>
  </g>
</svg>
"@

# Diagram 17: Project Development Roadmap (14 Phases)
$SVG_DIAG_17_ROADMAP = @"
<svg viewBox="0 0 740 230" width="100%" height="190" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="220" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="22" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">CHRONOGRAMME DE DÉVELOPPEMENT DU PROJET SMARTCARDIO GUARDIAN</text>

  <!-- Row 1: Phases 1 to 7 -->
  <g transform="translate(15, 35)">
    <g transform="translate(0, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 1</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Requirements</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Cahier des charges</text>
    </g>
    <path d="M 95 28 H 102" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(102, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 2</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Hardware Design</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Schéma &amp; Routage</text>
    </g>
    <path d="M 197 28 H 204" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(204, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 3</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Sensors Integ.</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">I²C, MAX, MPU</text>
    </g>
    <path d="M 299 28 H 306" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(306, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 4</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">ESP32 Firmware</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">FreeRTOS Tasks</text>
    </g>
    <path d="M 401 28 H 408" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(408, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 5</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">BLE Comm.</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">GATT Profiles</text>
    </g>
    <path d="M 503 28 H 510" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(510, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 6</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Mobile App</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">Flutter Gateway</text>
    </g>
    <path d="M 605 28 H 612" stroke="#00B4D8" stroke-width="1.5"/>

    <g transform="translate(612, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#102E4C" stroke="#00B4D8" stroke-width="1"/>
      <text x="47" y="16" fill="#00B4D8" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 7</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Cloud Backend</text>
      <text x="47" y="44" fill="#90E0EF" font-family="sans-serif" font-size="6.5" text-anchor="middle">FastAPI / DB</text>
    </g>
  </g>

  <!-- Turn-around arrow -->
  <path d="M 660 90 V 110 H 660" stroke="#0077B6" stroke-width="1.5"/>

  <!-- Row 2: Phases 8 to 14 -->
  <g transform="translate(15, 120)">
    <g transform="translate(0, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 8</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">AI Datasets</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Nettoyage 30s</text>
    </g>
    <path d="M 95 28 H 102" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(102, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 9</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">AI Model</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">ML Training</text>
    </g>
    <path d="M 197 28 H 204" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(204, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 10</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Intégration</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Système Global</text>
    </g>
    <path d="M 299 28 H 306" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(306, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 11</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Testing</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Bancs d'essai</text>
    </g>
    <path d="M 401 28 H 408" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(408, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 12</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Validation</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Appareils Référence</text>
    </g>
    <path d="M 503 28 H 510" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(510, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#163C32" stroke="#10B981" stroke-width="1"/>
      <text x="47" y="16" fill="#10B981" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 13</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" text-anchor="middle">Documentation</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Rapport &amp; Manuel</text>
    </g>
    <path d="M 605 28 H 612" stroke="#10B981" stroke-width="1.5"/>

    <g transform="translate(612, 0)">
      <rect x="0" y="0" width="95" height="55" rx="5" fill="#1E4D3E" stroke="#10B981" stroke-width="1.5"/>
      <text x="47" y="16" fill="#A7F3D0" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Phase 14</text>
      <text x="47" y="30" fill="#FFFFFF" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Démonstration</text>
      <text x="47" y="44" fill="#A7F3D0" font-family="sans-serif" font-size="6.5" text-anchor="middle">Soutenance PFE</text>
    </g>
  </g>
</svg>
"@

# Diagram 18: Testing & Validation Architecture
$SVG_DIAG_18_TESTING = @"
<svg viewBox="0 0 740 210" width="100%" height="170" xmlns="http://www.w3.org/2000/svg">
  <rect x="5" y="5" width="730" height="200" rx="8" fill="#08182B" stroke="#0077B6" stroke-width="1.5"/>
  <text x="370" y="24" fill="#00B4D8" font-family="sans-serif" font-size="9.5" font-weight="bold" text-anchor="middle">ARCHITECTURE DU BANC DE TEST ET PROTOCOLE DE VALIDATION EXPÉRIMENTALE</text>

  <!-- Test Column 1: Heart Rate & SpO2 -->
  <g transform="translate(20, 38)">
    <rect x="0" y="0" width="160" height="155" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="80" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">1. MAX30102 (HR / SpO₂)</text>
    <rect x="10" y="28" width="140" height="35" rx="4" fill="#08182B"/>
    <text x="70" y="43" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Référence: Oxymètre Médical</text>
    <text x="70" y="55" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Certifié CE / FDA (Doigt)</text>
    <rect x="10" y="70" width="140" height="45" rx="4" fill="#08182B"/>
    <text x="70" y="85" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Protocole: Repos, Marche, Effort</text>
    <text x="70" y="97" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Calcul: Erreur Moyenne (MAE)</text>
    <text x="70" y="108" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">&amp; Corrélation de Pearson</text>
    <text x="80" y="132" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Résultat :</text>
    <text x="80" y="145" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">À mesurer expérimentalement</text>
  </g>

  <!-- Test Column 2: Temperature & BP -->
  <g transform="translate(195, 38)">
    <rect x="0" y="0" width="165" height="155" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="82" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">2. Température &amp; Press. Art.</text>
    <rect x="10" y="28" width="145" height="35" rx="4" fill="#08182B"/>
    <text x="72" y="43" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Réf Temp: Thermomètre Infrarouge</text>
    <text x="72" y="55" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Réf BP: Tensiomètre Électronique Validé</text>
    <rect x="10" y="70" width="145" height="45" rx="4" fill="#08182B"/>
    <text x="72" y="85" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Comparaison MAX30205 vs Réf</text>
    <text x="72" y="97" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Tolérance ciblée: &lt; ±0.2°C</text>
    <text x="72" y="108" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Intégration BP sans prétention diag.</text>
    <text x="82" y="132" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Résultat :</text>
    <text x="82" y="145" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">À mesurer expérimentalement</text>
  </g>

  <!-- Test Column 3: GPS & Connectivity -->
  <g transform="translate(375, 38)">
    <rect x="0" y="0" width="165" height="155" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="82" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">3. GPS &amp; Connectivité</text>
    <rect x="10" y="28" width="145" height="35" rx="4" fill="#08182B"/>
    <text x="72" y="43" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Test Extérieur (Ciel ouvert)</text>
    <text x="72" y="55" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Limites Intérieures (TTFF, Perte Fix)</text>
    <rect x="10" y="70" width="145" height="45" rx="4" fill="#08182B"/>
    <text x="72" y="85" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Test Coupure BLE volontaire</text>
    <text x="72" y="97" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Vérification Buffer Flash/SD</text>
    <text x="72" y="108" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Reconnexion &amp; Reprise Synchro</text>
    <text x="82" y="132" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Résultat :</text>
    <text x="82" y="145" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">À mesurer expérimentalement</text>
  </g>

  <!-- Test Column 4: Battery & AI Metrics -->
  <g transform="translate(555, 38)">
    <rect x="0" y="0" width="165" height="155" rx="6" fill="#0E253F" stroke="#00B4D8" stroke-width="1"/>
    <text x="82" y="18" fill="#00B4D8" font-family="sans-serif" font-size="8.5" font-weight="bold" text-anchor="middle">4. Batterie &amp; Modèle IA</text>
    <rect x="10" y="28" width="145" height="35" rx="4" fill="#08182B"/>
    <text x="72" y="43" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Autonomie: Pleine charge / Veille</text>
    <text x="72" y="55" fill="#CBD5E1" font-family="sans-serif" font-size="7" text-anchor="middle">Mesure courant (Multimètre/Shunt)</text>
    <rect x="10" y="70" width="145" height="45" rx="4" fill="#08182B"/>
    <text x="72" y="85" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Métriques IA: Précision, Rappel</text>
    <text x="72" y="97" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">F1-Score, Matrice Confusion</text>
    <text x="72" y="108" fill="#90E0EF" font-family="sans-serif" font-size="7" text-anchor="middle">Stabilité Score 0-100</text>
    <text x="82" y="132" fill="#F59E0B" font-family="sans-serif" font-size="7" font-weight="bold" text-anchor="middle">Résultat :</text>
    <text x="82" y="145" fill="#CBD5E1" font-family="sans-serif" font-size="6.5" text-anchor="middle">À mesurer expérimentalement</text>
  </g>
</svg>
"@

Write-Output "Extended SVGs part 2 written."
