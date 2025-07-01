import os

class Config:
    # Ejemplo: ajusta la URI a tu base de datos real
    SQLALCHEMY_DATABASE_URI = os.getenv(
        "DATABASE_URL",
        "mysql+pymysql://usuario:password@localhost/sgpcmd"
    )
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    # Clave para firmar tus JWTs
    JWT_SECRET_KEY = os.getenv("JWT_SECRET_KEY", "cambia_esto_por_una_clave_secreta")
