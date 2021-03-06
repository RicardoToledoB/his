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
                                <li class="active">Unidad</li>
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
                                <li>
                                    <a href=<?php echo (base_url() . 'index.php/administrador/home') ?>>
                                        <span class="icon fa fa-tachometer"></span><span class="title">Panel de Control</span>
                                    </a>
                                </li>


                                <li class="active panel panel-default dropdown">
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
                                <li>
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
                                            <div class="title">Mantenedor Unidad </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">Listado Unidades</div>
                                            <div class="panel-body table-responsive">
                                                <div class="box-tools m-b-15">
                                                    <div class="input-group">
                                                        <a href="<?php echo (base_url() . 'index.php/administrador/unidad/nuevo') ?>" class="btn btn-primary">Nuevo</a>
                                                        <input type="text" name="table_search" class="form-control  pull-right" style="width: 280px; height: 33px; top: 5px;" placeholder="Buscar..."/>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default"><i class="fa fa-search"></i></button>
                                                        </div>
                                                    </div>
                                                </div>

                                                <table class="table table-striped table-hover table-condensed ">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Nombre</th>
                                                            <th>Codigo</th>
                                                            <th>Servicio</th>

                                                            <th>Acciones</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php foreach ($unidad as $uni) { ?>
                                                            <tr>
                                                                <th scope="row"><?php echo $uni->unidad_id ?></th>
                                                                <td><?php echo $uni->nombre ?></td>
                                                                <td><?php echo $uni->codigo ?></td>
                                                                <td><?php echo $uni->servicio ?></td>
                                                                <td>
                                                                    <div class="btn-group" role="group" aria-label="Default button group">
                                                                        <button type="button" class="btn btn-primary btn-xs"><i class="fa fa-search"></i></button>
                                                                        <button type="button" class="btn btn-info btn-xs"><i class="fa fa-edit"></i></button>
                                                                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-href="<?php echo (base_url() . 'index.php/administrador/unidad/delete/' . $uni->unidad_id) ?>" data-target="#modalDelete"><i class="fa fa-trash"></i></button>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <!-- MODAL ELIMINAR -->


                                                        <?php } ?>


                                                    </tbody>
                                                </table>

                                            </div>

                                        </div>
                                        <!-- MODAL ELIMINAR -->
                                        <div class="modal fade" id="modalDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Eliminar</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        ¿Esta seguro de eliminar?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                                        <button type="button" id='eliminame' class="btn btn-primary">Eliminar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>




                                    </div>
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


                <script>
                    $(document).ready(function () {
                        $('#modalDelete').on('show.bs.modal', function (e) {
                            $('#eliminame').click(function () {
                                $(location).attr('href', $(e.relatedTarget).data('href'));
                            });
                        });

                    });


                </script>






                </body>

                </html>
