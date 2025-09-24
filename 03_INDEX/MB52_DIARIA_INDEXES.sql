-- ========================================
-- Índices para mejorar consultas en MB52_DIARIA
-- Proyecto: INVEX - Control de Inventarios
-- ========================================

-- Índice para filtrar por CENTRO
CREATE INDEX idx_mb52_centro ON MB52_DIARIA (CENTRO);

-- Índice para filtrar por FECHA (útil para reportes diarios)
CREATE INDEX idx_mb52_fecha ON MB52_DIARIA (FECHA);
