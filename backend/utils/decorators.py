from functools import wraps
from flask import request, jsonify
from .security import decode_token
from ..models.usuario import Usuario

def token_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        token = None
        if "Authorization" in request.headers:
            token = request.headers["Authorization"].split(" ")[1]
        if not token:
            return jsonify({"message": "Token faltante"}), 401
        try:
            data = decode_token(token)
            current_user = Usuario.query.get(data["sub"])
            if not current_user:
                raise RuntimeError("Usuario no existe")
        except Exception as e:
            return jsonify({"message": f"Token inválido: {str(e)}"}), 401
        return f(current_user, *args, **kwargs)
    return decorated
