/**
 * ============================================================================
 * SMART FARM 1 — ANALYTICS & TELEMETRY ENGINE (analytics.js)
 * Manages Chart.js interactive graphs, time-series history & CSV exports.
 * ============================================================================
 */

(function (window) {
  'use strict';

  class FarmAnalyticsManager {
    constructor() {
      this.history = {
        timestamps: [],
        temperature: [],
        humidity: [],
        soilRaw: [],
        soilPercent: [],
        lightRaw: [],
        reservoirLevel: []
      };

      this.maxDataPoints = 30;
      this.charts = {};
      this.chartTheme = 'dark';
    }

    initCharts() {
      if (typeof Chart === 'undefined') {
        console.warn('Chart.js not yet loaded, retrying shortly...');
        setTimeout(() => this.initCharts(), 500);
        return;
      }

      this.setupGlobalChartDefaults();
      this.createOverviewLiveChart();
      this.createSoilChart();
      this.createEnvironmentChart();
      this.createStateDistributionChart();
    }

    setupGlobalChartDefaults() {
      Chart.defaults.font.family = "'Plus Jakarta Sans', system-ui, sans-serif";
      Chart.defaults.color = this.chartTheme === 'dark' ? '#82a792' : '#5a7567';
      Chart.defaults.scale.grid.color = this.chartTheme === 'dark' ? 'rgba(240, 253, 244, 0.06)' : 'rgba(22, 58, 38, 0.06)';
      Chart.defaults.plugins.tooltip.padding = 10;
      Chart.defaults.plugins.tooltip.cornerRadius = 8;
    }

    setTheme(theme) {
      this.chartTheme = theme;
      this.setupGlobalChartDefaults();
      Object.values(this.charts).forEach(c => {
        if (c && typeof c.update === 'function') {
          c.update();
        }
      });
    }

    createOverviewLiveChart() {
      const ctx = document.getElementById('overviewLiveChart');
      if (!ctx) return;

      this.charts.overview = new Chart(ctx, {
        type: 'line',
        data: {
          labels: this.history.timestamps,
          datasets: [
            {
              label: 'Température (°C)',
              data: this.history.temperature,
              borderColor: '#f97316',
              backgroundColor: 'rgba(249, 115, 22, 0.1)',
              borderWidth: 2.5,
              tension: 0.35,
              fill: true,
              yAxisID: 'yTemp'
            },
            {
              label: 'Humidité Air (%)',
              data: this.history.humidity,
              borderColor: '#0ea5e9',
              backgroundColor: 'rgba(14, 165, 233, 0.08)',
              borderWidth: 2,
              borderDash: [4, 4],
              tension: 0.35,
              yAxisID: 'yPct'
            },
            {
              label: 'Humidité Sol (%)',
              data: this.history.soilPercent,
              borderColor: '#10b981',
              backgroundColor: 'rgba(16, 185, 129, 0.12)',
              borderWidth: 2.5,
              tension: 0.35,
              fill: true,
              yAxisID: 'yPct'
            }
          ]
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          interaction: { mode: 'index', intersect: false },
          scales: {
            x: {
              grid: { display: false },
              ticks: { maxTicksLimit: 8 }
            },
            yTemp: {
              type: 'linear',
              position: 'left',
              title: { display: true, text: 'Temp (°C)' },
              suggestedMin: 15,
              suggestedMax: 40
            },
            yPct: {
              type: 'linear',
              position: 'right',
              title: { display: true, text: 'Humidité (%)' },
              min: 0,
              max: 100,
              grid: { drawOnChartArea: false }
            }
          },
          plugins: {
            legend: {
              position: 'top',
              labels: { boxWidth: 14, usePointStyle: true }
            }
          }
        }
      });
    }

    createSoilChart() {
      const ctx = document.getElementById('soilAnalyticsChart');
      if (!ctx) return;

      this.charts.soil = new Chart(ctx, {
        type: 'line',
        data: {
          labels: this.history.timestamps,
          datasets: [
            {
              label: 'Sol Brut (ADC 12b)',
              data: this.history.soilRaw,
              borderColor: '#8b5cf6',
              backgroundColor: 'rgba(139, 92, 246, 0.1)',
              borderWidth: 2,
              tension: 0.25,
              yAxisID: 'yRaw'
            },
            {
              label: 'Seuil Sec (2800)',
              data: Array(this.maxDataPoints).fill(2800),
              borderColor: '#f59e0b',
              borderWidth: 1.5,
              borderDash: [6, 4],
              pointRadius: 0,
              yAxisID: 'yRaw'
            },
            {
              label: 'Seuil Danger (3500)',
              data: Array(this.maxDataPoints).fill(3500),
              borderColor: '#ef4444',
              borderWidth: 1.5,
              borderDash: [4, 4],
              pointRadius: 0,
              yAxisID: 'yRaw'
            }
          ]
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
            x: { grid: { display: false }, ticks: { maxTicksLimit: 6 } },
            yRaw: {
              min: 1000,
              max: 4095,
              title: { display: true, text: 'Valeur ADC (0-4095)' }
            }
          }
        }
      });
    }

    createEnvironmentChart() {
      const ctx = document.getElementById('envAnalyticsChart');
      if (!ctx) return;

      this.charts.env = new Chart(ctx, {
        type: 'line',
        data: {
          labels: this.history.timestamps,
          datasets: [
            {
              label: 'Luminosité LDR (brute)',
              data: this.history.lightRaw,
              borderColor: '#eab308',
              backgroundColor: 'rgba(234, 179, 8, 0.15)',
              borderWidth: 2,
              tension: 0.3,
              fill: true
            }
          ]
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          scales: {
            x: { grid: { display: false } },
            y: { min: 0, max: 4095, title: { display: true, text: 'Luminosité LDR' } }
          }
        }
      });
    }

    createStateDistributionChart() {
      const ctx = document.getElementById('stateDistributionChart');
      if (!ctx) return;

      this.charts.distribution = new Chart(ctx, {
        type: 'doughnut',
        data: {
          labels: ['NORMAL', 'ALERTE', 'DANGER'],
          datasets: [{
            data: [82, 14, 4],
            backgroundColor: ['#10b981', '#f59e0b', '#ef4444'],
            borderWidth: 2,
            borderColor: this.chartTheme === 'dark' ? '#0f271d' : '#ffffff'
          }]
        },
        options: {
          responsive: true,
          maintainAspectRatio: false,
          plugins: {
            legend: { position: 'bottom' }
          },
          cutout: '72%'
        }
      });
    }

    pushTelemetry(state) {
      const z1 = state.zone1;
      const res = state.reservoir;
      const now = new Date();
      const timeStr = now.toLocaleTimeString('fr-FR', { hour: '2-digit', minute: '2-digit', second: '2-digit' });

      // Append
      this.history.timestamps.push(timeStr);
      this.history.temperature.push(z1.dht.ok ? z1.dht.temperature : null);
      this.history.humidity.push(z1.dht.ok ? z1.dht.humidity : null);
      this.history.soilRaw.push(z1.soil.raw);
      this.history.soilPercent.push(z1.soil.percent);
      this.history.lightRaw.push(z1.light.raw);
      this.history.reservoirLevel.push(res.waterLevelPercent);

      // Truncate to window
      if (this.history.timestamps.length > this.maxDataPoints) {
        this.history.timestamps.shift();
        this.history.temperature.shift();
        this.history.humidity.shift();
        this.history.soilRaw.shift();
        this.history.soilPercent.shift();
        this.history.lightRaw.shift();
        this.history.reservoirLevel.shift();
      }

      // Update Chart objects
      if (this.charts.overview) this.charts.overview.update('none');
      if (this.charts.soil) this.charts.soil.update('none');
      if (this.charts.env) this.charts.env.update('none');
    }

    exportCSV() {
      const rows = [
        ['Timestamp', 'Temperature_C', 'Humidite_Air_Pct', 'Sol_Brut_ADC', 'Sol_Pct', 'LDR_Brut', 'Niveau_Cuve_Pct']
      ];

      for (let i = 0; i < this.history.timestamps.length; i++) {
        rows.push([
          this.history.timestamps[i],
          this.history.temperature[i],
          this.history.humidity[i],
          this.history.soilRaw[i],
          this.history.soilPercent[i],
          this.history.lightRaw[i],
          this.history.reservoirLevel[i]
        ]);
      }

      const csvContent = 'data:text/csv;charset=utf-8,' + rows.map(e => e.join(',')).join('\n');
      const encodedUri = encodeURI(csvContent);
      const link = document.createElement('a');
      link.setAttribute('href', encodedUri);
      link.setAttribute('download', `smart_farm_telemetry_${Date.now()}.csv`);
      document.body.appendChild(link);
      link.click();
      link.remove();
    }
  }

  window.FarmAnalytics = new FarmAnalyticsManager();

})(window);
