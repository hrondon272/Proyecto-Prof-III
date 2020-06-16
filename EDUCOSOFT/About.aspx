<%@ Page Title="Acerca de Nosotros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EDUCOSOFT.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div style="text-align:center">

        <img src="IMG/nosotros.jpg" alt="Alternate Text" style="height:200px; width:400px"/>
        
        <h3>EDUCOSOFT es un software de tipo educativo que permite las gestion de procesos academicos tales como matricula, registro de notas y visualizacion de participantes de los cursos.</h3>
        <p>La creacion de software educativo constituye una herramienta que potencia el entorno academico y fomenta la interaccion entre los participantes de una institucion.</p>
    </div>
</asp:Content>
