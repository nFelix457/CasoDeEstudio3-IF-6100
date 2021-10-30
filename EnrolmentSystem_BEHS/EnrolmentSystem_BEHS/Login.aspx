<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EnrolmentSystem_BEHS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=2, maximum-scale=1, minimum-scale=1" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">

    <link href="CSS/Estilo.css" rel="stylesheet" />

</head>
<body>

    <nav class="navbar navbar-expand-md">
        <a class="navbar-brand" href="/Login.aspx">&nbsp;&nbsp;<img src="/Imagenes/Logo.png" width="70" height="100" alt="" />
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"><img src="/Imagenes/Tog.png"/ width="35" height="35" aling="center"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a href="Register.aspx" class="btn navbar-btn" style="color: white">
                        <img src="/Imagenes/User.png" width="20" height="20" alt="" />&nbsp;&nbsp;&nbsp;Registrarse</a>
                </li>
            </ul>
        </div>
    </nav>


     <div class="container">
        <div class="row g-4">
            <div class="col-md-12 col-lg-12">
                <br />
                <br />
                <h3 style="text-align: center;">Admition Process System <%= (new DateTime()).Date.Year %></h3>
                <h3 style="text-align: center;">Login</h3>
                <br />



                <form class="form-horizontal card" runat="server" style="background-size: 10% 10%; width: 22rem;">

                    <div class="row g-2">

                        <div class="col-12">
                            <label for="correo_electronico_txt" class="form-label control-label">Correo Electronico:</label>
                            <input type="email" runat="server" class="form-control" id="correo_electronico_txt" placeholder="Introduzca su correo electrónico" required="required" maxlength="100" />

                        </div>


                        <div class="form-group">
                            <label class="control-label col-12" for="pwd">Contraseña:</label>
                            <div class="col-12">
                                <input class="form-control" runat="server" id="contrasenna_txt" type="password" placeholder="Introduzca su contraseña" required="required" data-toggle="password" maxlength="30" />
                                <input id="check1" for="contrasenna_txt" runat="server" type="checkbox" />
                                Mostrar Contraseña
                            </div>
                        </div>

                        <script>
                            $("#check1").on("change", function () {
                                if ($(this).prop('checked')) {
                                    $("#contrasenna_txt").attr("type", "text");
                                } else {
                                    $("#contrasenna_txt").attr("type", "password");
                                }
                            });
                        </script>

                        <div class="form-group">
                            <asp:Label class="control-label col-sm-8" ID="Lbl_Error" runat="server" Text="" ForeColor="DarkBlue"></asp:Label>
                        </div>

                        <div align="center">
                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-10">
                                    <div class="col-sm-4">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </div>
</body>
</html>
