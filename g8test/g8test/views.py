from pyramid.httpexceptions import HTTPFound
from pyramid.response import Response
from pyramid.view import view_config

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    Person,
    )

from forms import PersonForm


@view_config(route_name='index', renderer='templates/index.mako')
def persons(request):
    try:
        persons = DBSession.query(Person)
    except DBAPIError:
        return Response(conn_err_msg, content_type='text/plain', status_int=500)
    return {'persons': persons}

@view_config(route_name='add_persons', renderer='templates/add_persons.mako')
def add_persons(request):
    person = Person()
    form = PersonForm(request.POST)
    if request.method == 'POST' and form.validate():
        form.populate_obj(person)
        DBSession.add(person)
        return HTTPFound(location=request.route_url('index'))
    return {'form' : form}


conn_err_msg = """\
Pyramid is having a problem using your SQL database.  The problem
might be caused by one of the following things:

1.  You may need to run the "initialize_g8test_db" script
    to initialize your database tables.  Check your virtual
    environment's "bin" directory for this script and try to run it.

2.  Your database server may not be running.  Check that the
    database server referred to by the "sqlalchemy.url" setting in
    your "development.ini" file is running.

After you fix the problem, please restart the Pyramid application to
try it again.
"""

