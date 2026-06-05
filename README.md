# PIB Regional Predictor 🇪🇸

Predicción en tiempo real del PIB regional español utilizando:
Imágenes satelitales nocturnas (NASA VIIRS)
Procesamiento de lenguaje natural (NLP) en noticias locales
Base de datos PostgreSQL
Machine Learning con Python

## Estructura del proyecto

pib-regional-predictor/
├── data/              # Datos satelitales y noticias
├── notebooks/         # Jupyter Notebooks de análisis
├── sql/               # Esquema y consultas SQL
├── src/               # Código fuente Python
├── .env.example       # Variables de entorno (plantilla)
└── README.md

## Tecnologías
- Python 3.x
- PostgreSQL 17
- pandas, numpy, scikit-learn
- transformers (BERT en español)
- rasterio, geopandas
