<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <div class="card-title">
                    <div class="title">Cuenta de Usuario</div>
                </div>
            </div>
            <div class="card-body">
                <div class="panel panel-default">
                    <div class="panel-heading">Listado Usuarios</div>
                    <div class="panel-body table-responsive">
                        <div class="box-tools m-b-15">
                            <div class="input-group">
                                <a href="<?php echo (base_url().'index.php/administrador/usuario/nuevo')?>" class="btn btn-primary">Nuevo</a>
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
                                    <th>1er Apellido</th>
                                    <th>2do Apellido</th>
                                    <th>Username</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($usuario as $user) { ?>
                                    <tr>
                                        <th scope="row"><?php echo $user->usuario_id ?></th>
                                        <td><?php echo $user->nombre ?></td>
                                        <td><?php echo $user->apepat ?></td>
                                        <td><?php echo $user->apemat ?></td>
                                        <td><?php echo $user->username ?></td>
                                        <td>
                                            <div class="btn-group" role="group" aria-label="Default button group">
                                                <button type="button" class="btn btn-primary btn-xs"><i class="fa fa-search"></i></button>
                                                <button type="button" class="btn btn-info btn-xs"><i class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </td>
                                    </tr>

                                <?php } ?>

                            </tbody>
                        </table>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
