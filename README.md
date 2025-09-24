# 📦 Proyecto INVEX – Control de Inventarios

INVEX es una iniciativa de innovación para mejorar la gestión de inventarios en la bodega de la Regional VRO, reemplazando reportes en Excel por una solución robusta basada en **PostgreSQL** como base de datos y **Power BI** como visor de reportes.  

El objetivo es centralizar, automatizar y asegurar la información para facilitar la toma de decisiones y optimizar la operación logística.

---

## Estructura del Repositorio

- **01_estructuras/**  
  Contiene los scripts para la creación de tablas, índices y constraints necesarios para el modelo de datos.

- **02_vistas/**  
  Vistas SQL para consultas de inventario, reservas, cobertura de stock y reportes de análisis.

- **03_funciones/**  
  Funciones almacenadas y procedimientos para asignación de stock, cálculo de necesidades y generación de indicadores.

- **04_scripts/**  
  Scripts para cargas iniciales, limpieza de datos y ejecución de procesos programados.

---

## Ejecución

1. Ejecutar en orden los scripts de `01_estructuras` para crear el modelo de datos.  
2. Crear las vistas contenidas en `02_vistas`.  
3. Crear las funciones y procedimientos en `03_funciones`.  
4. Usar los scripts de `04_scripts` para cargas de información o pruebas.  

> **Sugerencia:** Documentar en cada archivo SQL el propósito, fecha de creación y cambios relevantes para facilitar el mantenimiento.

---

## Resultados Esperados

- Eliminación de la dependencia de reportes en Excel.  
- Mayor confiabilidad y trazabilidad de la información de inventarios.  
- Visualización dinámica y en tiempo real de indicadores en Power BI.  
- Optimización de compras y movimientos de materiales con base en datos consolidados.

---

##Colaboradores

Este repositorio es administrado por el equipo de inventarios de la Regional VRO.  
Si tienes sugerencias o mejoras, por favor documenta los cambios y realiza un pull request.
