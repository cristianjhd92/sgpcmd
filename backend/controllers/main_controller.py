from flask import jsonify
from ..schemas.user_schema import UserSchema

user_schema = UserSchema()

def saludos(current_user, *args, **kwargs):
    return jsonify({
        "message": f"¡Hola, {current_user.username}!",
        "user": user_schema.dump(current_user)
    })
