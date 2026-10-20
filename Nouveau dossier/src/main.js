const canvas = document.querySelector("#game-canvas");
const ctx = canvas.getContext("2d");
ctx.imageSmoothingEnabled = false;

const TILE = 32;
const WORLD = { width: 100, height: 72 };
const keys = new Set();
const state = {
  paused: false,
  lastTime: 0,
  worldTime: 8 * 60,
  noticeUntil: 0,
  player: { x: 18 * TILE + 16, y: 35 * TILE + 16, radius: 10, speed: 128, health: 100, stamina: 100, hunger: 82, thirst: 76, facing: "down" },
  camera: { x: 0, y: 0 },
  obstacles: [],
  landmarks: [
    { x: 18 * TILE, y: 35 * TILE, w: 5 * TILE, h: 4 * TILE, label: "ABRI DES SURVIVANTS", color: "#787d68" },
    { x: 67 * TILE, y: 18 * TILE, w: 6 * TILE, h: 5 * TILE, label: "CHECKPOINT 07", color: "#71685e" },
    { x: 79 * TILE, y: 51 * TILE, w: 7 * TILE, h: 6 * TILE, label: "SITE DU CRASH", color: "#596b78" }
  ],
  resources: [],
};

const ui = {
  pause: document.querySelector("#pause-panel"),
  notice: document.querySelector("#notification"),
  resume: document.querySelector("#resume-button"),
  objective: document.querySelector("#objective"),
  zone: document.querySelector("#zone-name"),
  time: document.querySelector("#time-of-day"),
};

function hash(x, y) {
  const value = Math.sin(x * 12.9898 + y * 78.233) * 43758.5453;
  return value - Math.floor(value);
}

function buildWorld() {
  for (let y = 0; y < WORLD.height; y += 1) {
    for (let x = 0; x < WORLD.width; x += 1) {
      const n = hash(x, y);
      if ((n > 0.72 && x > 4 && y > 4) || (x % 17 === 0 && y % 11 < 5)) {
        state.obstacles.push({ x: x * TILE + 3, y: y * TILE + 3, w: TILE - 6, h: TILE - 6, type: n > 0.86 ? "tree" : "rubble" });
      }
      if (n > 0.93 && x > 3 && y > 3) state.resources.push({ x: x * TILE + 16, y: y * TILE + 16, collected: false });
    }
  }
  // Keep the starting route and landmarks reachable.
  state.obstacles = state.obstacles.filter((o) => !state.landmarks.some((l) => o.x < l.x + l.w && o.x + o.w > l.x && o.y < l.y + l.h && o.y + o.h > l.y));
}

function collides(x, y) {
  const p = { x: x - state.player.radius, y: y - state.player.radius, w: state.player.radius * 2, h: state.player.radius * 2 };
  return state.obstacles.some((o) => p.x < o.x + o.w && p.x + p.w > o.x && p.y < o.y + o.h && p.y + p.h > o.y);
}

function update(dt) {
  if (state.paused) return;
  const p = state.player;
  let dx = 0; let dy = 0;
  if (keys.has("w") || keys.has("arrowup")) dy -= 1;
  if (keys.has("s") || keys.has("arrowdown")) dy += 1;
  if (keys.has("a") || keys.has("arrowleft")) dx -= 1;
  if (keys.has("d") || keys.has("arrowright")) dx += 1;
  const sprinting = keys.has("shift") && (dx || dy) && p.stamina > 0;
  const length = Math.hypot(dx, dy) || 1;
  const speed = p.speed * (sprinting ? 1.65 : 1);
  if (dx || dy) {
    dx = (dx / length) * speed * dt; dy = (dy / length) * speed * dt;
    if (Math.abs(dx) > Math.abs(dy)) p.facing = dx > 0 ? "right" : "left";
    else p.facing = dy > 0 ? "down" : "up";
    if (!collides(p.x + dx, p.y)) p.x += dx;
    if (!collides(p.x, p.y + dy)) p.y += dy;
  }
  p.x = Math.max(18, Math.min(WORLD.width * TILE - 18, p.x));
  p.y = Math.max(18, Math.min(WORLD.height * TILE - 18, p.y));
  p.stamina = Math.max(0, Math.min(100, p.stamina + (sprinting ? -27 : 18) * dt));
  p.hunger = Math.max(0, p.hunger - dt * 0.12);
  p.thirst = Math.max(0, p.thirst - dt * 0.18);
  state.worldTime = (state.worldTime + dt * 0.35) % (24 * 60);
  state.camera.x += (p.x - canvas.width / 2 - state.camera.x) * Math.min(1, dt * 7);
  state.camera.y += (p.y - canvas.height / 2 - state.camera.y) * Math.min(1, dt * 7);
}

function drawWorld() {
  const startX = Math.floor(state.camera.x / TILE) - 1;
  const startY = Math.floor(state.camera.y / TILE) - 1;
  const endX = startX + Math.ceil(canvas.width / TILE) + 2;
  const endY = startY + Math.ceil(canvas.height / TILE) + 2;
  ctx.fillStyle = "#28302b"; ctx.fillRect(0, 0, canvas.width, canvas.height);
  for (let y = startY; y < endY; y += 1) for (let x = startX; x < endX; x += 1) {
    if (x < 0 || y < 0 || x >= WORLD.width || y >= WORLD.height) continue;
    const sx = x * TILE - state.camera.x; const sy = y * TILE - state.camera.y;
    const n = hash(x, y);
    ctx.fillStyle = n > .82 ? "#303933" : n > .45 ? "#2a332e" : "#27302b";
    ctx.fillRect(sx, sy, TILE, TILE);
    ctx.strokeStyle = "#354038"; ctx.lineWidth = 1; ctx.strokeRect(sx, sy, TILE, TILE);
    if (n > .88) { ctx.fillStyle = "#566052"; ctx.fillRect(sx + 7, sy + 9, 2, 2); ctx.fillRect(sx + 21, sy + 19, 2, 2); }
  }
  state.landmarks.forEach((l) => {
    const x = l.x - state.camera.x; const y = l.y - state.camera.y;
    ctx.fillStyle = l.color; ctx.fillRect(x, y, l.w, l.h);
    ctx.strokeStyle = "#aaa28b"; ctx.strokeRect(x + 2, y + 2, l.w - 4, l.h - 4);
    ctx.fillStyle = "#1c2421"; ctx.fillRect(x + l.w * .35, y + l.h - 10, l.w * .3, 10);
    ctx.fillStyle = "#d7d0b7"; ctx.font = "10px monospace"; ctx.fillText(l.label, x, y - 6);
  });
  state.obstacles.forEach((o) => {
    if (o.x - state.camera.x < -40 || o.y - state.camera.y < -40 || o.x - state.camera.x > canvas.width + 40 || o.y - state.camera.y > canvas.height + 40) return;
    const x = o.x - state.camera.x; const y = o.y - state.camera.y;
    ctx.fillStyle = o.type === "tree" ? "#1b2924" : "#4a4e48"; ctx.fillRect(x, y, o.w, o.h);
    ctx.fillStyle = o.type === "tree" ? "#52634a" : "#737064"; ctx.fillRect(x + 5, y + 4, o.w - 10, o.h - 12);
  });
  state.resources.forEach((r) => {
    if (!r.collected) { ctx.fillStyle = "#c3a960"; ctx.fillRect(r.x - state.camera.x - 4, r.y - state.camera.y - 4, 8, 8); }
  });
}

function drawPlayer() {
  const p = state.player; const x = Math.round(p.x - state.camera.x); const y = Math.round(p.y - state.camera.y);
  ctx.fillStyle = "#111514"; ctx.fillRect(x - 10, y - 8, 20, 22);
  ctx.fillStyle = "#252d2b"; ctx.fillRect(x - 8, y - 4, 16, 16);
  ctx.fillStyle = "#a88e76"; ctx.fillRect(x - 6, y - 14, 12, 10);
  ctx.fillStyle = "#191d1b"; ctx.fillRect(x - 7, y - 16, 14, 5);
  ctx.fillStyle = "#4a5350"; ctx.fillRect(x - 8, y + 12, 6, 6); ctx.fillRect(x + 2, y + 12, 6, 6);
  ctx.fillStyle = "#ad3e37"; ctx.fillRect(x + (p.facing === "left" ? -13 : 9), y - 1, 4, 8);
}

function render() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  drawWorld(); drawPlayer();
  const hours = Math.floor(state.worldTime / 60); const minutes = Math.floor(state.worldTime % 60);
  ui.time.textContent = `JOUR 01 · ${String(hours).padStart(2, "0")}:${String(minutes).padStart(2, "0")}`;
  ui.zone.textContent = state.player.x < 35 * TILE ? "SECTEUR DES RUINES" : "TERRES EXTÉRIEURES";
  [["health", state.player.health], ["stamina", state.player.stamina], ["hunger", state.player.hunger], ["thirst", state.player.thirst]].forEach(([name, value]) => {
    document.querySelector(`#${name}-bar`).style.width = `${value}%`;
    document.querySelector(`#${name}-value`).textContent = Math.round(value);
  });
}

function notify(message) {
  ui.notice.textContent = message; ui.notice.classList.add("show"); state.noticeUntil = performance.now() + 3000;
}
function togglePause() {
  state.paused = !state.paused; ui.pause.classList.toggle("hidden", !state.paused);
}
function interact() {
  const p = state.player;
  const resource = state.resources.find((r) => !r.collected && Math.hypot(r.x - p.x, r.y - p.y) < 34);
  if (resource) { resource.collected = true; notify("SCRAP MÉTALLIQUE AJOUTÉ À L'ÉQUIPEMENT"); return; }
  const base = state.landmarks[0];
  if (p.x > base.x && p.x < base.x + base.w && p.y > base.y && p.y < base.y + base.h) notify("ABRI SÉCURISÉ · Vous pouvez reprendre votre souffle ici.");
  else notify("Rien d'utile à proximité.");
}

window.addEventListener("keydown", (event) => {
  const key = event.key.toLowerCase();
  if (["arrowup", "arrowdown", "arrowleft", "arrowright", " "].includes(key)) event.preventDefault();
  if (key === "escape") togglePause();
  if (key === "e" && !event.repeat) interact();
  keys.add(key);
});
window.addEventListener("keyup", (event) => keys.delete(event.key.toLowerCase()));
ui.resume.addEventListener("click", togglePause);

function loop(timestamp) {
  const dt = Math.min(0.05, (timestamp - state.lastTime) / 1000 || 0);
  state.lastTime = timestamp; update(dt); render();
  if (state.noticeUntil && timestamp > state.noticeUntil) { ui.notice.classList.remove("show"); state.noticeUntil = 0; }
  requestAnimationFrame(loop);
}

buildWorld();
notify("OBJECTIF : Rejoignez l'abri des survivants.");
requestAnimationFrame(loop);
