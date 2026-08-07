# NEXUS Security, QA & Git

## Objetivo

Mantener seguridad, trazabilidad, evidencia y reversibilidad durante todo el ciclo de desarrollo.

---

## Seguridad

Reglas base:

- no asumir acceso a producción;
- no conectar o modificar producción sin autorización explícita;
- no exponer secretos, tokens, passwords ni API keys;
- aplicar menor privilegio;
- preferir local, mocks, staging o previews;
- preservar datos existentes;
- versionar migraciones;
- evitar operaciones destructivas;
- definir rollback cuando exista riesgo;
- tratar datos reales de clientes como sensibles;
- diferenciar READ, WRITE y DESTRUCTIVE.

Los secretos deben permanecer fuera del repositorio y de Knowledge.

No guardar:

- `.env` reales;
- service-role keys;
- database passwords;
- private keys;
- tokens;
- credenciales cloud.

---

## Alcance

No modificar archivos, módulos, tablas, infraestructura o dependencias fuera del alcance aprobado.

Si aparece un problema fuera del scope:

1. documentarlo;
2. evaluar si bloquea;
3. no corregirlo automáticamente salvo autorización o necesidad directa para completar la fase.

Evitar refactors oportunistas.

---

## Niveles de evidencia

### CLAIMED

Un agente, usuario o sistema afirma que algo ocurrió, pero no existe evidencia independiente suficiente.

Ejemplo:

> “Los tests pasaron.”

sin output, CI, logs o ejecución verificable.

CLAIMED no equivale a TESTED ni VERIFIED.

### IMPLEMENTED

Existe evidencia del cambio realizado:

- diff;
- archivos;
- commit;
- código inspeccionable;
- migración versionada.

IMPLEMENTED no implica que funcione.

### TESTED

Existe evidencia de pruebas realmente ejecutadas.

Debe conocerse, cuando sea posible:

- comando;
- entorno;
- PASS / FAIL;
- resultados relevantes.

Un build exitoso sólo demuestra aquello que ese build valida.

### VERIFIED

El comportamiento esperado fue comprobado con evidencia suficiente e independiente.

Puede incluir:

- tests;
- inspección del diff;
- validación funcional;
- CI;
- comprobaciones de seguridad;
- pruebas negativas;
- revisión independiente.

### PRODUCTION READY

Existe evidencia suficiente para desplegar de forma responsable.

Puede requerir:

- IMPLEMENTED;
- TESTED;
- VERIFIED;
- seguridad;
- rollback;
- migraciones;
- observabilidad;
- backups;
- ausencia de blockers conocidos.

Nunca convertir CLAIMED directamente en VERIFIED.

Nunca declarar PRODUCTION READY sólo porque el agente de implementación lo afirme.

---

## QA

Cuando aplique verificar:

- lint;
- typecheck;
- build;
- unit tests;
- integration tests;
- regresiones;
- seguridad;
- permisos;
- integridad de datos;
- responsive;
- accesibilidad;
- performance;
- error handling;
- logging;
- rollback.

No todas las tareas requieren todas las pruebas.

La profundidad del QA debe ser proporcional al riesgo.

---

## Autenticación y autorización

En cambios relacionados con identidad o permisos, comprobar cuando corresponda:

- autenticación real;
- expiración/renovación de sesión;
- permisos;
- aislamiento entre usuarios;
- acceso no autorizado;
- ownership;
- RLS/policies;
- privileged credentials;
- bypass server-side;
- modificación de campos privilegiados.

Ocultar elementos de UI no constituye autorización.

---

## Datos y migraciones

Toda migración relevante debe ser:

- versionada;
- reproducible;
- revisable;
- compatible con datos existentes;
- acompañada de rollback cuando el riesgo lo justifique.

Evitar modificaciones destructivas de datos salvo autorización explícita.

---

## Git

GitHub debe funcionar como fuente de verdad versionada.

Buenas prácticas:

- trabajar en ramas cuando corresponda;
- commits enfocados;
- no mezclar cambios no relacionados;
- inspeccionar `git status`;
- inspeccionar diff;
- comprobar secretos;
- documentar archivos modificados;
- evitar merges/deploys automáticos sin autorización.

Antes de cerrar una fase revisar:

1. archivos creados/modificados/eliminados;
2. cambios fuera de alcance;
3. dependencias modificadas;
4. migraciones;
5. secretos;
6. tests;
7. commit/branch;
8. rollback cuando aplique.

---

## Dictamen `/review`

Usar:

- GO
- GO WITH CONDITIONS
- CORRECTIONS REQUIRED
- BLOCKED

El dictamen debe basarse en evidencia disponible.

No penalizar una implementación sólo porque falte información: distinguir claramente entre defecto demostrado y evidencia insuficiente.

Una implementación puede ser correcta y aun así requerir `CORRECTIONS REQUIRED` si el riesgo exige evidencia que todavía no existe.