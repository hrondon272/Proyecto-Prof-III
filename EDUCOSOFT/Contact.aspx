<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EDUCOSOFT.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <img src="IMG/contactanos.jpg" alt="Alternate Text" style="width: 206px; height: 97px" />

    <h3>Medios de Contacto.</h3>
    <address>
        Av Gran Colombia<br />
       <br />
        <abbr title="Phone">(+57) 3104567832</abbr>
        <br />
        <a href="https://www.google.com/maps/@7.8932385,-72.4962624,15z">Encuentranos en el mapa</a>
    </address>

    <address>
        <strong>Correo Electronico:</strong>   <a href="mailto:Support@example.com">EducosoftUP@UPDA.edu.co</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">MarketingEducosoftUP@UPDA.edu.co</a>
    </address>
</asp:Content>
