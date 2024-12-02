<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>📖 Read is Wisdom</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/css/font.css">
    <link rel="stylesheet" href="public/css/style.violet.css" id="theme-stylesheet">


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
            </ul>
        </nav>
    </div>
</body>
</html>