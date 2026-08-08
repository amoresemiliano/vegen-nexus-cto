# NEXUS Technology Radar

## Objetivo

Detectar tecnologías, capacidades y cambios que puedan mejorar de forma concreta:

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

Su función principal es filtrar y convertir cambios tecnológicos en decisiones accionables.

---

## Clasificación

### ADOPT

Tecnología, capacidad o patrón suficientemente maduro y útil para incorporar ahora.

### TRIAL

Existe beneficio potencial suficiente para justificar una prueba controlada.

### ASSESS

Es relevante y debe seguirse, pero todavía no justifica adopción o trial inmediato.

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
9. ¿Cuál es el coste de adopción?
10. ¿Introduce lock-in, churn o complejidad?

Si no existe impacto material para NEXUS o sus proyectos, descartar.

---

## Ventana temporal

Cuando el usuario indique un periodo:

- respetarlo estrictamente;
- declarar fecha inicial y final;
- incluir como hallazgos principales sólo eventos pertenecientes a esa ventana.

Si `/radar` se invoca sin periodo:

- usar por defecto los últimos 30 días;
- declarar explícitamente la ventana analizada.

Los eventos anteriores pueden aparecer únicamente como:

`BACKGROUND / CONTEXT`

y no deben presentarse como novedades del ciclo.

Una tecnología anterior puede volver al radar sólo si existe dentro de la ventana un cambio material que justifique reevaluarla.

---

## Date verification gate

Antes de aceptar un hallazgo dentro de una ventana:

1. verificar explícitamente día, mes y año;
2. no inferir el año por posición u orden en un changelog;
3. comprobar que la fecha pertenece realmente a la ventana;
4. distinguir fecha de anuncio, disponibilidad, Preview/Beta y GA;
5. abrir la entrada individual cuando un changelog agregue información de varios periodos;
6. verificar disponibilidad o estado cuando sean relevantes para la recomendación.

Si fecha, estado o disponibilidad no pueden confirmarse:

`UNVERIFIED`

El hallazgo debe excluirse del radar principal o presentarse claramente como no verificado.

UNVERIFIED no debe generar una recomendación ADOPT/TRIAL basada en novedad temporal.

## Change verification gate

No basta con verificar que una capacidad existe actualmente.

Cuando el hallazgo dependa de un cambio de:

- precio;
- disponibilidad;
- GA / Beta / Preview;
- límites;
- rendimiento declarado;
- soporte;
- políticas;

la fuente debe demostrar explícitamente que ese cambio ocurrió dentro de la ventana.

Una página que sólo muestra el estado actual no prueba cuándo cambió.

Si no existe evidencia primaria suficiente:
- marcar UNVERIFIED;
- convertirlo en BACKGROUND;
- o excluirlo del radar principal.

---

## Tipos de evento

Cada hallazgo debe clasificarse como:

- NEW CAPABILITY
- MATERIAL IMPROVEMENT
- RECENT UPDATE
- STATUS CHANGE

Cuando corresponda distinguir:

**ORIGINAL CAPABILITY:** cuándo apareció originalmente.

**RECENT CHANGE:** qué cambió dentro de la ventana actual.

**BACKGROUND:** contexto anterior necesario para entender la novedad.

---

## Formato obligatorio de cada hallazgo

Presentar primero el bloque ejecutivo:

### [Tecnología / cambio] — [ADOPT / TRIAL / ASSESS / HOLD]

**Event type:**  
NEW CAPABILITY / MATERIAL IMPROVEMENT / RECENT UPDATE / STATUS CHANGE

**Fecha relevante:**  
DD MMM YYYY

**Impacto NEXUS:**  
HIGH / MEDIUM / LOW

**Esfuerzo:**  
HIGH / MEDIUM / LOW

**Madurez:**  
PRODUCTION / GA / BETA / PREVIEW / EXPERIMENTAL / ARCHITECTURAL GUIDANCE

**Dictamen:**  
ADOPT / TRIAL / ASSESS / HOLD

Después desarrollar exactamente en este orden:

### Qué cambió

Descripción breve y factual de la novedad.

Separar BACKGROUND cuando haga falta.

### Cómo encaja con NEXUS

Explicar qué problema, proyecto, fase, arquitectura o proceso actual podría mejorar.

No describir sólo capacidades genéricas.

### Propuesta

Indicar qué haría NEXUS concretamente:

- adoptar;
- integrar;
- comparar;
- diseñar;
- preparar;
- mantener en observación;
- descartar.

### Trial recomendado / siguiente acción

Si es TRIAL, especificar una prueba controlada.

Cuando sea posible incluir:

- objetivo;
- alcance;
- entorno;
- métrica;
- riesgo;
- criterio GO / NO-GO.

Si no requiere trial, indicar la siguiente acción concreta.

---

## Evaluación de impacto

### Impacto NEXUS

HIGH:
puede cambiar significativamente velocidad, seguridad, coste, capacidad de automatización o arquitectura.

MEDIUM:
genera mejora útil pero localizada.

LOW:
beneficio limitado o marginal.

### Esfuerzo

LOW:
configuración, pequeño cambio o prueba aislada.

MEDIUM:
integración, adaptación o desarrollo moderado.

HIGH:
migración, arquitectura nueva, infraestructura relevante o cambio transversal.

### Madurez

Distinguir explícitamente cuando sea posible:

- PRODUCTION
- GA
- BETA
- PREVIEW
- EXPERIMENTAL
- ARCHITECTURAL GUIDANCE

No confundir madurez técnica con recomendación NEXUS.

Una tecnología puede ser GA y seguir siendo HOLD.

---

## Fuentes

Priorizar:

1. documentación oficial;
2. changelog oficial;
3. repositorio oficial;
4. anuncio técnico oficial;
5. fuentes técnicas secundarias confiables cuando aporten verificación adicional.

No inferir:

- fechas;
- GA;
- disponibilidad;
- precio;
- límites;
- compatibilidad;
- soporte

si la fuente no lo establece claramente.

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
- observabilidad
- cybersecurity
- AI evaluation

No es obligatorio cubrir todas las áreas en cada ciclo.

---

## Priorización final

Después de los hallazgos, generar una síntesis ordenada:

P0 = acción inmediata de alto valor.  
P1 = trial o decisión próxima.  
P2 = evaluar cuando exista necesidad concreta.  
P3 = observar.

La priorización debe considerar:

IMPACTO × MADUREZ × BENEFICIO  
frente a  
ESFUERZO × RIESGO × COMPLEJIDAD.

---

## Reglas finales

No recomendar migraciones por moda.

No añadir herramientas sólo porque sean nuevas.

No rellenar artificialmente el radar para cubrir proveedores.

Es válido concluir que una plataforma no tuvo novedades materiales.

El radar debe priorizar mejoras aplicables al estado actual de NEXUS.

Si una novedad no genera una decisión, acción o aprendizaje relevante, probablemente no merece aparecer.