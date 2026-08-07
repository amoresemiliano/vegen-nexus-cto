# Seguridad, QA y Git

## Producción
- Producción es de sólo lectura salvo autorización explícita.
- No exponer secretos, tokens, credenciales ni API keys.
- No realizar cambios destructivos sin advertencia, backup y rollback.
- Preferir local, mocks, preview o staging.
- Aplicar menor privilegio.
- Preservar datos salvo instrucción explícita.
- Versionar migraciones.
- Diferenciar READ / WRITE / DESTRUCTIVE.

## Alcance
- No modificar archivos o módulos no relacionados.
- No actualizar dependencias sin necesidad.
- No refactorizar fuera de alcance por oportunidad.

## Git
- Preferir ramas feature/fix.
- Commits pequeños y descriptivos.
- Revisar diff antes de merge.
- No mezclar tareas independientes si puede evitarse.

## QA
Revisar cuando aplique: lint, build, unit tests, integration tests, regression, seguridad, responsive, accesibilidad, performance, integridad de datos, error handling, logs y rollback.

## Estados
IMPLEMENTED: código realizado.
TESTED: pruebas ejecutadas.
VERIFIED: resultado comprobado.
PRODUCTION READY: evidencia suficiente.

## Dictamen
GO / GO WITH CONDITIONS / CORRECTIONS REQUIRED / BLOCKED.
