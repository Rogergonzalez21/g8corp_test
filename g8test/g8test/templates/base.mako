<!DOCTYPE html>
<html lang="${request.locale_name}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="pyramid web application">
    <meta name="author" content="Roger Gonzalez">

    <title>G8 Corp Test - Roger González</title>

    <!-- Bootstrap core CSS -->
        <link href="${request.static_url('g8test:static/css/bootstrap.min.css')}" rel="stylesheet">
        <link href="${request.static_url('g8test:static/css/style.css')}" rel="stylesheet">

    </style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="//oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
      <div class="container">
          <div>
            <div class="jumbotron">
              <div class="row">
                <div class="col-md-8">
                  <h1>G8 Corporation Test</h1>
                  <h3>Made with <span class="glyphicon glyphicon-heart" aria-hidden="true"></span> by Roger González</h3>
                </div>
                <div class="col-md-4">
                  <center><img src="${request.static_url('g8test:static/img/yo.png')}" width="60%"></center>
                </div>
              </div>
            </div>

                <div>
                    <!-- this is where contents of template inheriting from this layout will be inserted -->
                  ${next.body()}
                    <!-- this is where contents of template inheriting from this layout will be inserted -->
                </div>

          </div>
        </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
  <footer>
  <div class="container">
  <hr/>
    <h3>Made for the "Corporacion G8" test.</h3>
    <ul>
      <li>Framework: <a href="http://docs.pylonsproject.org/projects/pyramid/en/1.5-branch/">Pyramid 1.5.7</a></li>
      <li>Template language: <a href="http://www.makotemplates.org/">Mako</a></li>
      <li>Bootstrap Template: <a href="https://bootswatch.com/darkly/">Darkly</a></li>
    </ul>
    <center>
    <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Licencia Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">G8 Corp Test</span> por <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Roger González</span> se distribuye bajo una <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Licencia Creative Commons Atribución 4.0 Internacional</a>.
    </div>
    </center>
  </footer>
    <script src="${request.static_url('g8test:static/js/jquery-2.1.4.min.js')}"></script>
    <script src="${request.static_url('g8test:static/js/bootstrap.min.js')}"></script>
</html>