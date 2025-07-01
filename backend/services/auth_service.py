from ..models.usuario import Usuario
from ..extensions import db
from ..utils.security import hash_password, verify_password, generate_token

def register_user(username, email, password):
    if Usuario.query.filter((Usuario.username == username) | (Usuario.email == email)).first():
        return None, "Usuario o email ya registrado"
    user = Usuario(
        username=username,
        email=email,
        password_hash=hash_password(password)
    )
    db.session.add(user)
    db.session.commit()
    token = generate_token(user.id)
    return user, token

def authenticate_user(username_or_email, password):
    user = Usuario.query.filter(
        (Usuario.username == username_or_email) | (Usuario.email == username_or_email)
    ).first()
    if user and verify_password(user.password_hash, password):
        return user, generate_token(user.id)
    return None, None
