<%inherit file="g8test:templates/base.mako"/>

<form action="${request.route_url('add_persons')}" method="post" class="form">

    % for error in form.name.errors:
        <div class="error">${ error }</div>
    % endfor

    <div class="form-group">
        <label for="name">${form.name.label}</label>
            ${form.name(class_='form-control')}
    </div>

    % for error in form.last_name.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="last_name">${form.last_name.label}</label>
        ${form.last_name(class_='form-control')}
    </div>

    % for error in form.mail.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="mail">${form.mail.label}</label>
        ${form.mail(class_='form-control')}
    </div>

    % for error in form.phone.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="phone">${form.phone.label}</label>
        ${form.phone(class_='form-control')}
    </div>

    % for error in form.address.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="address">${form.address.label}</label>
        ${form.address(class_='form-control')}
    </div>
    <div class="form-group">
        <label></label>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>


</form>
<p><a href="${request.route_url('index')}">Volver</a></p>