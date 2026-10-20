/**
 * ============================================================================
 * SMART FARM 1 — IOT INTEGRATION MODULE (integration.js)
 * Dedicated Single-Zone Architecture (Zone 1 — Serre Maraîchère)
 * Compliant with smart_farm_zone1.ino & LogicBench ESP32 telemetry.
 * (Buzzer removed as per user hardware specification)
 * ============================================================================
 */

(function (window) {
  'use strict';

  // System Configuration Defaults (matching smart_farm_zone1.ino)
  const CONFIG = {
    // Thresholds
    TEMP_ALERT: 30.0,
    TEMP_DANGER: 35.0,
    HUM_LOW: 30.0,
    HUM_HIGH: 80.0,
    SOIL_DRY: 2800,       // LogicBench dry threshold (or 3800)
    SOIL_DANGER: 3500,    // LogicBench danger threshold (or 4000)
    SOIL_RAW_DRY: 3500,   // Calibration dry reference
    SOIL_RAW_WET: 1200,   // Calibration wet reference
    LDR_LOW: 1000,
    USE_LDR_ALERT: false,

    // Reservoir HC-SR04 Tank parameters
    TANK_HEIGHT_CM: 200,      // Total tank depth
    TANK_MAX_VOLUME_L: 5000,  // Max volume in Liters
    RESERVOIR_CRITICAL_PCT: 20, // Critical threshold for dry pump cutoff

    // Timing
    READ_INTERVAL_MS: 2500,
    SERIAL_BAUD_RATE: 115200
  };

  // System State Enums
  const STATE = {
    NORMAL: 0,
    ALERT: 1,
    DANGER: 2
  };

  class SmartFarmIntegration {
    constructor() {
      this.mode = 'simulated'; // 'simulated' | 'serial' | 'pending'
      this.activeScenario = 'normal';
      this.timerId = null;
      this.listeners = [];
      this.serialPort = null;
      this.serialReader = null;
      this.isReadingSerial = false;
      this.rawSerialBuffer = '';
      this.consoleLogs = [];

      // Current Farm State (Zone 1 Dedicated Focus)
      this.state = {
        meta: {
          projectName: 'Smart Farm 1',
          subtitle: 'Intelligent Agricultural Monitoring & Precision IoT',
          version: '2.0.0-Zone1',
          institution: 'ISIMA Mahdia',
          authors: 'Adnen Ben Abdallah & Mariem Halouini',
          source: 'DEMO / SIMULATION LOGICBENCH',
          sourceType: 'simulated',
          controlMode: 'auto',     // 'manual' | 'auto' | 'ai'
          lastUpdate: new Date().toISOString(),
          activeAlertsCount: 0,
          systemGlobalState: STATE.NORMAL
        },
        zone1: {
          id: 'zone-1',
          name: 'Zone 1 — Serre Maraîchère Principale',
          type: 'Culture sous abri (Tomates & Poivrons)',
          isHardwarePrototype: true,
          status: STATE.NORMAL,
          dht: {
            ok: true,
            temperature: 24.5,
            humidity: 58.0,
            failCount: 0
          },
          soil: {
            raw: 2150,
            percent: 58,
            dry: false,
            danger: false
          },
          light: {
            raw: 1850,
            low: false
          },
          hardware: {
            ledGreen: true,
            ledYellow: false,
            ledRed: false,
            lcdLines: [
              'SMART FARM ZONE1',
              'T:24.5C H:58%',
              'Soil: 2150',
              'STATE: NORMAL'
            ]
          },
          irrigation: {
            active: false,
            cyclesCount: 14,
            todayDurationMin: 42
          },
          causes: []
        },
        reservoir: {
          sensorType: 'HC-SR04 Ultrasonic',
          tankHeightCm: CONFIG.TANK_HEIGHT_CM,
          distanceCm: 50,
          waterLevelCm: 150,
          waterLevelPercent: 75,
          volumeLiters: 3750,
          maxVolumeLiters: CONFIG.TANK_MAX_VOLUME_L,
          isPumpProtected: false,
          pumpRunning: false,
          status: 'NORMAL'
        },
        alertsHistory: []
      };

      // Initial state calculation & simulation loop
      this.recalculateAllStates();
      this.startSimulation();
    }

    onData(callback) {
      if (typeof callback === 'function') {
        this.listeners.push(callback);
        callback(this.state);
      }
    }

    notifyListeners() {
      this.state.meta.lastUpdate = new Date().toISOString();
      this.listeners.forEach(cb => {
        try {
          cb(this.state);
        } catch (e) {
          console.error('Error in integration listener:', e);
        }
      });
    }

    startSimulation() {
      if (this.timerId) clearInterval(this.timerId);

      this.timerId = setInterval(() => {
        if (this.mode === 'simulated') {
          this.tickSimulation();
        }
      }, CONFIG.READ_INTERVAL_MS);
    }

    /**
     * Apply predefined simulation scenarios for Zone 1 demonstration
     */
    setScenario(scenarioKey) {
      this.activeScenario = scenarioKey;
      const z1 = this.state.zone1;
      const res = this.state.reservoir;

      switch (scenarioKey) {
        case 'normal':
          z1.dht.ok = true;
          z1.dht.temperature = 24.2 + (Math.random() * 1.2 - 0.6);
          z1.dht.humidity = 58.0 + (Math.random() * 3 - 1.5);
          z1.soil.raw = 2100 + Math.floor(Math.random() * 80);
          z1.light.raw = 1900 + Math.floor(Math.random() * 100);
          res.distanceCm = 48;
          break;

        case 'dry_soil':
          z1.dht.ok = true;
          z1.dht.temperature = 29.5;
          z1.dht.humidity = 38.0;
          z1.soil.raw = CONFIG.SOIL_DRY + 180; // Triggers SOL sec
          z1.light.raw = 2200;
          res.distanceCm = 85;
          break;

        case 'heatwave_danger':
          z1.dht.ok = true;
          z1.dht.temperature = 36.8; // TEMP >= danger (35.0)
          z1.dht.humidity = 22.0;    // HUM < low (30.0)
          z1.soil.raw = CONFIG.SOIL_DANGER + 250; // SOL >= danger (3500)
          z1.light.raw = 3200;
          res.distanceCm = 155;
          break;

        case 'low_light':
          z1.dht.ok = true;
          z1.dht.temperature = 20.4;
          z1.dht.humidity = 64.0;
          z1.soil.raw = 2200;
          z1.light.raw = 450; // LDR < 1000
          break;

        case 'dht_failure':
          z1.dht.ok = false;
          z1.dht.failCount++;
          break;

        case 'reservoir_critical':
          res.distanceCm = 175; // Level 25cm (12.5% < 20%)
          break;
      }

      this.recalculateAllStates();
      this.generateSerialStreamFrame();
      this.notifyListeners();
    }

    calculateSoilPercent(raw) {
      let p = Math.round(((raw - CONFIG.SOIL_RAW_DRY) / (CONFIG.SOIL_RAW_WET - CONFIG.SOIL_RAW_DRY)) * 100);
      if (p < 0) p = 0;
      if (p > 100) p = 100;
      return p;
    }

    /**
     * LogicBench firmware state calculation (Zone 1 only, 3 LEDs)
     */
    recalculateAllStates() {
      const z1 = this.state.zone1;
      const res = this.state.reservoir;

      // 1. Zone 1 Sensors Evaluation
      z1.soil.percent = this.calculateSoilPercent(z1.soil.raw);
      z1.causes = [];

      let tDanger = false;
      let tAlert = false;
      let hLow = false;
      let hHigh = false;

      if (z1.dht.ok) {
        tDanger = (z1.dht.temperature >= CONFIG.TEMP_DANGER);
        tAlert  = (z1.dht.temperature >= CONFIG.TEMP_ALERT);
        hLow    = (z1.dht.humidity < CONFIG.HUM_LOW);
        hHigh   = (z1.dht.humidity > CONFIG.HUM_HIGH);
      }

      const sDanger  = (z1.soil.raw >= CONFIG.SOIL_DANGER);
      const sDry     = (z1.soil.raw >= CONFIG.SOIL_DRY);
      const lLow     = (z1.light.raw < CONFIG.LDR_LOW);
      const dhtFault = !z1.dht.ok;

      z1.soil.dry = sDry;
      z1.soil.danger = sDanger;
      z1.light.low = lLow;

      if (tDanger) z1.causes.push('TEMP>=danger');
      else if (tAlert) z1.causes.push('TEMP>=alerte');

      if (sDanger) z1.causes.push('SOL>=danger');
      else if (sDry) z1.causes.push('SOL sec');

      if (lLow) z1.causes.push('LUMIERE faible');
      if (hLow) z1.causes.push('AIR trop sec');
      if (hHigh) z1.causes.push('AIR trop humide');
      if (dhtFault) z1.causes.push('DHT22 en panne');

      // State determination: Normal, Alert, Danger
      if (tDanger || sDanger) {
        z1.status = STATE.DANGER;
      } else if (tAlert || sDry || (CONFIG.USE_LDR_ALERT && lLow) || hLow || hHigh || dhtFault) {
        z1.status = STATE.ALERT;
      } else {
        z1.status = STATE.NORMAL;
      }

      // Outputs: Green LED (Normal), Yellow LED (Alert), Red LED (Danger)
      z1.hardware.ledGreen  = (z1.status === STATE.NORMAL);
      z1.hardware.ledYellow = (z1.status === STATE.ALERT);
      z1.hardware.ledRed    = (z1.status === STATE.DANGER);

      // LCD 16x4 formatting
      const stateStr = z1.status === STATE.NORMAL ? 'STATE: NORMAL' : (z1.status === STATE.ALERT ? 'STATE: ALERT' : 'STATE: DANGER');
      const dhtLine = z1.dht.ok 
        ? `T:${z1.dht.temperature.toFixed(1)}C H:${Math.round(z1.dht.humidity)}%` 
        : 'DHT22 READ ERROR';
      
      z1.hardware.lcdLines = [
        'SMART FARM ZONE1'.padEnd(16, ' '),
        dhtLine.padEnd(16, ' '),
        `Soil: ${z1.soil.raw}`.padEnd(16, ' '),
        stateStr.padEnd(16, ' ')
      ];

      // 2. Reservoir HC-SR04 calculations
      res.waterLevelCm = Math.max(0, CONFIG.TANK_HEIGHT_CM - res.distanceCm);
      res.waterLevelPercent = Math.min(100, Math.max(0, Math.round((res.waterLevelCm / CONFIG.TANK_HEIGHT_CM) * 100)));
      res.volumeLiters = Math.round((res.waterLevelPercent / 100) * CONFIG.TANK_MAX_VOLUME_L);

      if (res.waterLevelPercent < CONFIG.RESERVOIR_CRITICAL_PCT) {
        res.status = 'CRITICAL';
        res.isPumpProtected = true;
        res.pumpRunning = false;
      } else if (res.waterLevelPercent < 35) {
        res.status = 'WARNING';
        res.isPumpProtected = false;
      } else {
        res.status = 'NORMAL';
        res.isPumpProtected = false;
      }

      // 3. Global Status reflects Zone 1 directly
      this.state.meta.systemGlobalState = z1.status;

      let alerts = 0;
      if (z1.status !== STATE.NORMAL) alerts += z1.causes.length;
      if (res.status === 'CRITICAL') alerts += 1;
      this.state.meta.activeAlertsCount = alerts;

      if (z1.status !== STATE.NORMAL && z1.causes.length > 0) {
        this.addAlertHistoryEntry('Zone 1', z1.status, z1.causes.join(', '));
      }
    }

    addAlertHistoryEntry(zone, severity, message) {
      const now = new Date();
      const timeStr = now.toLocaleTimeString('fr-FR', { hour: '2-digit', minute: '2-digit', second: '2-digit' });
      
      const last = this.state.alertsHistory[0];
      if (last && last.message === message && (now - last.timestamp) < 15000) {
        return;
      }

      this.state.alertsHistory.unshift({
        id: 'alt-' + Date.now(),
        timestamp: now,
        timeStr: timeStr,
        zone: zone,
        severity: severity === STATE.DANGER ? 'DANGER' : 'ALERTE',
        message: message,
        acknowledged: false
      });

      if (this.state.alertsHistory.length > 30) {
        this.state.alertsHistory.pop();
      }
    }

    generateSerialStreamFrame() {
      const z1 = this.state.zone1;
      const stateName = z1.status === STATE.NORMAL ? 'NORMAL' : (z1.status === STATE.ALERT ? 'ALERTE' : 'DANGER');
      const causesStr = z1.causes.length > 0 ? z1.causes.join('; ') + '; ' : 'aucune';

      const lines = [
        '--------------------------------------',
        z1.dht.ok ? `Temperature : ${z1.dht.temperature.toFixed(1)} C` : 'ERREUR DHT22 : lecture invalide',
        z1.dht.ok ? `Humidite air: ${z1.dht.humidity.toFixed(1)} %` : 'Humidite air: --- (non disponible)',
        `Sol  : brut=${z1.soil.raw} (${z1.soil.percent} %)${z1.soil.danger ? '  [DANGER]' : (z1.soil.dry ? '  [SEC]' : '')}`,
        `LDR  : brut=${z1.light.raw}${z1.light.low ? '  [LUMIERE FAIBLE]' : ''}`,
        `Causes : ${causesStr}`,
        `ETAT : ${stateName} | V=${z1.hardware.ledGreen ? 1 : 0} J=${z1.hardware.ledYellow ? 1 : 0} R=${z1.hardware.ledRed ? 1 : 0}`
      ];

      lines.forEach(l => this.appendConsoleLog(l));
    }

    appendConsoleLog(line) {
      this.consoleLogs.push(line);
      if (this.consoleLogs.length > 150) this.consoleLogs.shift();
      if (typeof window.onSerialLine === 'function') {
        window.onSerialLine(line);
      }
    }

    tickSimulation() {
      const z1 = this.state.zone1;
      if (this.activeScenario === 'normal') {
        z1.dht.temperature += (Math.random() - 0.5) * 0.15;
        z1.dht.humidity += (Math.random() - 0.5) * 0.3;
        z1.soil.raw += Math.round((Math.random() - 0.48) * 8);
        z1.light.raw += Math.round((Math.random() - 0.5) * 15);
      }
      this.recalculateAllStates();
      this.generateSerialStreamFrame();
      this.notifyListeners();
    }

    async connectWebSerial() {
      if (!('serial' in navigator)) {
        throw new Error("L'API Web Serial n'est pas supportée par ce navigateur. Utilisez Chrome ou Edge.");
      }

      try {
        this.serialPort = await navigator.serial.requestPort();
        await this.serialPort.open({ baudRate: CONFIG.SERIAL_BAUD_RATE });
        
        this.mode = 'serial';
        this.state.meta.sourceType = 'serial';
        this.state.meta.source = 'ESP32 DIRECT SERIAL (115200 bauds)';
        this.isReadingSerial = true;
        this.readSerialLoop();
        this.notifyListeners();
        return true;
      } catch (err) {
        console.error('Serial connection failed:', err);
        throw err;
      }
    }

    async readSerialLoop() {
      const textDecoder = new TextDecoderStream();
      const readableStreamClosed = this.serialPort.readable.pipeTo(textDecoder.writable);
      const reader = textDecoder.readable.getReader();
      this.serialReader = reader;

      try {
        while (this.isReadingSerial) {
          const { value, done } = await reader.read();
          if (done) break;
          if (value) {
            this.rawSerialBuffer += value;
            const lines = this.rawSerialBuffer.split('\n');
            this.rawSerialBuffer = lines.pop();
            lines.forEach(l => {
              const clean = l.trim();
              if (clean.length > 0) {
                this.appendConsoleLog(clean);
                this.parseSerialLine(clean);
              }
            });
          }
        }
      } catch (error) {
        console.error('Serial reading error:', error);
      } finally {
        reader.releaseLock();
      }
    }

    parseSerialLine(line) {
      const z1 = this.state.zone1;

      if (line.includes('Temperature :')) {
        const m = line.match(/Temperature\s*:\s*([\d.]+)/i);
        if (m) {
          z1.dht.temperature = parseFloat(m[1]);
          z1.dht.ok = true;
        }
      } else if (line.includes('Humidite air:')) {
        const m = line.match(/Humidite\s*air\s*:\s*([\d.]+)/i);
        if (m) z1.dht.humidity = parseFloat(m[1]);
      } else if (line.includes('Sol  : brut=')) {
        const m = line.match(/brut=(\d+)/i);
        if (m) z1.soil.raw = parseInt(m[1], 10);
      } else if (line.includes('LDR  : brut=')) {
        const m = line.match(/brut=(\d+)/i);
        if (m) z1.light.raw = parseInt(m[1], 10);
      }

      this.recalculateAllStates();
      this.notifyListeners();
    }

    async sendSerialCommand(cmdChar) {
      this.appendConsoleLog(`>>> [CMD ENVOYÉE]: ${cmdChar}`);
      if (this.serialPort && this.serialPort.writable) {
        const writer = this.serialPort.writable.getWriter();
        const encoder = new TextEncoder();
        await writer.write(encoder.encode(cmdChar));
        writer.releaseLock();
      } else {
        if (cmdChar.toLowerCase() === 'c') {
          this.appendConsoleLog(">>> MODE CALIBRATION SIMULÉ ON/OFF");
        }
      }
    }

    updateConfig(newConfig) {
      Object.assign(CONFIG, newConfig);
      this.recalculateAllStates();
      this.notifyListeners();
    }

    getConfig() {
      return Object.assign({}, CONFIG);
    }
  }

  window.SmartFarmIntegration = new SmartFarmIntegration();

})(window);
