# NEXUS Integration Roadmap

## Stage 1 — GPT Operating System
Instructions + Knowledge + starters + web + análisis + nexus-dev-os.

Exit criteria:
- uso en proyectos reales;
- prompts consistentes;
- QA consistente;
- Knowledge estable.

## Stage 2 — Read-Only Connected CTO
NEXUS GPT → Action/API → NEXUS Gateway → GitHub / Supabase / n8n / otros.

Endpoints iniciales:
GET /health
GET /projects
GET /projects/{id}
GET /repositories/{repo}/status
GET /radar

Reglas:
- sólo READ;
- autenticación;
- allowlist;
- logging;
- rate limits;
- sin secretos expuestos.

## Stage 3 — Controlled Writes
Añadir sólo operaciones concretas: crear issue/tarea, disparar workflow seguro, crear borradores o actualizar metadatos no destructivos.

## Stage 4 — AI Development Factory
NEXUS como router de arquitectura, asignación de agente, ejecución, revisión, CI y staging.

## Stage 5 — Continuous Improvement
Technology Radar → evaluación → trial → benchmark → decisión → actualización del stack → documentación.
