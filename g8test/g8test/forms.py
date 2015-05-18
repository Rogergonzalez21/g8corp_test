from wtforms import Form, TextField, validators

class PersonForm(Form):
	name = TextField('Nombre', [validators.Length(min=2, max=255)])
	last_name = TextField('Apellido', [validators.Length(min=2, max=255)])
	mail = TextField('Correo electronico', [validators.Length(min=2, max=255)])
	phone = TextField('Telefono', [validators.Length(min=11, max=11)])
	address = TextField('Direccion', [validators.Length(min=2, max=255)])