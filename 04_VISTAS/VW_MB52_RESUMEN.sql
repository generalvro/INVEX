-- ========================================
-- Vista: vw_mb52_resumen
-- Descripción: Clasifica los registros de MB52_DIARIA por categoría
--              y resume información relevante para análisis.
-- Proyecto: INVEX - Control de Inventarios
-- ========================================

CREATE OR REPLACE VIEW vw_mb52_resumen AS
SELECT
    CENTRO,
    ALMACEN,
    CASE 
        WHEN TIPO_MATERIAL = 'ZIAC' THEN 'ACTIVO'
        WHEN ALMACEN IS NULL OR ALMACEN = '' THEN 'TRANSITO'
        WHEN ALMACEN = 'H001' THEN 'GASTOS'
        WHEN ALMACEN IN ('S002', 'S003') THEN 'SOBRANTE'
        WHEN ALMACEN IN ('G001', 'G002', 'G003', 'E001') THEN 'GASTOS'
        WHEN ALMACEN = 'A001' THEN 'ACTIVO'
        WHEN ALMACEN = 'I001' THEN 'IMPORTADO'
        WHEN ALMACEN IN ('P001','P002','P003','P004') THEN 'PROYECTOS'
        ELSE 'OTROS'
    END AS CATEGORIA,
    MATERIAL,
    ELEMENTO_PEP,
    TEXTO_BREVE_DE_MATERIAL,
    TIPO_MATERIAL,
    LOTE,
    LIBRE_UTILIZACION,
    TOTAL_CANTIDADES,
    TOTAL_VALORES,
    FECHA,
    DIA,
    MES,
    ANIO
FROM MB52_DIARIA;
