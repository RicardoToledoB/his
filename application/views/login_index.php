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
                                <li class="active">Acceso Sistema</li>
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

                            </li>
                            <li class="dropdown danger">

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
                                <li class="active">
                                    <a href="#">
                                        <span class="icon fa fa-tachometer"></span><span class="title">Dashboard</span>
                                    </a>
                                </li>






                                <li>
                                    <a href="#">
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
                            <span class="title">Log In</span>
                            <div class="description">Ingrese Usuario / Contraseña  de Sistema</div>
                        </div>



                        <div class="row">
                            <div class="col-xs-12">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="card-title">
                                            <div class="title">Acceder al Sistema </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <form class="form-horizontal" method="post" action="login/log_in">
                                            <div class="form-group">
                                                <label for="username" class="col-sm-2 control-label">Usuario</label>
                                                <div class="col-sm-10">
                                                    <input type="username" name="username" class="form-control" id="username" placeholder="Nombre Usuario">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="password" class="col-sm-2 control-label">Contraseña</label>
                                                <div class="col-sm-10">
                                                    <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="establecimiento" class="col-sm-2 control-label">Establecimiento</label>
                                                <div class="col-sm-10">
                                                    <select class="form-control" name="establecimiento_id" style="width: 50%">
                                                        <?php foreach($establecimiento as $estab) {?>
                                                                <option value="<?php echo $estab->establecimiento_id ?>"><?php echo $estab->nombre ?> </option>
                                                        
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-primary">Ingresar</button>
                                                    <button type="button" class="btn btn-danger">Olvide mi Clave</button>
                                                </div>

                                            </div>
                                        </form>
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




                </body>

                </html>
