<!DOCTYPE html>
<html>

    <head>
        <title>Sistema Hospitalario V.1.0 / SIDRA </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
        <!-- CSS Libs -->
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/bootstrap.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/font-awesome.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/animate.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/bootstrap-switch.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/checkbox3.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/jquery.dataTables.min.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/dataTables.bootstrap.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/lib/css/select2.min.css"); ?>" />

        <!-- CSS App -->
        <link rel="stylesheet" href="<?php echo base_url("resources/css/style.css"); ?>" />
        <link rel="stylesheet" href="<?php echo base_url("resources/css/themes/flat-blue.css"); ?>" />

        <link href="<?php echo base_url("resources/lib/css/bootstrap-datetimepicker.css"); ?>" rel="stylesheet">


    </head>

    <body class="flat-blue">
        <div class="app-container">
            <div class="row content-container">
                <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-expand-toggle">
                                <i class="fa fa-bars icon"></i>
                            </button>
                            <ol class="breadcrumb navbar-breadcrumb">
                                <li>His-Sidra</li>
                                <li>Administrador</li>
                                <li class="active">Usuario</li>
                            </ol>
                            <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                                <i class="fa fa-th icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                                <ul class="dropdown-menu animated fadeInDown">
                                    <li class="title">
                                        Notificaciones <span class="badge pull-right">0</span>
                                    </li>
                                    <li class="message">
                                        No tiene Mensajes Pendientes
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown danger">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                                <ul class="dropdown-menu danger  animated fadeInDown">
                                    <li class="title">
                                        Usuario <span class="badge pull-right">0</span>
                                    </li>
                                    <li>
                                        <ul class="list-group notifications">

                                            <a href="#">
                                                <li class="list-group-item">
                                                    <span class="badge success"></span> <i class="fa fa-check icon"></i> Reportar Error
                                                </li>
                                            </a>
                                            <a href="#">
                                                <li class="list-group-item message">
                                                    Ver errores reportados.
                                                </li>
                                            </a>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown profile">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo $nombre ?><span class="caret"></span></a>
                                <ul class="dropdown-menu animated fadeInDown">

                                    <li>
                                        <div class="profile-info">
                                            <h4 class="username"><?php echo $nombre ?></h4>
                                            <p><?php echo "Contacto:" . $email ?></p>
                                            <div class="btn-group margin-bottom-2x" role="group">
                                                <button type="button" class="btn btn-default"><i class="fa fa-user"></i> Perfil</button>
                                                <a href=<?php echo (base_url() . 'index.php/login/log_out') ?>><button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i> Cerrar</button></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="side-menu sidebar-inverse">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="side-menu-container">
                            <div class="navbar-header">
                                <a class="navbar-brand" href="#">
                                    <div class="icon fa fa-medkit"></div>
                                    <div class="title">His Sidra - V.1.0</div>
                                </a>
                                <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                    <i class="fa fa-times icon"></i>
                                </button>
                            </div>
                            <ul class="nav navbar-nav">
                                <li >
                                    <a href=<?php echo (base_url() . 'index.php/administrador/home') ?>>
                                        <span class="icon fa fa-tachometer"></span><span class="title">Panel de Control</span>
                                    </a>
                                </li>


                                <li class=" panel panel-default dropdown">
                                    <a data-toggle="collapse" href="#dropdown-form">
                                        <span class="icon fa fa-file-text-o"></span><span class="title">Mantenedores</span>
                                    </a>
                                    <!-- Dropdown level 1 -->
                                    <div id="dropdown-form" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul class="nav navbar-nav">
                                                <li><a href=<?php echo (base_url() . 'index.php/administrador/servicio') ?>>Servicio</a></li>
                                                <li><a href=<?php echo (base_url() . 'index.php/administrador/unidad') ?>>Unidad</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <!-- Dropdown-->
                                <li class="panel panel-default dropdown">
                                    <a data-toggle="collapse" href="#component-example">
                                        <span class="icon fa fa-cubes"></span><span class="title">Reportes</span>
                                    </a>
                                    <!-- Dropdown level 1 -->
                                    <div id="component-example" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul class="nav navbar-nav">
                                                <li><a href="#">Reporte 1</a>
                                                </li>
                                                <li><a href="#">Reporte 2</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="active">
                                    <a href=<?php echo (base_url() . 'index.php/administrador/usuario') ?>>
                                        <span class="icon fa fa-users"></span><span class="title">Cuenta Usuario</span>
                                    </a>
                                </li>


                                <li>
                                    <a href=<?php echo (base_url() . 'index.php/administrador/equipo') ?>>
                                        <span class="icon fa fa-thumbs-o-up"></span><span class="title">Nuestro Equipo</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>
                </div>
                <!-- Main Content -->
                <div class="container-fluid">
                    <div class="side-body">
                        <div class="page-title">
                            <span class="title">Bievenido a <?php echo $establecimiento ?></span>
                            <div class="description">Usuario:<?php echo $nombre ?> / Mi Correo:<?php echo $email ?> </div>
                        </div>



                        <div class="row">
                            <div class="col-xs-12">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Cuenta de Usuario</div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form method="post" action=<?php echo (base_url() . 'index.php/administrador/usuario/save') ?>>

                                            <div class="panel panel-default">
                                                <div class="panel-heading">Nuevo Usuario</div>
                                                <div class="panel-body ">
                                                    <div role="tabpanel" >
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs" role="tablist">
                                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Datos Generales</a></li>
                                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Privilegios</a></li>

                                                        </ul>
                                                        <!-- Tab panes -->
                                                        <div class="tab-content">
                                                            <div role="tabpanel" class="tab-pane active" id="home">
                                                                <div class="col-xs-12 col-md-6">

                                                                    <div class="form-group">
                                                                        <label for="rut">Rut</label>
                                                                        <input type="text" class="form-control" name="ruttot" id="rut" placeholder="Rut">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="nombre">Nombre</label>
                                                                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="nombre">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="apepat">1er Apellido</label>
                                                                        <input type="text" class="form-control" name="apepat" id="apepat" placeholder="Apellido Paterno">
                                                                    </div>



                                                                </div>
                                                                <div class="col-xs-12 col-md-6">

                                                                    <div class="form-group">
                                                                        <label for="apemat">2do Apellido</label>
                                                                        <input type="text" class="form-control" name="apemat" id="apemat" placeholder="Apellido Materno">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="email">Correo Electronico</label>
                                                                        <input type="email" class="form-control" name="email" id="email" placeholder="Correo Electronico" >
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="fec_nac">Fecha Nacimiento</label>
                                                                        <div class='input-group date' id='datetimepicker1'>
                                                                            <input type='text' class="form-control" name="fec_nac" />
                                                                            <span class="input-group-addon">
                                                                                <span class="glyphicon glyphicon-calendar"></span>
                                                                            </span>
                                                                        </div>
                                                                    </div>


                                                                </div>

                                                            </div>
                                                            <div role="tabpanel" class="tab-pane" id="profile">
                                                                <div class="col-xs-12 col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="username">Nombre Usuario</label>
                                                                        <input type="text" name="username" class="form-control" id="apemat" placeholder="Nombre de Usuario">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="password">Password</label>
                                                                        <input type="password" name="password" class="form-control" id="password" placeholder="Clave de Usuario" value="123456">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for=rol">Rol</label>
                                                                        <select class="form-control" name="rol_id" style="width: 100%">
                                                                            <?php foreach ($rol as $r) { ?>
                                                                                <option value=<?php echo $r->rol_id; ?>><?php echo $r->tipo ?></option>
                                                                            <?php } ?>

                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-12 col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="estamento">Estamento</label>
                                                                        <select class="form-control" name="estamento_id"   style="width: 100%">
                                                                            <?php foreach ($estamento as $esta) { ?>
                                                                                <option value=<?php echo $esta->estamento_id ?> ><?php echo $esta->nombre ?></option>
                                                                            <?php } ?>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="agenda">Con Agenda</label>
                                                                        
                                                                        <div class="checkbox3 checkbox-round">
                                                                            <input type="checkbox" name="agenda" id="checkbox-1">
                                                                            <label for="checkbox-1">
                                                                                Se creara agenda?
                                                                            </label>
                                                                        </div>


                                                                    </div>


                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>






                                                </div>
                                                <div class="panel-footer">
                                                    <div class="box-tools m-b-15">
                                                        <div class="input-group">
                                                            <input type="submit"class="btn btn-primary" value="Guardar">
                                                            <input type="reset"class="btn btn-danger" value="Limpiar">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="app-footer">
                    <div class="wrapper">
                        <span class="pull-right">1.0 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> Proyecto Sidra © 2016 Copyright.
                    </div>
                </footer>
                <div>
                    <!-- Javascript Libs -->
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/jquery.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/bootstrap.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/Chart.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/bootstrap-switch.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/jquery.matchHeight-min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/jquery.dataTables.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/dataTables.bootstrap.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/select2.full.min.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/ace.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/mode-html.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/theme-github.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/js/app.js"); ?>"></script>

                    <script src="<?php echo base_url("resources/lib/js/moment-with-locales.js"); ?>"></script>
                    <script src="<?php echo base_url("resources/lib/js/bootstrap-datetimepicker.js"); ?>"></script>


                    <script type="text/javascript">
                        $(document).ready(function () {

                            $('#datetimepicker1').datetimepicker({
                                format: 'YYYY/MM/DD'
                                        //OTRO FORMATO 'YYYY-MM-DD HH:mm'


                            });
                            $("#servicios").select2({
                                placeholder: "Servicios"
                            });
                            $("#establecimientos").select2({
                                placeholder: "Establecimientos"
                            });

                        });
                    </script>
                    </body>

                    </html>
