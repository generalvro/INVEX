-- ==========================================================
-- Script: create_table_mb25_diaria.sql
-- Descripción: Creación de la tabla MB25_DIARIA
-- Base de datos: PostgreSQL
-- Autor: [Tu Nombre o Empresa]
-- Fecha de creación: CURRENT_DATE
-- ==========================================================

DROP TABLE IF EXISTS mb25_diaria;

CREATE TABLE mb25_diaria (
    n_reserva               NUMERIC,
    n_pos_reserva           NUMERIC,
    orden                   TEXT,
    centro                  INTEGER,
    almacen                 TEXT,
    material                TEXT,
    texto_breve_de_material TEXT,
    unidad_medida_base      TEXT,
    cant_necesaria          NUMERIC,
    cant_reducida           NUMERIC,
    cant_diferencia         NUMERIC,
    pos_borrada             TEXT,
    movimiento_permitido    TEXT,
    salida_final            TEXT,
    fecha_necesidad         DATE,
    nombre_usuario          TEXT,
    elemento_pep            TEXT,
    fecha_base              DATE,
    imputacion              TEXT,
    centro_coste            TEXT,
    clase_movimiento        TEXT,
    indicador_debe_haber    TEXT,
    stock_especial          TEXT,
    texto_clase_movimiento  TEXT,
    lote                    TEXT,
    cant_entrada            NUMERIC,
    un_medida_entrada       TEXT,
    imputacion_reserva      TEXT,
    clase_necesidad         TEXT,
    destino_mercancia       TEXT,

    -- Campos de control de carga
    fecha_cargue_archivo    DATE DEFAULT CURRENT_DATE,
    dia_cargue_archivo      TEXT DEFAULT TO_CHAR(CURRENT_DATE, 'DD'),
    mes_cargue_archivo      TEXT DEFAULT TO_CHAR(CURRENT_DATE, 'MM'),
    anio_cargue_archivo     TEXT DEFAULT TO_CHAR(CURRENT_DATE, 'YYYY')
);
