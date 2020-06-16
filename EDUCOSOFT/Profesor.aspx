<%@ Page Language="C#" Title="Docente" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="EDUCOSOFT.WebForm1" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div style="background-color: #339966;" class="auto-style1">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div style="text-align: center">
                <asp:Label ID="lblBienvenido" runat="server" Text="Bienvenido Docente" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="text-align: center">
                <asp:GridView ID="GridCursos" runat="server" OnSelectedIndexChanged="GridCursos_SelectedIndexChanged" BorderColor="#333333" Width="100%">
                    <Columns>

                        <asp:CommandField ShowSelectButton="True">
                            <ControlStyle Font-Names="Berlin Sans FB" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="lblAsignatura" runat="server" Text="Asignatura"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblGrupo" runat="server" Text="Grupo"></asp:Label>
                <br />
                <asp:TextBox ID="txtAsignatura" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtGrupo" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSelecCurso" runat="server" Text="Buscar Estudiantes" OnClick="btnSelecCurso_Click" />
                <br />
                <br />
                <asp:GridView ID="GridEstudiantes" runat="server" Width="100%" OnSelectedIndexChanged="GridEstudiantes_SelectedIndexChanged">

                    <Columns>

                        <asp:CommandField ShowSelectButton="True">
                            <ControlStyle Font-Names="Berlin Sans FB" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Label ID="lblNombreEstudiante" runat="server" Text="Nombre"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblApellidoEstudiante" runat="server" Text="Apellido"></asp:Label>
                <br />
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblNota" runat="server" Text="Digite Nota del Estudiante"></asp:Label>
                <br />
                <asp:TextBox ID="txtNota" runat="server"></asp:TextBox>

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Insertar Nota" Width="104px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Button ID="btnNotas" runat="server" Text="Ver Listado" OnClick="btnNotas_Click" />
                <br />
                <asp:Label ID="lblNoReg" runat="server" Text="No hay estudiantes asociados a este grupo y asignatura" Visible="false"></asp:Label>
                <br />
                <br />
                <br />
                <asp:GridView ID="GridNotas" runat="server" Width="100%" OnSelectedIndexChanged="GridNotas_SelectedIndexChanged">
                    <Columns>

                        <asp:CommandField ShowSelectButton="True">
                            <ControlStyle Font-Names="Berlin Sans FB" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <br />
                Estudiante&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblnewNota" runat="server" Text="Nueva nota"></asp:Label>
                <br />
                <asp:TextBox ID="txtIdEst" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtnewNota" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Modificar Nota" OnClick="Button2_Click" />
            </div>
        </div>
   
    <p>
        &nbsp;
    </p>
</asp:Content>

