# NEXUS Prompt Standards

## Objetivo

Generar prompts claros, acotados y adaptados a la plataforma destino, evitando ambigüedad, cambios fuera de alcance y megaprompts innecesarios.

Un prompt debe proporcionar al agente la información suficiente para ejecutar una responsabilidad concreta y devolver evidencia revisable.

---

## Principio general

Un agente, una responsabilidad.

Evitar que dos agentes modifiquen simultáneamente los mismos archivos o responsabilidades fuertemente acopladas.

No pedir a un agente que rediseñe, implemente, pruebe, despliegue y refactorice todo un sistema en una sola tarea salvo justificación excepcional.

---

## Estructura estándar

Cuando sea útil:

- PLATFORM / AGENT
- PROJECT
- PHASE
- OBJECTIVE
- CURRENT STATE
- SCOPE
- OUT OF SCOPE
- RELEVANT / ALLOWED FILES
- FORBIDDEN FILES
- IMPLEMENTATION REQUIREMENTS
- SECURITY CONSTRAINTS
- TESTS / VALIDATIONS
- ACCEPTANCE CRITERIA
- GIT RULES
- DELIVERABLE

No inventar archivos, rutas, ramas, infraestructura o estados desconocidos.

Si el agente puede inspeccionar el repositorio, pedirle primero que determine las rutas reales antes de imponer paths inventados.

---

## Proporcionalidad de prompts

La extensión y profundidad del prompt debe ser proporcional al riesgo y complejidad.

### LOW RISK

Características:

- cambio local;
- fácilmente reversible;
- sin datos sensibles;
- sin autenticación/autorización;
- sin migraciones;
- sin infraestructura;
- sin producción;
- impacto limitado.

Usar prompt compacto.

Debe incluir como mínimo:

- objetivo;
- scope;
- restricciones;
- validación;
- entregable.

No incluir controles exhaustivos que no aporten valor.

### NORMAL

Características:

- varios módulos;
- integración entre componentes;
- impacto moderado;
- tests/regresión necesarios;
- posibilidad de afectar funcionalidad existente.

Usar especificación estructurada estándar.

Añadir:

- estado actual;
- out of scope;
- archivos relevantes;
- tests;
- acceptance criteria;
- reglas Git.

### HIGH RISK

Características:

- autenticación o autorización;
- datos sensibles;
- pagos;
- migraciones;
- infraestructura;
- producción;
- operaciones destructivas;
- permisos elevados;
- integridad crítica de datos.

Usar especificación exhaustiva.

Añadir cuando corresponda:

- PRECONDITIONS;
- least privilege;
- tests negativos;
- scope audit;
- secret audit;
- migraciones versionadas;
- backup;
- rollback;
- evidencia detallada;
- prohibiciones explícitas;
- revisión independiente.

No usar el formato HIGH RISK por defecto.

---

## Antigravity

Usar para implementación principal.

El prompt debe:

- explicar el problema y estado actual;
- delimitar scope y out-of-scope;
- proteger código existente;
- exigir inspección del repositorio cuando falte contexto;
- definir criterios verificables;
- exigir informe final basado en evidencia.

No autorizar producción salvo instrucción explícita.

---

## Jules

Usar para tareas aisladas y paralelizables:

- tests;
- documentación;
- análisis de repositorio;
- refactors acotados;
- tareas independientes.

Evitar usar Jules sobre archivos que otro agente esté modificando simultáneamente.

---

## Google AI Studio / Gemini

Usar para:

- experimentación de modelos;
- prompting;
- structured output;
- function calling;
- multimodal;
- evaluación;
- prototipos AI.

Los prompts deben definir:

- input;
- output esperado;
- schema cuando aplique;
- herramientas disponibles;
- criterios de evaluación;
- ejemplos sólo cuando aporten valor.

---

## Claude

Usar como segunda opinión para:

- arquitectura;
- seguridad;
- edge cases;
- deuda técnica;
- code review;
- crítica de decisiones.

Pedir análisis independiente antes de mostrarle una conclusión previa cuando se quiera reducir sesgo de confirmación.

---

## n8n

Antes de pedir código para una integración repetitiva, evaluar si conviene workflow.

Patrón de referencia:

TRIGGER  
→ INPUT VALIDATION  
→ PROCESSING  
→ DECISIONS  
→ INTEGRATIONS  
→ LOGGING  
→ RETRIES / ERROR HANDLING  
→ OUTPUT

Exigir idempotencia cuando exista riesgo de ejecuciones duplicadas.

---

## Entregables

El informe exigido al agente también debe ser proporcional.

LOW RISK:
- resumen;
- archivos cambiados;
- validación;
- estado.

NORMAL:
- implementación;
- archivos;
- tests;
- riesgos;
- Git/diff;
- estado.

HIGH RISK:
- implementación;
- arquitectura;
- archivos;
- datos/migraciones;
- seguridad;
- tests;
- validación manual;
- regresión;
- scope audit;
- rollback;
- riesgos;
- Git/diff;
- handoff para `/review`.

No exigir 10–15 secciones para una tarea trivial.