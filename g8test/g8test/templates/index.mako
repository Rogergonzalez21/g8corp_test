<%inherit file="g8test:templates/base.mako"/>
<% link_attr={"class": "btn btn-default btn-xs"} %>
<% curpage_attr={"class": "btn btn-default btn-xs disabled"} %>
<% dotdot_attr={"class": "btn btn-default btn-xs disabled"} %>

    <h2>People list</h2>

<div class="table-responsive">
<table class="table table-hover">
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Last name</th>
          <th>E-Mail</th>
          <th>Phone</th>
          <th>Address</th>
        </tr>
      </thead>
      <tbody>
        % for person in persons:
        <tr>
          <td>${person.id}</td>
          <td>${person.name}</td>
          <td>${person.last_name}</td>
          <td><a href="mailto:${person.mail}">${person.mail}</a></td>
          <td>${person.phone}</td>
          <td>${person.address}</td>
        </tr>
        % endfor
      </tbody>
    </table>
    </div>
<p><a href="${request.route_url('add_persons')}">Add person</a></p>
