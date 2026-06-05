-- Esquema de la base de datos pib_regional
-- Proyecto: Predicción del PIB regional español

CREATE TABLE regiones (
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE luminosidad_satelital (
    id SERIAL PRIMARY KEY,
    region_id INTEGER REFERENCES regiones(id),
    fecha DATE NOT NULL,
    luminosidad_media FLOAT,
    luminosidad_max FLOAT
);

CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    region_id INTEGER REFERENCES regiones(id),
    fecha DATE NOT NULL,
    titular TEXT,
    sentimiento FLOAT,
    fuente VARCHAR(100)
);

CREATE TABLE pib_regional (
    id SERIAL PRIMARY KEY,
    region_id INTEGER REFERENCES regiones(id),
    anno INTEGER NOT NULL,
    trimestre INTEGER NOT NULL,
    pib_millones FLOAT,
    variacion_porcentual FLOAT
);
