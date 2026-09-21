# SISTEMA DE INSIGNIAS DE CALIDAD

## Objetivo

Establecer un sistema de reconocimiento de calidad para evaluar el estado del proyecto mediante los resultados obtenidos en la lista de verificación, la auditoría automatizada y las evidencias documentadas en GitHub.

El sistema utiliza tres niveles:

- 🥉 Bronce
- 🥈 Plata
- 🥇 Oro

Cada nivel representa un grado diferente de cumplimiento, documentación, revisión y mejora del proyecto..

---

# 1. Insignia Bronce

## Requisitos

El proyecto obtiene **Bronce** cuando cumple como mínimo:

| Criterio | Requisito |
|---|---|
| Checklist | La lista de verificación se encuentra creada y aplicada |
| Documentación | Existe README y documentación básica |
| Git | Se utiliza control de versiones |
| Seguridad | No existen hallazgos críticos abiertos |
| Calidad | Al menos 70% de los criterios aplicables cumplen |
| Evidencias | Se documentan las principales evidencias |
| Correcciones | Los problemas encontrados tienen acciones correctivas |

### Evidencia mínima

- Checklist aplicada.
- Evidencias de GitHub.
- Registro de hallazgos.
- Acciones correctivas documentadas.

---

# 2. Insignia Plata

## Requisitos

El proyecto obtiene **Plata** cuando, además de los requisitos de Bronce, cumple:

| Criterio | Requisito |
|---|---|
| Cumplimiento | Al menos 85% de los criterios aplicables cumplen |
| CMMI | Se identifican las prácticas relacionadas |
| MoProSoft | Se identifican los procesos relacionados |
| Pruebas | Las pruebas están documentadas |
| Seguridad | No existen hallazgos críticos o altos abiertos |
| Revisión | La auditoría fue revisada por otro integrante |
| Métricas | Se registran resultados cuantificables |
| Corrección | Los hallazgos encontrados fueron atendidos |

### Evidencia mínima

- Resultado de auditoría.
- Relación CMMI.
- Relación MoProSoft.
- Evidencias de pruebas.
- Métricas de calidad.
- Revisión por integrante del equipo.

---

# 3. Insignia Oro

## Requisitos

El proyecto obtiene **Oro** cuando, además de los requisitos anteriores, cumple:

| Criterio | Requisito |
|---|---|
| Cumplimiento | Al menos 95% de los criterios aplicables cumplen |
| Seguridad | No existen hallazgos críticos o altos abiertos |
| Auditoría | La auditoría automatizada fue ejecutada |
| Revisión | Existe revisión independiente dentro del equipo |
| Corrección | Se realizó una nueva auditoría después de corregir hallazgos |
| Evidencias | Todos los criterios relevantes cuentan con evidencia |
| Accesibilidad | Se consideran las necesidades de los usuarios |
| Conectividad | Se considera el contexto de conectividad limitada |
| Cultura | Se considera la protección del contenido cultural |
| Trazabilidad | Existe relación entre requisitos, cambios, pruebas y evidencias |

### Evidencia mínima

- Resultado final de auditoría.
- Evidencia de correcciones.
- Segunda ejecución de auditoría.
- Métricas finales.
- Trazabilidad de requisitos.
- Revisión del equipo.
- Evidencias de accesibilidad, conectividad y contexto cultural.

---

# 4. Tabla de clasificación

| Porcentaje de cumplimiento | Insignia |
|---|---|
| Menor a 70% | Sin insignia |
| 70% - 84% | 🥉 Bronce |
| 85% - 94% | 🥈 Plata |
| 95% - 100% | 🥇 Oro |

> La insignia obtenida debe corresponder únicamente al resultado real de la auditoría.

---

# 5. Niveles de severidad

Los hallazgos de auditoría se clasifican de la siguiente manera:

| Severidad | Descripción |
|---|---|
| Crítica | Puede comprometer gravemente la seguridad, integridad o funcionamiento |
| Alta | Tiene impacto importante sobre la calidad o seguridad |
| Media | Requiere corrección para mantener la calidad |
| Baja | Mejora recomendada que no bloquea el proyecto |

---

# 6. Regla para obtener la insignia

El nivel se determina mediante:

**Porcentaje de cumplimiento = (criterios cumplidos / criterios evaluados) × 100**

La clasificación final debe considerar tanto el porcentaje como los hallazgos de seguridad.

Un porcentaje alto no permite obtener una insignia superior cuando existen hallazgos críticos o altos sin resolver según los requisitos definidos para cada nivel.

---

# 7. Aplicación al proyecto

La insignia será determinada después de aplicar:

1. CHECKLIST-AUDITORIA.md
2. Auditoría automatizada.
3. Registro de hallazgos.
4. Evidencias de GitHub.
5. Acciones correctivas.
6. Revisión final.

## Estado actual

**Insignia: PENDIENTE**

La insignia final deberá determinarse únicamente después de realizar la auditoría real del repositorio.
