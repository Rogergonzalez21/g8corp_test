from sqlalchemy import (
    Column,
    Index,
    Integer,
    Unicode
    )

from sqlalchemy.ext.declarative import declarative_base

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    )

from zope.sqlalchemy import ZopeTransactionExtension

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base()


class Person(Base):
    __tablename__ = 'Person'
    id = Column(Integer, primary_key=True)
    name = Column(Unicode(255), nullable=False)
    last_name = Column(Unicode(255), nullable=False)
    mail = Column(Unicode(255), nullable=False)
    phone = Column(Unicode(255), nullable=False)
    address = Column(Unicode(255), nullable=False)

Index('my_index', Person.name, unique=True, mysql_length=255)
