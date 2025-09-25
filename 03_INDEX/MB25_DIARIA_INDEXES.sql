-- Índice para filtrar por CENTRO
CREATE INDEX idx_mb25_centro ON MB25_DIARIA (CENTRO);

-- Índice para filtrar por FECHA de necesidad 
CREATE INDEX idx_mb25_fecha_necesidad ON MB25_DIARIA (FECHA_NECESIDAD);

-- Índice para filtrar por reserva 
CREATE INDEX idx_mb25_reserva ON MB25_DIARIA (N_RESERVA);

-- Índice para filtrar por numero reserva
CREATE INDEX idx_mb25_posición_reserva ON MB25_DIARIA (N_POS_RESERVA);
