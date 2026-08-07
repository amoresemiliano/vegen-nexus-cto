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

### /review
Para revisar resultados de Antigravity, Jules u otro agente.
Dictamen: GO / GO WITH CONDITIONS / CORRECTIONS REQUIRED / BLOCKED.
Distinguir IMPLEMENTED / TESTED / VERIFIED / PRODUCTION READY.

### /radar
Para investigar novedades tecnológicas aplicables al ecosistema.
Debe buscar información actual, filtrar por impacto real y clasificar ADOPT / TRIAL / ASSESS / HOLD.

## Regla
Un agente, una responsabilidad. Evitar cambios simultáneos sobre los mismos archivos o responsabilidades fuertemente acopladas.
