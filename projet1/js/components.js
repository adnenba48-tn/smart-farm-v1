/**
 * ============================================================================
 * SMART FARM 1 — HARDWARE COMPONENTS & VISUALIZERS (components.js)
 * Zone 1 Dedicated Architecture:
 * - LiquidCrystal LCD 16x4 (Mode 4-bit)
 * - 3 Physical LEDs (Green GPIO 19, Yellow GPIO 21, Red GPIO 22)
 * - Shared Water Tank & HC-SR04 Ultrasonic Sensor
 * (Buzzer removed according to user hardware specification)
 * ============================================================================
 */

(function (window) {
  'use strict';

  class HardwareComponentsManager {
    constructor() {
      // Hardware state
    }

    /**
     * Update LCD 16x4 display lines
     */
    updateLCD(lines) {
      if (!Array.isArray(lines)) return;
      for (let i = 0; i < 4; i++) {
        const lineEl = document.getElementById(`lcd-line-${i}`);
        if (lineEl) {
          const text = (lines[i] || '').padEnd(16, ' ').slice(0, 16);
          lineEl.textContent = text;
        }
      }
    }

    /**
     * Update Physical LED indicators (Green, Yellow, Red)
     */
    updateLEDs(green, yellow, red) {
      const ledG = document.getElementById('hw-led-green');
      const ledY = document.getElementById('hw-led-yellow');
      const ledR = document.getElementById('hw-led-red');

      if (ledG) ledG.classList.toggle('lit', !!green);
      if (ledY) ledY.classList.toggle('lit', !!yellow);
      if (ledR) ledR.classList.toggle('lit', !!red);

      // Mini dots across UI
      document.querySelectorAll('.hw-led-dot.green').forEach(el => el.classList.toggle('lit', !!green));
      document.querySelectorAll('.hw-led-dot.yellow').forEach(el => el.classList.toggle('lit', !!yellow));
      document.querySelectorAll('.hw-led-dot.red').forEach(el => el.classList.toggle('lit', !!red));
    }

    /**
     * Update Shared Water Tank & Ultrasonic Sensor
     */
    updateReservoir(resData) {
      const waterEl = document.getElementById('tank-water-level');
      const percentEl = document.getElementById('tank-percent-label');
      const volumeEl = document.getElementById('tank-volume-label');
      const percentBig = document.getElementById('tank-percent-big');
      const litersBig = document.getElementById('tank-liters-big');
      const volumeTile = document.getElementById('tank-volume-tile');
      const sidePct = document.getElementById('reservoir-side-pct');
      const distEl = document.getElementById('tank-distance-val');
      const heightEl = document.getElementById('tank-height-val');
      const protectEl = document.getElementById('pump-protection-status');

      const pct = resData.waterLevelPercent;

      if (waterEl) {
        waterEl.style.height = `${pct}%`;
        waterEl.classList.toggle('critical', pct < 20);
        waterEl.classList.toggle('warning', pct >= 20 && pct < 40);
      }

      if (percentEl) percentEl.textContent = `${pct}%`;
      if (percentBig) percentBig.textContent = `${pct}%`;
      if (sidePct) sidePct.textContent = `${pct}%`;
      if (volumeEl) volumeEl.textContent = `${resData.volumeLiters.toLocaleString('fr-FR')} L disponibles`;
      if (litersBig) litersBig.textContent = `${resData.volumeLiters.toLocaleString('fr-FR')} L`;
      if (volumeTile) volumeTile.textContent = `${resData.volumeLiters.toLocaleString('fr-FR')} L`;
      if (distEl) distEl.textContent = `${resData.distanceCm} cm`;
      if (heightEl) heightEl.textContent = `${resData.waterLevelCm} cm`;

      if (protectEl) {
        protectEl.classList.toggle('triggered', resData.isPumpProtected);
        if (resData.isPumpProtected) {
          protectEl.innerHTML = `
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/></svg>
            <div>
              <strong>Sécurité Activée : Pompe Verrouillée</strong>
              <div style="font-size:0.75rem; opacity:0.85">Niveau critique (&lt; 20%) — Protection contre la marche à sec activée.</div>
            </div>
          `;
        } else {
          protectEl.innerHTML = `
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
            <div>
              <strong>Pompe d'Irrigation Opérationnelle</strong>
              <div style="font-size:0.75rem; opacity:0.85">Niveau suffisant pour les cycles d'arrosage automatique de la Zone 1.</div>
            </div>
          `;
        }
      }
    }

    /**
     * Toast notification display
     */
    showToast(message, type = 'info') {
      const container = document.getElementById('toast-container');
      if (!container) return;

      const toast = document.createElement('div');
      toast.className = `toast-item ${type}`;
      toast.style.cssText = `
        background: var(--bg-card-elevated);
        border: 1px solid var(--border-card);
        border-left: 4px solid ${type === 'danger' ? 'var(--color-danger)' : (type === 'warning' ? 'var(--color-alert)' : 'var(--color-sage-400)')};
        padding: 12px 18px;
        border-radius: var(--radius-sm);
        box-shadow: var(--shadow-lg);
        display: flex;
        align-items: center;
        gap: 12px;
        font-size: 0.85rem;
        font-weight: 600;
        margin-bottom: 8px;
        animation: fadeIn 0.25s ease;
      `;
      toast.innerHTML = message;

      container.appendChild(toast);
      setTimeout(() => {
        toast.style.opacity = '0';
        toast.style.transition = 'opacity 0.3s ease';
        setTimeout(() => toast.remove(), 300);
      }, 4000);
    }
  }

  window.HardwareComponents = new HardwareComponentsManager();

})(window);
