# NEXUS Technology Radar

## Objetivo

Detectar tecnologías, capacidades y cambios que puedan mejorar de manera concreta:

- velocidad;
- calidad;
- coste;
- seguridad;
- automatización;
- observabilidad;
- UX;
- time-to-market;
- mantenibilidad;
- escalabilidad.

El radar no es un resumen de noticias.

Su función principal es filtrar.

---

## Clasificación

### ADOPT

Tecnología o capacidad suficientemente madura y útil para incorporar ahora.

### TRIAL

Existe beneficio potencial suficiente para justificar una prueba controlada.

### ASSESS

Es relevante y debe seguirse, pero aún no justifica adopción o trial inmediato.

### HOLD

No conviene adoptar actualmente.

---

## Filtro de relevancia

Antes de incluir una novedad preguntar:

1. ¿Resuelve un problema real?
2. ¿Reduce tiempo?
3. ¿Reduce coste?
4. ¿Aumenta calidad?
5. ¿Aumenta seguridad?
6. ¿Simplifica arquitectura?
7. ¿Mejora automatización?
8. ¿Es suficientemente madura?
9. ¿Cuál es el coste de adopción/migración?
10. ¿Existe riesgo de lock-in o churn?

Si no existe impacto material, descartar.

---

## Disciplina temporal

Cuando se solicite una ventana temporal:

- respetar estrictamente las fechas;
- registrar o comprobar la fecha del evento;
- distinguir lanzamiento original de actualización posterior;
- distinguir Preview / Beta / GA;
- distinguir disponibilidad nueva de mejora de una capacidad existente;
- no presentar como nueva una capacidad anterior sólo porque recibió una actualización reciente.

Si una capacidad anterior se vuelve relevante por una novedad reciente, explicar ambas:

**ORIGINAL CAPABILITY:** fecha/contexto original.  
**RECENT CHANGE:** qué ocurrió dentro de la ventana solicitada.

Cada entrada debe clasificarse también como una de estas:

- NEW CAPABILITY
- RECENT UPDATE
- STATUS CHANGE
- MATERIAL IMPROVEMENT

---

## Evidencia

Priorizar:

1. documentación oficial;
2. changelog oficial;
3. repositorio oficial;
4. anuncio técnico oficial;
5. fuentes técnicas secundarias confiables cuando hagan falta.

No inferir GA, precio, disponibilidad, límites o soporte si la fuente no lo afirma explícitamente.

---

## Formato recomendado

Technology:

Event type:
NEW CAPABILITY / RECENT UPDATE / STATUS CHANGE / MATERIAL IMPROVEMENT

Date:

What changed:

Current problem:

Proposed opportunity:

Impact:
HIGH / MEDIUM / LOW

Effort:
HIGH / MEDIUM / LOW

Maturity:
PRODUCTION / GA / BETA / PREVIEW / EXPERIMENTAL

Risk:

Potential projects:

Recommendation:

Radar status:
ADOPT / TRIAL / ASSESS / HOLD

Next action:

---

## Áreas prioritarias

- OpenAI
- Anthropic
- Google / Gemini
- GitHub
- Vercel
- Supabase
- Cloudflare
- n8n
- AI coding agents
- agent orchestration
- MCP
- developer tooling
- databases
- hosting
- observability
- cybersecurity
- AI evaluation

---

## Reglas

No recomendar migraciones por moda.

Una tecnología debe justificar beneficio frente a coste, riesgo y complejidad.

Es válido concluir que una empresa o categoría no tuvo novedades materiales durante una ventana.

No rellenar el radar artificialmente para cubrir todos los proveedores.