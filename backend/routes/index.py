from flask import Blueprint, jsonify

index_bp = Blueprint("index", __name__)

@index_bp.route("/", methods=["GET"])
def home():
    return jsonify({
        "message": "API SGPCMD funcionando 🔥"
    })
