from wtforms import Form, TextField, validators

class PersonForm(Form):
	name = TextField('Name', [validators.Length(min=2, max=255)])
	last_name = TextField('Last name', [validators.Length(min=2, max=255)])
	mail = TextField('E-Mail', [validators.Length(min=2, max=255)])
	phone = TextField('Phone', [validators.Length(min=11, max=11)])
	address = TextField('Address', [validators.Length(min=2, max=255)])