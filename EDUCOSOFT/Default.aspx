<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EDUCOSOFT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div >
        <div id="principaltitulo">
            <h1 id="lblUniversidad">"Nombre de la Universidad"</h1><br />
           </div>
        <div id="principalimg">
            <img class="img-principal" id="imgUniversidad" src="/IMG/principal.jpg" />
        </div>
    </div>

    <div class="row">

        <div class="col-md-4">
            <h2>Conoce Nuestro entorno Educativo</h2>
            <p>
                A continuacion te presentamos una galeria de nuestro entorno universitario
              </p>
            <p>
                <a class="btn btn-default" href="http://www.gcronico.unal.edu.co/galeria/">Abrir Galeria &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Nuestras Sedes</h2>
            <p>
                Te invitamos a conocer nuestras sedes, ubicadas en diferentes puntos del territorio colombiano
            </p>
            <p>
                <a class="btn btn-default" href="https://www.altillo.com/universidades/universidades_colombia.asp">Sede principal &raquo;</a>
            </p>
        </div>
        
        <br />
    </div>
    <p>&copy -<%: DateTime.Now.Date %></p>
    <br />
    <br />
    <br />

</asp:Content>
