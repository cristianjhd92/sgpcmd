from flask import Blueprint, request, jsonify
from ..services.auth_service import register_user, authenticate_user
from ..schemas.user_schema import UserSchema

auth_bp = Blueprint("auth", __name__)
user_schema = UserSchema()

@auth_bp.route("/register", methods=["POST"])
def register():
    data = request.get_json()
    user, token_or_msg = register_user(
        data.get("username"),
        data.get("email"),
        data.get("password")
    )
    if not user:
        return jsonify({"error": token_or_msg}), 400
    return jsonify({
        "user": user_schema.dump(user),
        "token": token_or_msg
    }), 201

@auth_bp.route("/login", methods=["POST"])
def login():
    data = request.get_json()
    user, token = authenticate_user(
        data.get("username_or_email"),
        data.get("password")
    )
    if not user:
        return jsonify({"error": "Credenciales inválidas"}), 401
    return jsonify({
        "user": user_schema.dump(user),
        "token": token
    })
