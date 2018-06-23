<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="DatosGenerales.aspx.cs" Inherits="Inscripcion.DatosGenerales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    

<%-- Datos Generales--%>

    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>
    
    <style type="text/css">
        input[type="radio"],
        input[type="checkbox"] {
            display: none;
        }

        label:before {
            font-family: 'FontAwesome';
            width: 1.25em;
            display: inline-block;
        }

        input[type="radio"] + label:before {
            content: "\f10c"; /* circle-blank */
        }

        input[type="radio"]:checked + label:before {
            content: "\f111"; /* circle */
        }

        input[type="checkbox"] + label:before {
            content: "\f096"; /* check-empty */
        }

        input[type="checkbox"]:checked + label:before {
            content: "\f046"; /* check */
        }
        .auto-style5 {
            width: 800px;
            max-width: 90%;
            margin: 30px auto 21px auto;
        }
    </style>

            <div class="secciones">

                <article id="tab2">
                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Datos Generales"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-md-6" align="right">
                            <asp:Label ID="Label14" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Tipo de Sangre:"></asp:Label>

                        </div>
                        <div class="col-md-3" align="left">

                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="tipoSangre" Visible="True" required AutoPostBack="True" >
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="A+">A+</asp:ListItem>
                                <asp:ListItem Value="A-">A-</asp:ListItem>
                                <asp:ListItem Value="B+">B+</asp:ListItem>
                                <asp:ListItem Value="B-">B-</asp:ListItem>
                                <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                <asp:ListItem Value="O+">O+</asp:ListItem>
                                <asp:ListItem Value="O-">O-</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="tipoSangre" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AB" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6" align="right">
                            <asp:Label ID="Label13" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Número de Seguro Social (NSS):"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 15282123456</span>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox ID="alc_NSS" MaxLength="11" class="form-control" pattern="\d{11}"  title="Sólo puedes introducir números y deben de ser 11 dígitos." runat="server" Style="text-transform: uppercase" Width="100%" onkeypress="return SoloNumeros(event)"  required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="sdsd" ControlToValidate="alc_NSS" ErrorMessage="Número de Seguro Social incorrecto." Display="Dynamic"
                                ValidationExpression="\d{11}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AB" />

                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label39" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Datos del Tutor"></asp:Label>
                                    <br />
                                </b></span>
                        </div>

                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="ddddd" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Nombre del Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: JUAN PEREZ DOMINGUEZ</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="nomb_Tutor_ID" class="form-control" Width="100%" runat="server" Style="text-transform: uppercase" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." MaxLength="50" onkeypress="return pulsar(event)" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"
                                ControlToValidate="nomb_Tutor_ID" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan letras, sin acentos."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AB" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label360" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Colonia de tu Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: HUAPALCALCO</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="col_Tutor_ID" class="form-control" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." Width="100%" runat="server" Style="text-transform: uppercase" onkeypress="return pulsar(event)" MaxLength="40" required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
                                ControlToValidate="col_Tutor_ID" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan letras, sin acentos."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AB" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label36" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Dirección de tu Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: CALLE LOS ENCINOS NO. 20</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="dire_Tutor_ID" class="form-control" pattern="^[A-Z0-9 a-z]*$"  title="Sólo se aceptan letras, sin acentos y números" Width="100%" runat="server" Style="text-transform: uppercase" MaxLength="40" onkeypress="return pulsar(event)" required></asp:TextBox>
                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label8" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado de tu Tutor:"></asp:Label>
                        </div>




                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="est_Tutor_ID" OnSelectedIndexChanged="est_Tutor_ID_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="est_Tutor_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AB" />

                        </div>



                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnActAlumOtroEst" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#ModalNuevoEstado"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="ModalNuevoEstado" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label1" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Estado"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label2" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: HIDALGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtEstadoN" MaxLength="50" class="form-control" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." Width="100%" runat="server" Style="text-transform: uppercase"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                        ControlToValidate="txtEstadoN" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NE" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEstadoN" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Estado " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NE" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="Btn_GuardarEN" Width="91px" runat="server" Text="Agregar" BackColor="#800020"  data-target="#exampleModalCenter"
                                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" ValidationGroup="NE" onclick="Btn_GuardarEN_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label9" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio de tu Tutor:"></asp:Label>
                        </div>

                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="mun_Tutor_ID"  AutoPostBack="True">
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="mun_Tutor_ID" ErrorMessage="Selecciona una opción"
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AB" />
                        </div>


                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnActAlumOtroMun" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#ModalNuevoMunicipio"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />



                            <!-- Modal -->
                            <div class="modal fade" id="ModalNuevoMunicipio" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label3" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Municipio"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label4" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Municipio nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: TULANCINGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtMuniN" class="form-control" MaxLength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos."  Width="100%" runat="server" Style="text-transform: uppercase"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                        ControlToValidate="txtMuniN" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NM" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMuniN" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Estado " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NM" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="BtnGuardar_MN" Width="91px" runat="server" Text="Agregar" BackColor="#800020"  data-target="#exampleModalCenter"
                                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" ValidationGroup="NM" OnClick="BtnGuardar_MN_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label34" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono de tu Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 7751122334</span>

                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox MaxLength="10" ID="tel_Tutor_ID" pattern="\d{10}"  title="Ingresa el número de teléfono a 10 dígitos."  class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return SoloNumeros(event);return pulsar(event);"  required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" Font-Bold="true" ControlToValidate="tel_Tutor_ID"
                                ErrorMessage="Ingresa el número de teléfono a 10 dígitos." ValidationExpression="\d{10}" ForeColor="#993333" Style="font-size: 13px"
                                SetFocusOnError="True" ValidationGroup="AB" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                    <br />
                    <center>
                            <div class="auto-style5">    
                                    <asp:Button ID="btnGuardar" runat="server" aling="right"  Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AB" OnClick="btnAB_Click"/>                             
                            </div>
                    </center>

                </article>
            </div>



        <script language="javascript" type="text/javascript">
        
        function SoloNumeros(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode < 48 || charCode > 57)
                return false;
            return true;

        }

        function pulsar(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            return (tecla != 13);
        }
    </script>





</asp:Content>
