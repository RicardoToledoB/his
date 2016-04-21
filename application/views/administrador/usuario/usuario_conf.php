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
                                            <div class="title"><i class="fa fa-gear"></i> Cuenta de Usuario</div>
                                        </div>
                                    </div>
                                    <div class="card-body">


                                        <div class="panel panel-default">
                                            <div class="panel-heading">Parametrizacion Usuario</div>
                                            <div class="panel-body ">
                                                <div role="tabpanel" >
                                                    <!-- Nav tabs -->
                                                    <ul class="nav nav-tabs" role="tablist">
                                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Configurar Establecimientos</a></li>
                                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Configurar Servicios</a></li>

                                                    </ul>
                                                    <!-- Tab panes -->
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane active" id="home">
                                                            <div class="col-xs-12 col-md-6">
                                                                <?php foreach ($usuario as $user) { ?>
                                                                    <input type="hidden" id="usuario_id" name="usuario_id" value="<?php echo $user->usuario_id ?>">
                                                                    <div class="form-group">
                                                                        <label for="usuario">Usuario Seleccionado</label>
                                                                        <input type="text" class="form-control" disabled="disabled" value="<?php echo $user->nombre . " " . $user->apepat ?>">

                                                                    </div>

                                                                <?php } ?>
                                                                <div class="form-group">
                                                                    <label for="establecimiento_id">Establecimiento</label>
                                                                    <select class="form-control" name="establecimiento_id" id="establecimiento_id" style="width: 100%">
                                                                        <?php foreach ($establecimientos as $estab) { ?>
                                                                            <option value=<?php echo $estab->establecimiento_id; ?>><?php echo $estab->nombre; ?></option>
                                                                        <?php } ?>
                                                                    </select>
                                                                    <button id="add_establecimiento" class="form-control btn btn-primary">add</button>
                                                                </div>




                                                            </div>
                                                            <div class="col-xs-12 col-md-6">
                                                                <table id="tablaEstablecimiento" class="table table-striped table-hover table-condensed">
                                                                    <thead>
                                                                    <th>#</th>
                                                                    <th>Establecimiento</th>
                                                                    <th>Accion</th>
                                                                    </thead>


                                                                </table>



                                                            </div>

                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="profile">
                                                            <div class="col-xs-12 col-md-6">
                                                                <?php foreach ($usuario as $user) { ?>
                                                                    <input type="hidden" id="usuario_id" name="usuario_id" value="<?php echo $user->usuario_id ?>">
                                                                    <div class="form-group">
                                                                        <label for="usuario">Usuario Seleccionado</label>
                                                                        <input type="text" class="form-control" disabled="disabled" value="<?php echo $user->nombre . " " . $user->apepat ?>">

                                                                    </div>

                                                                <?php } ?>

                                                                <div class="form-group">
                                                                    <label for="establecimientos_id1">Establecimiento</label>
                                                                    <select class="form-control" name="establecimiento_id1" id="establecimiento_id1" style="width: 100%">

                                                                    </select>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="servicio_id">Establecimiento</label>
                                                                    <select class="form-control" name="servicio_id" id="servicio_id" style="width: 100%">

                                                                    </select>
                                                                    <button class="form-control btn btn-primary" id="add_servicio">add</button>

                                                                </div>




                                                            </div>
                                                            <div class="col-xs-12 col-md-6">
                                                                <table id="tablaServicio" class="table table-striped table-hover table-condensed">
                                                                    <thead>
                                                                    <th>#</th>
                                                                    <th>Servicio</th>
                                                                    <th>Establecimiento</th>
                                                                    <th>Accion</th>
                                                                    </thead>


                                                                </table>



                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>






                                            </div>
                                            <div class="panel-footer">
                                                <div class="box-tools m-b-15">
                                                    <div class="input-group">
                                                       <!-- <input type="submit"class="btn btn-primary" value="Agregar">-->


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
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/ace.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/mode-html.js"); ?>"></script>
                    <script type="text/javascript" src="<?php echo base_url("resources/lib/js/ace/theme-github.js"); ?>"></script>

                    <script src="<?php echo base_url("resources/lib/js/moment-with-locales.js"); ?>"></script>
                    <script src="<?php echo base_url("resources/lib/js/bootstrap-datetimepicker.js"); ?>"></script>


                    <script type="text/javascript">
                        $(document).ready(function () {
                            cargar_establecimientos();
                            cargar_establecimientos1();
                            cargar_servicios();
                            /* INICIO TAB ESTABLECIMIENTOS */
                            $("#add_establecimiento").click(function () {
                                establecimiento_id = $("#establecimiento_id").val();
                                usuario_id = $("#usuario_id").val();
                                //alert("Establecimiento:" + establecimiento_id);

                                $.ajax("http://localhost:8888/his/index.php/administrador/usuario/save_ue?usuario_id=" + usuario_id + "&establecimiento_id=" + establecimiento_id, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        cargar_establecimientos();
                                        cargar_establecimientos1();
                                        cargar_servicios();
                                        //alert(result);
                                        /* $("#mensaje").html("" + result);
                                         if ($("#mensaje").val() != null) {
                                         setTimeout(function () {
                                         $("#mensaje").html("");
                                         }, 5000);
                                         }*/
                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }
                                });
                            });
                            function cargar_establecimientos() {
                                $valor = $("#usuario_id").val();
                                $.ajax('http://localhost:8888/his/index.php/administrador/usuario/enviar_establecimientos?id=' + $valor, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        //console.log("El valor enviado es:", result);
                                        $("#tablaEstablecimiento").empty();
                                        $("#tablaEstablecimiento").append("<thead><th>#</th><th>Establecimiento</th><th>Accion</th></thead><tbody>");
                                        $.each(result, function (index, value) {
                                            //console.log(value.establecimiento_id);
                                            //console.log(value.nombre);
                                            $("#tablaEstablecimiento").append("<tr>\n\
                                                                                <td>" + value.establecimiento_id + "</td>\n\
                                                                                <td>" + value.nombre + "</td>\n\
                                                                                <td>" + "<button class='delete btn btn-default btn-xs' value='" + value.establecimiento_id + "'>eliminar</button>" + "</td>\n\            \n\
                                                                                </tr>");
                                        });
                                        $("#tablaEstablecimiento").append("</tbody>");
                                        //FUNCION ELIMINAR ESTABLECIMIENTOS SELECCIONADOS
                                        $(".delete").click(function () {
                                            var establecimiento_id = $(this).attr('value');
                                            var usuario_id = $("#usuario_id").val();
                                            //console.log(establecimiento_id + usuario_id);
                                            $.ajax("http://localhost:8888/his/index.php/administrador/usuario/delete_ue?usuario_id=" + usuario_id + "&establecimiento_id=" + establecimiento_id, {
                                                type: "post",
                                                dataType: 'json',
                                                contentType: 'application/json',
                                                mimeType: 'application/json',
                                                success: function (result) {
                                                    cargar_establecimientos();
                                                    cargar_establecimientos1();
                                                    cargar_servicios();
                                                   // alert(result);
                                                   
                                                },
                                                error: function (result) {
                                                    console.error("Errores:", result);
                                                }
                                            });



                                        });

                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }


                                });

                            }

                            /* FIN TAB ESTABLECIMIENTOS */

                            /* INICIO TAB SERVICIOS */

                            function cargar_servicios() {
                                $valor = $("#usuario_id").val();
                                $.ajax('http://localhost:8888/his/index.php/administrador/usuario/carga_servicios?id=' + $valor, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        //console.log("El valor enviado es:", result);
                                        $("#tablaServicio").empty();
                                        $("#tablaServicio").append("<thead><th>#</th><th>Servicio</th><th>Establecimiento</th><th>Accion</th></thead><tbody>");
                                        $.each(result, function (index, value) {
                                            //console.log(value.establecimiento_id);
                                            //console.log(value.nombre);
                                            $("#tablaServicio").append("<tr>\n\
                                                                                <td>" + value.servicio_id + "</td>\n\
                                                                                <td>" + value.servicio + "</td>\n\
                                                                                <td>" + value.establecimiento + "</td>\n\
                                                                                <td>" + "<button button class='delete btn btn-default btn-xs' value='" + value.servicio_id + "'>eliminar</button>" + "</td>\n\            \n\
                                                                                </tr>");
                                        });
                                        $("#tablaServicio").append("</tbody>");
                                        
                                        $(".delete").click(function(){
                                            var servicio_id = $(this).attr('value');
                                            var usuario_id = $("#usuario_id").val();
                                            //console.log(establecimiento_id + usuario_id);
                                            $.ajax("http://localhost:8888/his/index.php/administrador/usuario/delete_us?usuario_id=" + usuario_id + "&servicio_id=" + servicio_id, {
                                                type: "post",
                                                dataType: 'json',
                                                contentType: 'application/json',
                                                mimeType: 'application/json',
                                                success: function (result) {
                                                    //cargar_establecimientos();
                                                    //cargar_establecimientos1();
                                                    cargar_servicios();
                                                    //alert(result);
                                                   
                                                },
                                                error: function (result) {
                                                    console.error("Errores:", result);
                                                }
                                            });
                                           
                                           
                                        });
                                        
                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }
                                });
                            }

                            function cargar_establecimientos1() {
                                $valor = $("#usuario_id").val();
                                $.ajax('http://localhost:8888/his/index.php/administrador/usuario/enviar_establecimientos?id=' + $valor, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        //console.log("El valor enviado es:", result);
                                        $("#establecimiento_id1").empty();
                                        $("#establecimiento_id1").append("<option value=0 selected='selected' disabled>-- Seleccionar Establecimiento --</option>");
                                        $.each(result, function (index, value) {
                                            //console.log(value.establecimiento_id);
                                            //console.log(value.nombre);
                                            $("#establecimiento_id1").append("<option value='" + value.establecimiento_id + "'>" + value.nombre + "</option");
                                        });
                                        //$("#tablaEstablecimiento").append("</tbody>");

                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }
                                });
                            }

                            $("#establecimiento_id1").change(function () {
                                //alert("cambiado"+$("#establecimiento_id1").val());
                                console.log("ESTABLECIMIENTO ID CAMBIADO");
                                $valor = $("#establecimiento_id1").val();
                                $.ajax('http://localhost:8888/his/index.php/administrador/usuario/enviar_servicios?id=' + $valor, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        //console.log("El valor enviado es:", result);
                                        $("#servicio_id").empty();
                                        $("#servicio_id").append("<option value=0 selected='selected' disabled>-- Seleccionar Servicio --</option>");
                                        $.each(result, function (index, value) {
                                            console.log(value.servicio_id);
                                            console.log(value.nombre);
                                            $("#servicio_id").append("<option value='" + value.servicio_id + "'>" + value.nombre + "</option");
                                        });
                                        //$("#tablaEstablecimiento").append("</tbody>");

                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }
                                });
                            });
                            $("#add_servicio").click(function () {
                                servicio_id = $("#servicio_id").val();
                                usuario_id = $("#usuario_id").val();
                                $.ajax("http://localhost:8888/his/index.php/administrador/usuario/save_us?usuario_id=" + usuario_id + "&servicio_id=" + servicio_id, {
                                    type: "post",
                                    dataType: 'json',
                                    contentType: 'application/json',
                                    mimeType: 'application/json',
                                    success: function (result) {
                                        cargar_servicios();
                                        //alert(result);
                                        /* $("#mensaje").html("" + result);
                                         if ($("#mensaje").val() != null) {
                                         setTimeout(function () {
                                         $("#mensaje").html("");
                                         }, 5000);
                                         }*/
                                    },
                                    error: function (result) {
                                        console.error("Errores:", result);
                                    }
                                });
                            });
                            /** INICIO TAB SERVICIOS **/



                        });
                    </script>
                    </body>

                    </html>
