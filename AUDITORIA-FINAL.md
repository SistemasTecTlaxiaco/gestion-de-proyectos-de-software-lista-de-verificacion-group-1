# AUDITORÍA FINAL DE CALIDAD

## 1. Alcance

La auditoría se aplica al repositorio de la práctica Lista de Verificación de Calidad. El alcance comprende la documentación, la herramienta de auditoría automática, el control de versiones y las evidencias generadas dentro del repositorio.

Los criterios que requieren un producto funcional externo se consideran no aplicables al alcance de este repositorio y no se utilizan para incrementar artificialmente el porcentaje.

## 2. Resultado de auditoría automática

| Indicador | Resultado |
|---|---:|
| Criterios automatizados | 10 |
| Criterios cumplidos | 10 |
| Cumplimiento | 100% |
| Resultado automático | Oro provisional |

La primera ejecución detectó la ausencia de README.md y LICENSE, además de un falso positivo de seguridad. Después de las correcciones se ejecutó nuevamente la herramienta y se obtuvo 10/10.

## 3. Revisión de la checklist completa

| Sección | Cumplidos | Evaluados | Estado |
|---|---:|---:|---|
| Control del repositorio | 6 | 6 | Cumple |
| Control de cambios | 4 | 5 | 1 pendiente |
| Calidad de requisitos | N/A | N/A | Fuera del alcance del repositorio de la práctica |
| Calidad del código | 5 | 5 | Cumple |
| Pruebas | 5 | 5 | Cumple para la herramienta de auditoría |
| Seguridad | 5 | 5 | Cumple |
| Adaptación CMMI | 6 | 6 | Cumple |
| Adaptación MoProSoft | 5 | 5 | Cumple |
| Contexto Open Hub Tec y Mixteca | 5 | 5 | Cumple documentalmente |

## 4. Cálculo

Criterios aplicables evaluados: 41
Criterios aplicables cumplidos: 40
Criterios pendientes: 1
Porcentaje de cumplimiento aplicable: 97.56%

## 5. Criterio pendiente

**CAM-05: Antes de integrar cambios se realiza revisión.**

Existe la estructura para revisión mediante GitHub y el flujo de trabajo automatizado, pero no se cuenta todavía con una evidencia registrada de revisión por otro integrante del equipo dentro de esta auditoría.

## 6. Evidencias

- CHECKLIST-AUDITORIA.md
- SISTEMA-INSIGNIAS.md
- AUDITORIA-CMMI-MOPROSOFT.md
- HALLAZGOS-AUDITORIA.md
- METRICAS-CALIDAD.md
- EVIDENCIAS-AUDITORIA.md
- RESULTADO-AUDITORIA.md
- scripts/AUDITAR-REPOSITORIO.ps1
- .github/workflows/auditoria-calidad.yml
- historial de commits de Git

## 7. Hallazgos corregidos

### Hallazgo 1: README inexistente
Acción: se creó README.md.
Estado: corregido.

### Hallazgo 2: LICENSE inexistente
Acción: se creó LICENSE.
Estado: corregido.

### Hallazgo 3: Falso positivo de seguridad
Acción: se modificó la herramienta para excluir su propio archivo durante la detección de patrones sensibles.
Estado: corregido.

## 8. Insignia

### Resultado técnico

**97.56% de cumplimiento aplicable.**

De acuerdo con el sistema definido en SISTEMA-INSIGNIAS.md, el porcentaje corresponde al nivel **ORO**.

### Estado de validación

**ORO PROVISIONAL** hasta obtener la evidencia de revisión por otro integrante del equipo para CAM-05.

## 9. Conclusión

La herramienta de auditoría fue creada, ejecutada, corregida y ejecutada nuevamente. El repositorio cuenta con checklist, sistema de insignias, adaptación CMMI/MoProSoft, métricas, matriz de evidencias, registro de hallazgos y auditoría automatizada.

La insignia técnica alcanzada es Oro por porcentaje de cumplimiento aplicable; la validación final queda condicionada únicamente a documentar la revisión por otro integrante del equipo.
