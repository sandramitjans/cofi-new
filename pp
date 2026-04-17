<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://www.cofidis.es/es/landing/ventajas-credito-directo.html"/>
<meta name="robots" content="noindex">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600;700&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet">

<style>
/* ── TOKENS ── */
:root {
  --bs-font-sans-serif: 'Titillium Web', sans-serif;
  --bs-body-font-family: 'Titillium Web', sans-serif;
  --bs-body-color: #1c1c1e;
  --bs-border-color: #e8e8e8;
  --cofidis-red:           #E2001A;
  --cofidis-red-dark:      #b8001a;
  --cofidis-salmon:        #F4846A;
  --cofidis-salmon-bg:     #fdf1ee;
  --cofidis-salmon-border: #fce4dd;
  --cofidis-cream:         #faf9f7;
  --cofidis-dark:          #141414;
  --section-py:            6rem;
}

* { font-family: 'Titillium Web', sans-serif; }

/* Solo headings en bold, body en 400 */
h1, h2, h3, h4, h5, h6 { font-weight: 700 !important; }
b, strong { font-weight: 600 !important; }
body { font-weight: 400; line-height: 1.7; }

/* ── BRAND UTILS ── */
.text-red    { color: var(--cofidis-red) !important; }
.text-salmon { color: var(--cofidis-salmon) !important; }
.bg-salmon   { background-color: var(--cofidis-salmon-bg) !important; }
.bg-cream    { background-color: var(--cofidis-cream) !important; }
.border-salmon { border-color: var(--cofidis-salmon-border) !important; }

/* ── BOTONES ── */
.btn-red {
  --bs-btn-bg: var(--cofidis-red);
  --bs-btn-border-color: var(--cofidis-red);
  --bs-btn-color: #fff;
  --bs-btn-hover-bg: var(--cofidis-red-dark);
  --bs-btn-hover-border-color: var(--cofidis-red-dark);
  --bs-btn-hover-color: #fff;
  --bs-btn-active-bg: #9a0016;
  --bs-btn-font-weight: 600;
  box-shadow: none;
  transition: background .2s, transform .15s;
}
.btn-red:hover { transform: translateY(-1px); }
.btn-red:focus-visible { box-shadow: 0 0 0 .25rem rgba(226,0,26,.35); }

.btn-outline-white {
  color: #fff;
  border: 1.5px solid rgba(255,255,255,.45);
  background: rgba(255,255,255,.08);
  font-weight: 600;
  backdrop-filter: blur(4px);
  transition: background .2s, border-color .2s, transform .15s;
}
.btn-outline-white:hover {
  background: rgba(255,255,255,.18);
  border-color: rgba(255,255,255,.7);
  color: #fff;
  transform: translateY(-1px);
}

/* ── HERO ── */
.hero {
  min-height: 88vh;
  background:
    linear-gradient(105deg,
      rgba(10,10,10,.92) 0%,
      rgba(10,10,10,.72) 45%,
      rgba(0,0,0,.15) 75%,
      transparent 100%),
    url('/es/img/landings/landing-cruzados/landing-rv-ventajas.jpg') center 30% / cover no-repeat;
  position: relative;
}
.hero::after {
  content: '';
  position: absolute;
  bottom: 0; left: 0; right: 0;
  height: 80px;
  background: linear-gradient(to top, #fff, transparent);
  pointer-events: none;
}
.hero-eyebrow {
  display: inline-flex;
  align-items: center;
  gap: .5rem;
  background: rgba(226,0,26,.15);
  border: 1px solid rgba(226,0,26,.3);
  color: #ff6b6b;
  font-size: .8rem;
  font-weight: 600;
  letter-spacing: .08em;
  text-transform: uppercase;
  padding: .35rem .85rem;
  border-radius: 2rem;
  backdrop-filter: blur(6px);
}
.hero-badge {
  display: inline-flex;
  align-items: center;
  gap: .4rem;
  background: rgba(255,255,255,.1);
  border: 1px solid rgba(255,255,255,.18);
  border-radius: 2rem;
  padding: .4rem 1rem;
  color: rgba(255,255,255,.85);
  font-size: .82rem;
  backdrop-filter: blur(6px);
}
.hero h1 {
  font-size: clamp(2.4rem, 5vw, 3.6rem);
  line-height: 1.1;
  letter-spacing: -.02em;
}
.hero-subtitle {
  font-size: 1.1rem;
  font-weight: 300;
  color: rgba(255,255,255,.8);
  line-height: 1.6;
}

/* ── SECCIÓN LABEL ── */
.section-eyebrow {
  display: inline-block;
  color: var(--cofidis-red);
  font-size: .78rem;
  font-weight: 700;
  letter-spacing: .1em;
  text-transform: uppercase;
  margin-bottom: .6rem;
}

/* ── VENTAJA CARDS ── */
.ventaja-card {
  border: 1px solid var(--bs-border-color);
  transition: transform .25s ease, box-shadow .25s ease, border-color .25s ease;
  position: relative;
  overflow: hidden;
}
.ventaja-card::before {
  content: '';
  position: absolute;
  top: 0; left: 0; right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--cofidis-red), var(--cofidis-salmon));
  transform: scaleX(0);
  transform-origin: left;
  transition: transform .3s ease;
}
.ventaja-card:hover {
  transform: translateY(-6px);
  box-shadow: 0 20px 48px rgba(0,0,0,.09) !important;
  border-color: var(--cofidis-salmon-border) !important;
}
.ventaja-card:hover::before { transform: scaleX(1); }

.ventaja-icon-wrap {
  width: 60px;
  height: 60px;
  background: var(--cofidis-salmon-bg);
  border: 1px solid var(--cofidis-salmon-border);
  border-radius: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.6rem;
  color: var(--cofidis-red);
}

/* ── STATS BAR ── */
.stats-bar {
  background: linear-gradient(135deg, var(--cofidis-dark) 0%, #2a1a1a 100%);
  border-radius: 1.5rem;
  padding: 3rem 2rem;
}
.stat-item {
  padding: 1.5rem 1rem;
  position: relative;
}
.stat-item + .stat-item::before {
  content: '';
  position: absolute;
  left: 0; top: 20%; bottom: 20%;
  width: 1px;
  background: rgba(255,255,255,.12);
}
.stat-number {
  font-size: clamp(2.4rem, 4vw, 3rem);
  font-weight: 700;
  color: var(--cofidis-salmon);
  line-height: 1;
  letter-spacing: -.03em;
}
.stat-label {
  color: rgba(255,255,255,.6);
  font-size: .88rem;
  margin-top: .4rem;
  line-height: 1.4;
}
.stat-stars { color: #fbbf24; font-size: .9rem; letter-spacing: .05em; }

/* ── PASOS ── */
.paso-number {
  width: 48px;
  height: 48px;
  min-width: 48px;
  background: var(--cofidis-red);
  color: #fff;
  font-size: 1.2rem;
  font-weight: 700;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  z-index: 1;
  flex-shrink: 0;
}
.paso-connector {
  position: absolute;
  left: 24px;
  top: 48px;
  bottom: -24px;
  width: 2px;
  background: linear-gradient(to bottom, rgba(226,0,26,.25), transparent);
}
.paso-item { position: relative; }
.paso-item:last-child .paso-connector { display: none; }
.paso-body h3 {
  font-size: 1rem;
  font-weight: 600 !important;
  margin-bottom: .3rem;
  color: var(--cofidis-dark);
}
.paso-body p {
  font-size: .9rem;
  color: #666;
  margin: 0;
  line-height: 1.6;
}

/* ── CTA FINAL ── */
.cta-box {
  background: linear-gradient(135deg, var(--cofidis-dark) 0%, #2a1c1c 100%);
  border-radius: 2rem;
  position: relative;
  overflow: hidden;
}
.cta-box::before {
  content: '';
  position: absolute;
  top: -60px; right: -60px;
  width: 300px; height: 300px;
  background: radial-gradient(circle, rgba(226,0,26,.15), transparent 70%);
  pointer-events: none;
}
.cta-box::after {
  content: '';
  position: absolute;
  bottom: -40px; left: -40px;
  width: 200px; height: 200px;
  background: radial-gradient(circle, rgba(244,132,106,.1), transparent 70%);
  pointer-events: none;
}

/* ── FLOATING BTN ── */
#floatBtn {
  transition: opacity .3s, transform .3s;
  opacity: 0;
  transform: translateY(12px);
  pointer-events: none;
  z-index: 999;
}
#floatBtn.show {
  opacity: 1;
  transform: none;
  pointer-events: all;
}

/* ── REVEAL ── */
.reveal {
  opacity: 0;
  transform: translateY(24px);
  transition: opacity .65s ease, transform .65s ease;
}
.reveal.in { opacity: 1; transform: none; }
.d1 { transition-delay: .1s; }
.d2 { transition-delay: .2s; }
.d3 { transition-delay: .3s; }
.d4 { transition-delay: .4s; }

/* ── RESPONSIVE ── */
@media (max-width: 768px) {
  .hero { min-height: 75vh; }
  :root { --section-py: 4rem; }
  .stat-item + .stat-item::before { display: none; }
  .stats-bar { border-radius: 1rem; padding: 2rem 1rem; }
  .paso-connector { display: none; }
}
</style>
</head>
<body>

<!-- ══════════ HERO ══════════ -->
<section class="hero d-flex align-items-center">
  <div class="container py-5" style="position:relative;z-index:1">
    <div class="row">
      <div class="col-lg-7 col-xl-6">
        <div class="hero-eyebrow mb-3 reveal">
          <i class="bi bi-lightning-charge-fill"></i>
          Préstamo Personal Cofidis
        </div>
        <h1 class="text-white mb-4 reveal d1">
          Da vida a todos<br>
          <span style="color:var(--cofidis-salmon)">tus proyectos</span>
        </h1>
        <p class="hero-subtitle mb-5 reveal d2" style="max-width:480px">
          Desde <strong style="color:#fff;font-weight:600">@IMPORTE_MIN_PP@</strong> hasta <strong style="color:#fff;font-weight:600">@IMPORTE_MAX_PP@ €</strong>.
          Solicítalo ahora y haz realidad tus ideas con una financiación a medida.
        </p>
        <div class="d-flex flex-wrap gap-3 mb-5 reveal d3">
          <a href="https://www.cofidis.es/es/identification/autentificacion.html"
             class="btn btn-red btn-lg rounded-3 px-4 py-3 d-flex align-items-center gap-2">
            <i class="bi bi-person-fill"></i> Mi Espacio Cliente
          </a>
          <a href="#ventajas"
             class="btn btn-outline-white btn-lg rounded-3 px-4 py-3 d-flex align-items-center gap-2">
            Ver ventajas <i class="bi bi-arrow-down"></i>
          </a>
        </div>
        <div class="d-flex flex-wrap gap-3 reveal d4">
          <span class="hero-badge"><i class="bi bi-shield-check-fill" style="color:var(--cofidis-salmon)"></i> 100% online y seguro</span>
          <span class="hero-badge"><i class="bi bi-clock-fill" style="color:var(--cofidis-salmon)"></i> Respuesta rápida</span>
          <span class="hero-badge"><i class="bi bi-award-fill" style="color:var(--cofidis-salmon)"></i> +2M de clientes</span>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ══════════ VENTAJAS ══════════ -->
<section class="py-5" id="ventajas" style="padding-top:var(--section-py);padding-bottom:var(--section-py)">
  <div class="container">
    <div class="text-center mb-5 reveal">
      <span class="section-eyebrow">Cofidis va contigo</span>
      <h2 class="display-5 mb-3">El préstamo que se adapta a ti</h2>
      <p class="text-muted mx-auto" style="max-width:480px;font-size:1.05rem">
        Soluciones perfectas para todas tus etapas, siempre con la máxima flexibilidad
      </p>
    </div>
    <div class="row g-4">

      <div class="col-md-6 col-lg-3 reveal d1">
        <div class="ventaja-card card h-100 rounded-4 p-4 bg-white border">
          <div class="ventaja-icon-wrap mb-3">
            <i class="bi bi-headset"></i>
          </div>
          <h5 class="mb-2" style="font-size:1rem">Atención personalizada y cercana</h5>
          <p class="text-muted mb-0" style="font-size:.88rem;line-height:1.65">
            Nuestro equipo de asesores te ayuda a elegir la mejor opción de financiación para ti
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-3 reveal d2">
        <div class="ventaja-card card h-100 rounded-4 p-4 bg-white border">
          <div class="ventaja-icon-wrap mb-3">
            <i class="bi bi-shield-lock-fill"></i>
          </div>
          <h5 class="mb-2" style="font-size:1rem">Seguridad y tecnología avanzada</h5>
          <p class="text-muted mb-0" style="font-size:.88rem;line-height:1.65">
            Proceso digital 100% seguro. Tus datos protegidos con los más altos estándares de ciberseguridad
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-3 reveal d3">
        <div class="ventaja-card card h-100 rounded-4 p-4 bg-white border">
          <div class="ventaja-icon-wrap mb-3">
            <i class="bi bi-eye-fill"></i>
          </div>
          <h5 class="mb-2" style="font-size:1rem">Transparencia total en las condiciones</h5>
          <p class="text-muted mb-0" style="font-size:.88rem;line-height:1.65">
            Claro desde el primer momento. 100% transparente y sin sorpresas ni letra pequeña
          </p>
        </div>
      </div>

      <div class="col-md-6 col-lg-3 reveal d4">
        <div class="ventaja-card card h-100 rounded-4 p-4 bg-white border">
          <div class="ventaja-icon-wrap mb-3">
            <i class="bi bi-trophy-fill"></i>
          </div>
          <h5 class="mb-2" style="font-size:1rem">Entidad financiera de referencia</h5>
          <p class="text-muted mb-0" style="font-size:.88rem;line-height:1.65">
            Más de 2 millones de clientes han confiado en nosotros para financiar sus proyectos
          </p>
        </div>
      </div>

    </div>
  </div>
</section>


<!-- ══════════ STATS ══════════ -->
<section class="py-5 bg-cream">
  <div class="container">
    <div class="stats-bar reveal">
      <div class="row g-0">

        <div class="col-12 col-md-4 stat-item text-center">
          <div class="stat-stars mb-1">★★★★★</div>
          <div class="stat-number">4,8<span style="font-size:1.4rem;font-weight:400;color:rgba(255,255,255,.5)">/5</span></div>
          <div class="stat-label">Valoración en Google</div>
        </div>

        <div class="col-12 col-md-4 stat-item text-center">
          <div class="stat-number">20.776</div>
          <div class="stat-label">Opiniones verificadas</div>
        </div>

        <div class="col-12 col-md-4 stat-item text-center">
          <div class="stat-number">12</div>
          <div class="stat-label">Años liderando<br>Atención al Cliente</div>
        </div>

      </div>
    </div>
  </div>
</section>


<!-- ══════════ PASOS ══════════ -->
<section class="py-5" id="pasos" style="padding-top:var(--section-py);padding-bottom:var(--section-py)">
  <div class="container">
    <div class="row align-items-center g-5">

      <!-- Texto izquierda -->
      <div class="col-lg-4 reveal">
        <span class="section-eyebrow">Cómo funciona</span>
        <h2 class="display-5 mb-3">
          Solicita de @IMPORTE_MIN_PP@ a @IMPORTE_MAX_PP@ €<br>
          <span style="color:var(--cofidis-salmon)">desde donde quieras</span>
        </h2>
        <p class="text-muted mb-4">
          Proceso 100% online. Sencillo, seguro y sin desplazamientos.
        </p>
        <a href="https://www.cofidis.es/es/identification/autentificacion.html"
           class="btn btn-red rounded-3 px-4 py-3 d-inline-flex align-items-center gap-2 fw-semibold">
          <i class="bi bi-person-fill"></i> Empezar ahora
        </a>
      </div>

      <!-- Pasos derecha -->
      <div class="col-lg-7 offset-lg-1">
        <div class="d-flex flex-column gap-4">

          <div class="paso-item d-flex gap-3 align-items-start reveal d1">
            <div style="position:relative">
              <div class="paso-number">1</div>
              <div class="paso-connector"></div>
            </div>
            <div class="paso-body pt-2">
              <h3>Elige el importe de tu préstamo</h3>
              <p>Indica cuánto dinero necesitas y en cuánto tiempo lo quieres devolver. Sin compromiso.</p>
            </div>
          </div>

          <div class="paso-item d-flex gap-3 align-items-start reveal d2">
            <div style="position:relative">
              <div class="paso-number">2</div>
              <div class="paso-connector"></div>
            </div>
            <div class="paso-body pt-2">
              <h3>Rellena nuestro formulario online</h3>
              <p>Completa tus datos personales y financieros. Es seguro, fácil y tarda solo unos minutos.</p>
            </div>
          </div>

          <div class="paso-item d-flex gap-3 align-items-start reveal d3">
            <div style="position:relative">
              <div class="paso-number">3</div>
              <div class="paso-connector"></div>
            </div>
            <div class="paso-body pt-2">
              <h3>Revisión y estudio de solvencia</h3>
              <p>Analizamos tu petición y tu solvencia para darte la mejor respuesta posible.</p>
            </div>
          </div>

          <div class="paso-item d-flex gap-3 align-items-start reveal d4">
            <div style="position:relative">
              <div class="paso-number" style="background:var(--cofidis-salmon)">4</div>
            </div>
            <div class="paso-body pt-2">
              <h3>Firma digital y recibe el dinero</h3>
              <p>Una vez aprobado, firma digitalmente tu contrato y recibe el dinero en tu cuenta.</p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</section>


<!-- ══════════ CTA FINAL ══════════ -->
<section class="py-5" style="padding-bottom:var(--section-py)">
  <div class="container">
    <div class="cta-box p-5 p-md-6 text-center reveal" style="padding:4rem 3rem">
      <span class="section-eyebrow" style="color:var(--cofidis-salmon)">¿Preparado?</span>
      <h2 class="display-6 text-white mb-3 mt-1">
        Empieza ahora en tu<br>Espacio Cliente
      </h2>
      <p class="mb-5 mx-auto" style="color:rgba(255,255,255,.65);max-width:420px;font-size:1rem">
        Gestiona tus productos, consulta tus préstamos y mantente al día de todas las novedades
      </p>
      <div class="d-flex flex-wrap justify-content-center gap-3">
        <a href="https://www.cofidis.es/es/identification/autentificacion.html"
           class="btn btn-red btn-lg rounded-3 px-5 py-3 d-inline-flex align-items-center gap-2 fw-semibold">
          <i class="bi bi-person-fill"></i> Ir a mi Espacio Cliente
        </a>
        <a href="#ventajas"
           class="btn btn-outline-white btn-lg rounded-3 px-4 py-3 d-inline-flex align-items-center gap-2">
          Ver ventajas <i class="bi bi-chevron-up"></i>
        </a>
      </div>
      <div class="d-flex flex-wrap justify-content-center gap-4 mt-5">
        <span style="color:rgba(255,255,255,.45);font-size:.82rem;display:flex;align-items:center;gap:.4rem">
          <i class="bi bi-shield-check" style="color:var(--cofidis-salmon)"></i> Proceso 100% seguro
        </span>
        <span style="color:rgba(255,255,255,.45);font-size:.82rem;display:flex;align-items:center;gap:.4rem">
          <i class="bi bi-lock-fill" style="color:var(--cofidis-salmon)"></i> Datos protegidos
        </span>
        <span style="color:rgba(255,255,255,.45);font-size:.82rem;display:flex;align-items:center;gap:.4rem">
          <i class="bi bi-people-fill" style="color:var(--cofidis-salmon)"></i> +2M de clientes
        </span>
      </div>
    </div>
  </div>
</section>


<!-- ══════════ FLOATING CTA ══════════ -->
<a href="https://www.cofidis.es/es/identification/autentificacion.html"
   id="floatBtn"
   class="btn btn-red rounded-pill px-4 py-2 d-flex align-items-center gap-2 fw-semibold position-fixed bottom-0 end-0 m-4 shadow-lg">
  <i class="bi bi-person-fill"></i> Mi Espacio Cliente
</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
  (function(){
    const io = new IntersectionObserver(entries => {
      entries.forEach(e => { if (e.isIntersecting) e.target.classList.add('in'); });
    }, { threshold: 0.08 });
    document.querySelectorAll('.reveal').forEach(el => io.observe(el));
  })();

  const fb = document.getElementById('floatBtn');
  window.addEventListener('scroll', () => fb.classList.toggle('show', scrollY > 500));
</script>
</body>
</html>
