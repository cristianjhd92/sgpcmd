import jwt
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime, timedelta
from flask import current_app

def hash_password(password: str) -> str:
    return generate_password_hash(password)

def verify_password(hash_: str, password: str) -> bool:
    return check_password_hash(hash_, password)

def generate_token(usuario_id: int) -> str:
    payload = {
        "sub": usuario_id,
        "exp": datetime.utcnow() + timedelta(hours=2)
    }
    return jwt.encode(payload, current_app.config["JWT_SECRET_KEY"], algorithm="HS256")

def decode_token(token: str) -> dict:
    return jwt.decode(token, current_app.config["JWT_SECRET_KEY"], algorithms=["HS256"])
