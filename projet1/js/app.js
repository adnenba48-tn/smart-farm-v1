/**
 * ============================================================================
 * SMART FARM 1 — MAIN APPLICATION CONTROLLER (app.js)
 * Dedicated Single-Zone Platform (Zone 1 — Serre Maraîchère)
 * Synchronizes views, navigation, user interactions & real-time IoT feeds.
 * ============================================================================
 */

(function () {
  'use strict';

  let currentTab = 'overview';
  let currentTheme = localStorage.getItem('smartfarm_theme') || 'dark';

  function initApp() {
    // 1. Initialize Theme
    applyTheme(currentTheme);

    // 2. Setup Navigation
    setupNavigation();

    // 3. Setup Hardware Controls & Events
    setupControls();

    // 4. Setup Telemetry Listener from integration module
    window.SmartFarmIntegration.onData(handleStateUpdate);

    // 5. Initialize Charts
    setTimeout(() => {
      window.FarmAnalytics.setTheme(currentTheme);
      window.FarmAnalytics.initCharts();
    }, 200);

    // 6. Bind Serial line listener for the on-screen console
    window.onSerialLine = appendTerminalLine;

    console.log('🌾 Smart Farm 1 (Zone 1 Dedicated) Initialized Successfully.');
  }

  function applyTheme(theme) {
    currentTheme = theme;
    document.documentElement.setAttribute('data-theme', theme);
    localStorage.setItem('smartfarm_theme', theme);

    const themeIcon = document.getElementById('theme-toggle-icon');
    if (themeIcon) {
      themeIcon.innerHTML = theme === 'dark' 
        ? '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>'
        : '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg>';
    }

    if (window.FarmAnalytics) {
      window.FarmAnalytics.setTheme(theme);
    }
  }

  function setupNavigation() {
    const navLinks = document.querySelectorAll('.nav-link[data-target]');
    navLinks.forEach(link => {
      link.addEventListener('click', (e) => {
        e.preventDefault();
        const target = link.getAttribute('data-target');
        switchTab(target);

        // Close mobile drawer if open
        const sidebar = document.getElementById('sidebar');
        if (sidebar) sidebar.classList.remove('open');
      });
    });

    const mobileBtn = document.getElementById('mobile-menu-toggle');
    const sidebar = document.getElementById('sidebar');
    if (mobileBtn && sidebar) {
      mobileBtn.addEventListener('click', () => {
        sidebar.classList.toggle('open');
      });
    }
  }

  function switchTab(tabId) {
    currentTab = tabId;

    document.querySelectorAll('.nav-link').forEach(link => {
      link.classList.toggle('active', link.getAttribute('data-target') === tabId);
    });

    document.querySelectorAll('.tab-pane').forEach(pane => {
      pane.classList.toggle('active', pane.id === `tab-${tabId}`);
    });

    const titleEl = document.getElementById('page-header-title');
    const subEl = document.getElementById('page-header-sub');
    
    const titles = {
      overview: { t: "Tableau de Bord — Zone 1", s: "Supervision complète de la Serre Maraîchère, télémétrie en temps réel et état général" },
      sensors: { t: "Capteurs & Télémétrie Détaillée", s: "Diagnostic approfondi du DHT22, de la sonde sol analogique et de la photodiode LDR" },
      reservoir: { t: "Réservoir d'Eau & Capteur HC-SR04", s: "Gestion hydrostatique de la réserve d'arrosage et sécurité de la pompe" },
      analytics: { t: "Analyses & Tendances Temporelles", s: "Historique des mesures, corrélations psychrométriques et export des données" },
      hardware: { t: "Banc d'Essai ESP32 & Signalisation", s: "Simulation fidèle de l'afficheur LCD 16x4, des 3 LEDs et schéma de câblage" },
      ai: { t: "Automatisation & Recommandations", s: "Modes de gestion agronomique et détection de stress hydrique" },
      settings: { t: "Paramètres, Seuils & Moniteur Série", s: "Configuration des seuils du firmware et terminal série en direct (115200 bauds)" }
    };

    if (titles[tabId] && titleEl) {
      titleEl.textContent = titles[tabId].t;
      if (subEl) subEl.textContent = titles[tabId].s;
    }
  }

  function setupControls() {
    // Theme toggle button
    const themeBtn = document.getElementById('theme-toggle-btn');
    if (themeBtn) {
      themeBtn.addEventListener('click', () => {
        applyTheme(currentTheme === 'dark' ? 'light' : 'dark');
      });
    }

    // Serial connection button (Web Serial API)
    const serialBtn = document.getElementById('btn-connect-serial');
    if (serialBtn) {
      serialBtn.addEventListener('click', async () => {
        try {
          await window.SmartFarmIntegration.connectWebSerial();
          window.HardwareComponents.showToast('✅ ESP32 connecté avec succès via Web Serial !', 'info');
        } catch (err) {
          window.HardwareComponents.showToast(`⚠️ Échec de connexion : ${err.message}`, 'warning');
        }
      });
    }

    // Scenario buttons
    document.querySelectorAll('[data-scenario]').forEach(btn => {
      btn.addEventListener('click', () => {
        const sc = btn.getAttribute('data-scenario');
        window.SmartFarmIntegration.setScenario(sc);
        document.querySelectorAll('[data-scenario]').forEach(b => b.classList.remove('btn-primary'));
        btn.classList.add('btn-primary');
        window.HardwareComponents.showToast(`🧪 Scénario activé : <strong>${btn.textContent.trim()}</strong>`, 'info');
      });
    });

    // Control Mode buttons
    document.querySelectorAll('.mode-selector-card').forEach(card => {
      card.addEventListener('click', () => {
        document.querySelectorAll('.mode-selector-card').forEach(c => c.classList.remove('active'));
        card.classList.add('active');
        const mode = card.getAttribute('data-mode');
        window.SmartFarmIntegration.state.meta.controlMode = mode;
        const modeBadge = document.getElementById('control-mode-badge');
        if (modeBadge) {
          modeBadge.textContent = mode.toUpperCase();
        }
        window.HardwareComponents.showToast(`⚙️ Mode de contrôle : <strong>${mode.toUpperCase()}</strong>`, 'info');
      });
    });

    // Serial console send command form
    const cmdForm = document.getElementById('serial-cmd-form');
    const cmdInput = document.getElementById('serial-cmd-input');
    if (cmdForm && cmdInput) {
      cmdForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const cmd = cmdInput.value.trim();
        if (cmd) {
          window.SmartFarmIntegration.sendSerialCommand(cmd);
          cmdInput.value = '';
        }
      });
    }

    // Thresholds form submit
    const thresholdForm = document.getElementById('thresholds-form');
    if (thresholdForm) {
      thresholdForm.addEventListener('submit', (e) => {
        e.preventDefault();
        const newCfg = {
          TEMP_ALERT: parseFloat(document.getElementById('input-temp-alert').value) || 30.0,
          TEMP_DANGER: parseFloat(document.getElementById('input-temp-danger').value) || 35.0,
          SOIL_DRY: parseInt(document.getElementById('input-soil-dry').value, 10) || 2800,
          SOIL_DANGER: parseInt(document.getElementById('input-soil-danger').value, 10) || 3500,
          HUM_LOW: parseFloat(document.getElementById('input-hum-low').value) || 30.0,
          HUM_HIGH: parseFloat(document.getElementById('input-hum-high').value) || 80.0
        };
        window.SmartFarmIntegration.updateConfig(newCfg);
        window.HardwareComponents.showToast('💾 Seuils mis à jour dans le système.', 'info');
      });
    }

    // CSV export button
    const exportBtn = document.getElementById('btn-export-csv');
    if (exportBtn) {
      exportBtn.addEventListener('click', () => {
        window.FarmAnalytics.exportCSV();
        window.HardwareComponents.showToast('📥 Téléchargement de la télémétrie Zone 1...', 'info');
      });
    }

    // Clear console button
    const clearBtn = document.getElementById('btn-clear-console');
    if (clearBtn) {
      clearBtn.addEventListener('click', () => {
        const terminal = document.getElementById('serial-terminal-output');
        if (terminal) terminal.innerHTML = '';
      });
    }

    // Wiring modal open/close
    const wiringImg = document.getElementById('wiring-preview-img');
    const wiringBtn = document.getElementById('btn-zoom-wiring');
    const wiringModal = document.getElementById('wiring-modal');
    const wiringClose = document.getElementById('close-wiring-modal');
    if (wiringImg && wiringModal) {
      wiringImg.addEventListener('click', () => wiringModal.classList.add('open'));
    }
    if (wiringBtn && wiringModal) {
      wiringBtn.addEventListener('click', () => wiringModal.classList.add('open'));
    }
    if (wiringClose && wiringModal) {
      wiringClose.addEventListener('click', () => wiringModal.classList.remove('open'));
    }
    if (wiringModal) {
      wiringModal.addEventListener('click', (e) => {
        if (e.target === wiringModal) wiringModal.classList.remove('open');
      });
    }
  }

  function appendTerminalLine(text) {
    const terminal = document.getElementById('serial-terminal-output');
    if (!terminal) return;

    const line = document.createElement('div');
    line.className = 'console-line';
    if (text.includes('DANGER') || text.includes('ERREUR')) line.classList.add('error');
    else if (text.includes('ALERTE') || text.includes('SEC')) line.classList.add('alert');
    else if (text.startsWith('>>>')) line.classList.add('cmd');

    line.textContent = text;
    terminal.appendChild(line);
    terminal.scrollTop = terminal.scrollHeight;
  }

  /**
   * Main reactive callback whenever telemetry state changes
   */
  function handleStateUpdate(farmState) {
    const meta = farmState.meta;
    const z1 = farmState.zone1;
    const res = farmState.reservoir;

    // 1. Top Badges & System Global Status
    const globalStatusText = meta.systemGlobalState === 0 ? 'ZONE 1 : NOMINALE' : (meta.systemGlobalState === 1 ? 'ZONE 1 : ATTENTION' : 'ZONE 1 : DANGER CRITIQUE');
    const globalStatusClass = meta.systemGlobalState === 0 ? 'normal' : (meta.systemGlobalState === 1 ? 'alert' : 'danger');

    document.querySelectorAll('.global-status-text').forEach(el => el.textContent = globalStatusText);
    document.querySelectorAll('.status-dot').forEach(el => {
      el.className = `status-dot ${globalStatusClass}`;
    });

    const activeAlertsBadge = document.getElementById('nav-alert-counter');
    if (activeAlertsBadge) {
      activeAlertsBadge.textContent = meta.activeAlertsCount;
      activeAlertsBadge.classList.toggle('alert', meta.activeAlertsCount > 0);
    }

    const lastUpdateEl = document.getElementById('last-update-time');
    if (lastUpdateEl) {
      const d = new Date(meta.lastUpdate);
      lastUpdateEl.textContent = d.toLocaleTimeString('fr-FR');
    }

    const srcBadge = document.getElementById('source-type-badge');
    if (srcBadge) {
      srcBadge.textContent = meta.source;
      srcBadge.className = `source-badge ${meta.sourceType}`;
    }

    // 2. 4 KPI Cards
    const kpiTemp = document.getElementById('kpi-temp-val');
    const kpiAirHum = document.getElementById('kpi-airhum-val');
    const kpiSoilHum = document.getElementById('kpi-soilhum-val');
    const kpiLight = document.getElementById('kpi-light-val');

    if (kpiTemp) kpiTemp.textContent = z1.dht.ok ? z1.dht.temperature.toFixed(1) : '---';
    if (kpiAirHum) kpiAirHum.textContent = z1.dht.ok ? Math.round(z1.dht.humidity) : '---';
    if (kpiSoilHum) kpiSoilHum.textContent = z1.soil.percent;
    if (kpiLight) kpiLight.textContent = z1.light.raw;

    // Update KPI badges
    const tempBadge = document.getElementById('kpi-temp-badge');
    if (tempBadge) {
      const isDanger = z1.dht.ok && z1.dht.temperature >= 35.0;
      const isAlert = z1.dht.ok && z1.dht.temperature >= 30.0;
      tempBadge.textContent = isDanger ? 'Danger' : (isAlert ? 'Alerte' : 'Normal');
      tempBadge.className = `kpi-badge ${isDanger ? 'danger' : (isAlert ? 'alert' : 'normal')}`;
    }

    const soilBadge = document.getElementById('kpi-soil-badge');
    if (soilBadge) {
      soilBadge.textContent = z1.soil.danger ? 'Danger' : (z1.soil.dry ? 'Sec' : 'Humidifié');
      soilBadge.className = `kpi-badge ${z1.soil.danger ? 'danger' : (z1.soil.dry ? 'alert' : 'normal')}`;
    }

    // 3. Update Zone 1 Detailed Focus in Tab 2
    const z1SoilFocus = document.getElementById('zone1-soil-raw-focus');
    const z1TempFocus = document.getElementById('zone1-dht-temp-focus');
    const z1HumFocus = document.getElementById('zone1-dht-hum-focus');
    const z1LdrFocus = document.getElementById('zone1-ldr-focus');

    if (z1SoilFocus) z1SoilFocus.textContent = `${z1.soil.raw} ADC (${z1.soil.percent}%)`;
    if (z1TempFocus) z1TempFocus.textContent = z1.dht.ok ? `${z1.dht.temperature.toFixed(1)} °C` : 'Erreur DHT';
    if (z1HumFocus) z1HumFocus.textContent = z1.dht.ok ? `${Math.round(z1.dht.humidity)} % HR` : '---';
    if (z1LdrFocus) z1LdrFocus.textContent = `${z1.light.raw} ADC`;

    // 4. Update Reservoir Visuals
    window.HardwareComponents.updateReservoir(res);

    // 5. Hardware Components (LCD 16x4, 3 LEDs)
    window.HardwareComponents.updateLCD(z1.hardware.lcdLines);
    window.HardwareComponents.updateLEDs(z1.hardware.ledGreen, z1.hardware.ledYellow, z1.hardware.ledRed);

    // 6. Push data point to Analytics Engine
    window.FarmAnalytics.pushTelemetry(farmState);

    // 7. Render Alerts Journal
    renderAlertsTable(farmState.alertsHistory);
  }

  function renderAlertsTable(alerts) {
    const tbody = document.getElementById('alerts-table-body');
    if (!tbody) return;

    if (!alerts || alerts.length === 0) {
      tbody.innerHTML = `
        <tr>
          <td colspan="5" style="text-align: center; padding: 30px; color: var(--text-muted)">
            <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" style="margin-bottom:8px; opacity:0.6;"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
            <div>Aucune alerte active sur la Zone 1. Les conditions sont optimales.</div>
          </td>
        </tr>
      `;
      return;
    }

    tbody.innerHTML = alerts.map(a => `
      <tr>
        <td><strong>${a.timeStr}</strong></td>
        <td><span class="brand-badge">${a.zone}</span></td>
        <td><span class="kpi-badge ${a.severity === 'DANGER' ? 'danger' : 'alert'}">${a.severity}</span></td>
        <td><code>${a.message}</code></td>
        <td>
          <button class="btn btn-secondary" style="padding: 4px 8px; font-size: 0.72rem;">Acquitter</button>
        </td>
      </tr>
    `).join('');
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initApp);
  } else {
    initApp();
  }

})();
