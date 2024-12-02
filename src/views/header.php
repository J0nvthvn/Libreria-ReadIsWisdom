<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>📖 Read is Wisdom</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/css/font.css">
    <link rel="stylesheet" href="public/css/style.violet.css" id="theme-stylesheet">
    <link rel="shortcut icon" href="img/favicon.ico">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">


</head>
<body>
    <header class="header">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid d-flex align-items-center justify-content-between">
                <div class="navbar-header">
                    <a href="index.php" class="navbar-brand">
                        <div class="brand-text brand-big visible text-uppercase"><strong class="text-primary">READ IS</strong><strong>WISDOM</strong></div>
                        <div class="brand-text brand-sm"><strong class="text-primary">R</strong><strong>W</strong></div>
                    </a>
                    <button class="sidebar-toggle"><i class="fas fa-bars"></i></button>
                </div> 

                <div class="right-menu list-inline no-margin-bottom">
					<!-- Log out               -->
					<div class="list-inline-item logout"> <a id="logout" href="salir.php" class="nav-link"> <span class="d-none d-sm-inline">Cerrar sessión </span><i class="icon-logout"></i></a></div>
				</div>
                
            </div>
        </nav>
    </header>
    <div class="d-flex align-items-stretch">
        <nav id="sidebar">
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="public/images/student.png" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h5">Bienvenido,</h1>
                    <p>Administrador</p>
                </div>
            </div>
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
						<i class="fas fa-fw fa-cog"></i>
						<span>Ventas</span>
						<i class="fas fa-angle-down fa-lg float-right"></i>
					</a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="...">Nueva venta</a>
							<a class="collapse-item" href="...">Ventas</a>
						</div>
					</div>
                </li>

                <li class="nav-item">
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
						<i class="fas fa-fw fa-wrench"></i>
						<span>Productos</span>
						<i class="fas fa-angle-down fa-lg float-right"></i>
					</a>
					<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="registro_producto.php">Nuevo Producto</a>
							<a class="collapse-item" href="lista_productos.php">Productos</a>
						</div>
					</div>
				</li>

                <li class="nav-item">
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClientes" aria-expanded="true" aria-controls="collapseUtilities">
						<i class="fas fa-users"></i>
						<span>Clientes</span>
						<i class="fas fa-angle-down fa-lg float-right"></i>
					</a>
					<div id="collapseClientes" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="registro_cliente.php">Nuevo Clientes</a>
							<a class="collapse-item" href="lista_cliente.php">Clientes</a>
						</div>
					</div>
				</li>

                <li class="nav-item">
					<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProveedor" aria-expanded="true" aria-controls="collapseUtilities">
						<i class="fas fa-hospital"></i>
						<span>Proveedor</span>
						<i class="fas fa-angle-down fa-lg float-right"></i>
					</a>
					<div id="collapseProveedor" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="registro_proveedor.php">Nuevo Proveedor</a>
							<a class="collapse-item" href="lista_proveedor.php">Proveedores</a>
						</div>
					</div>
				</li>

                <li class="nav-item">
					<a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseUsuarios" aria-expanded="true">
						<i class="fas fa-user"></i>
						<span>Usuarios</span>
						<i class="fas fa-angle-down fa-lg float-right"></i>
					</a>
					<div id="collapseUsuarios" class="collapse">
						<div class="bg-white py-2 collapse-inner">
							<a class="collapse-item" href="registro_usuario.php">Nuevo Usuario</a>
							<a class="collapse-item" href="lista_usuarios.php">Usuarios</a>
						</div>
					</div>
				</li>

                <li class="nav-item">
					<a class="nav-link" href="configuracion.php" aria-expanded="true">
						<i class="fas fa-tools"></i>
						<span>Configuración</span>
					</a>
				</li>

            </ul>
        </nav>
    
        <div class="page-content">
            <div class="page-header">
