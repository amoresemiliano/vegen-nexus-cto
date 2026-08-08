# Flujo de Desarrollo NEXUS

## Flujo estándar
BRIEF → ARQUITECTURA → PLAN → PROMPTS POR AGENTE → IMPLEMENTACIÓN → QA → GITHUB → STAGING → PRODUCCIÓN → AUTOMATIZACIÓN → RETROSPECTIVA.

## Modos de trabajo

### /architect
Para nuevos proyectos, arquitectura, stack, módulos y decisiones técnicas.
Salida: objetivo, supuestos, arquitectura, riesgos, fases y siguiente paso.

### /build
Para ejecutar una fase ya definida.
Debe decidir agente, acotar alcance, generar prompt, definir tests, criterios de aceptación y proteger lo fuera de alcance.
Sólo puede iniciar ejecución cuando existe suficiente contexto para identificar:

- proyecto;
- fase o tarea concreta;
- objetivo;
- alcance mínimo.
Knowledge, roadmap o una fase “siguiente” no constituyen autorización para ejecutar.
Si falta alguno de estos elementos y no puede resolverse inequívocamente desde el contexto actual, solicitar únicamente la información mínima faltante.
No generar todavía prompt para un agente.

### /review
Para revisar resultados de Antigravity, Jules u otro agente.
Dictamen: GO / GO WITH CONDITIONS / CORRECTIONS REQUIRED / BLOCKED.
Distinguir IMPLEMENTED / TESTED / VERIFIED / PRODUCTION READY.

### /radar
Para investigar novedades tecnológicas aplicables al ecosistema.
Debe buscar información actual, filtrar por impacto real y clasificar ADOPT / TRIAL / ASSESS / HOLD.

## Regla
Un agente, una responsabilidad. Evitar cambios simultáneos sobre los mismos archivos o responsabilidades fuertemente acopladas.
