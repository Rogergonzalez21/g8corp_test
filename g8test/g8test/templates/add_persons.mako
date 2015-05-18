<%inherit file="g8test:templates/base.mako"/>
<form action="${request.route_url('add_persons')}" method="post" class="form-horizontal">

    % for error in form.name.errors:
        <div class="error">${ error }</div>
    % endfor
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">${form.name.label}</label>
        <div class="col-sm-10">
            ${form.name(class_='form-control')}
        </div>
    </div>

    % for error in form.last_name.errors:
        <div class="error">${error}</div>
    % endfor
    <div class="form-group">
        <label for="last_name" class="col-sm-2 control-label">${form.last_name.label}</label>
        <div class="col-sm-10">
            ${form.last_name(class_='form-control')}
        </div>
    </div>

    % for error in form.mail.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="mail" class="col-sm-2 control-label">${form.mail.label}</label>
        <div class="col-sm-10">
            ${form.mail(class_='form-control')}
        </div>
    </div>

    % for error in form.phone.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="phone" class="col-sm-2 control-label">${form.phone.label}</label>
        <div class="col-sm-10">
            ${form.phone(class_='form-control')}
        </div>
    </div>

    % for error in form.address.errors:
        <div class="error">${error}</div>
    % endfor

    <div class="form-group">
        <label for="address" class="col-sm-2 control-label">${form.address.label}</label>
        <div class="col-sm-10">
            ${form.address(class_='form-control')}
        </div>
    </div>

    <div class="form-group">
        <label></label>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Guardar</button>
            <a href="${request.route_url('index')}" class="btn btn-danger">Volver</a>
        </div>
    </div>


</form>