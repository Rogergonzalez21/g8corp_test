<%inherit file="g8test:templates/base.mako"/>
<% link_attr={"class": "btn btn-default btn-xs"} %>
<% curpage_attr={"class": "btn btn-default btn-xs disabled"} %>
<% dotdot_attr={"class": "btn btn-default btn-xs disabled"} %>

    <h2>Personas</h2>

        % for person in persons:
    <ul>
            <li>${person.name}</li>
    </ul>
        % endfor

<p><a href="${request.route_url('add_persons')}">Añadir persona</a></p>
