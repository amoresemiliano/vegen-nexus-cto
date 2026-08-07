# NEXUS Technology Review

## Objetivo

Convertir novedades tecnológicas en decisiones accionables para el ecosistema NEXUS.

Technology Review no significa recopilar noticias.

El proceso es:

DISCOVER  
→ VERIFY  
→ FILTER  
→ EVALUATE  
→ TRIAL  
→ BENCHMARK  
→ ADOPT / REJECT / ASSESS  
→ UPDATE DEV OS

---

## Frecuencia

Revisión recomendada:

- quincenal para radar general;
- inmediata cuando exista una novedad potencialmente crítica;
- específica antes de una decisión arquitectónica importante.

---

## Fuentes

Priorizar:

1. documentación oficial;
2. changelogs;
3. repositorios oficiales;
4. publicaciones técnicas del proveedor;
5. documentación de APIs/SDKs;
6. fuentes técnicas secundarias confiables.

Evitar basar decisiones importantes exclusivamente en titulares, posts promocionales o contenido sin evidencia técnica.

---

## Verificación

Para afirmaciones actuales importantes buscar preferentemente dos señales:

1. fuente primaria/oficial;
2. confirmación técnica adicional cuando sea necesaria.

No inferir:

- GA;
- disponibilidad;
- precio;
- límites;
- soporte;
- compatibilidad;
- fechas;
- cambios de estado

si las fuentes no lo establecen explícitamente.

---

## Validación temporal

Cuando exista ventana temporal:

1. definir fecha inicial y final;
2. comprobar fecha del evento;
3. distinguir lanzamiento original y actualización;
4. distinguir Preview / Beta / GA;
5. excluir novedades fuera de ventana salvo que sean contexto necesario;
6. marcar claramente cuando una capacidad anterior recibe una mejora reciente.

No atribuir a un periodo actual una funcionalidad que fue lanzada anteriormente.

---

## Evaluación

Por cada candidato relevante valorar:

- problema actual;
- beneficio;
- esfuerzo;
- coste;
- riesgo;
- madurez;
- seguridad;
- mantenibilidad;
- lock-in;
- compatibilidad;
- migración;
- impacto sobre proyectos existentes.

---

## Trial

Antes de ADOPT, cuando exista incertidumbre, diseñar una prueba controlada.

Un trial debe definir:

- hipótesis;
- alcance;
- proyecto o entorno de prueba;
- baseline;
- métricas;
- duración o número de casos;
- coste máximo;
- riesgos;
- criterio GO / NO-GO.

---

## Benchmark

Cuando corresponda comparar:

- calidad;
- velocidad;
- coste;
- latencia;
- estabilidad;
- seguridad;
- developer experience;
- tasa de errores;
- mantenibilidad.

No adoptar basándose sólo en demos.

---

## Resultado

Cada review debe poder terminar en:

### ADOPT
Incorporar al stack o proceso.

### TRIAL
Probar controladamente.

### ASSESS
Mantener bajo observación.

### HOLD
No adoptar actualmente.

### REJECT
Descartar para el caso evaluado.

---

## Actualización del Dev OS

Una tecnología adoptada puede requerir cambios en:

- `01_TECH_STACK.md`
- `03_PROMPT_STANDARDS.md`
- `05_INFRASTRUCTURE.md`
- `07_TECH_RADAR.md`
- roadmap;
- templates;
- workflows;
- skills;
- políticas de seguridad.

No actualizar Knowledge por cada novedad.

Actualizarlo cuando una decisión haya cambiado realmente la forma de trabajar.

---

## Regla final

El Technology Review debe reducir incertidumbre y mejorar decisiones.

Si una novedad no genera una acción, aprendizaje o decisión relevante, probablemente no merece formar parte del radar.