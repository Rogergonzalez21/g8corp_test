import os
from pyramid.config import Configurator
from sqlalchemy import create_engine

from .models import (
    DBSession,
    Base,
    )


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    engine = create_engine(os.environ.get('OPENSHIFT_POSTGRESQL_DB_URL', ''))
    DBSession.configure(bind=engine)
    Base.metadata.bind = engine
    config = Configurator(settings=settings)
    config.include('pyramid_mako')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('index', '/')
    config.add_route('add_persons', '/add')
    config.scan()
    return config.make_wsgi_app()
