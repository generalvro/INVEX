-- INDICES TABLA DE INTERCENTROS ----*****************************----********-*-*

-- Índice para filtrar por CENTRO
CREATE INDEX idx_IC_centro ON ME2M_INTERCENTROS (CENTRO);

-- Índice para filtrar por CENTRO SUMINISTRADOR
CREATE INDEX idx_IC_centro_suministrador ON ME2M_INTERCENTROS (CENTRO_SUMINISTRADOR);

-- Índice para filtrar por NUMERO_DOC_COMPRAS_IC
CREATE INDEX idx_IC_documento_compras ON ME2M_INTERCENTROS (NUMERO_DOC_COMPRAS_IC);

-- Índice para filtrar por POSICION DOCUMENTO COMPRAS
CREATE INDEX idx_IC_posicion_documento_compras ON ME2M_INTERCENTROS (POSICION_DOC_COMPRAS_IC);
