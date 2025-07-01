from ..extensions import ma
from ..models.usuario import Usuario

class UserSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Usuario
        load_instance = True
        exclude = ("password_hash",)
