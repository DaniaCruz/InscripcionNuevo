<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="EscuelaProcedencia.aspx.cs" Inherits="Inscripcion.EscuelaProcedencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
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
        .auto-style6 {
            margin-top: 0;
        }
    </style>
         
            <div class="secciones">
                <article id="tab3">
                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label42" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Escuela de Procedencia"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label20" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado:"></asp:Label>
                        </div>

                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="est_Escu_ID" AutoPostBack="True" OnSelectedIndexChanged="est_Escu_ID_SelectedIndexChanged">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="est_Escu_ID" ErrorMessage="Selecciona opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>


                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnActAlumOtroEst" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#exampleModalCenter"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                                                    <asp:TextBox ID="txtEstadoN" class="form-control" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" ValidationGroup="NE" > </asp:TextBox>
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
                                                BorderColor="#800020" ForeColor="#FFFFCC" Autopostback="true" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" ValidationGroup="NE" OnClick="Btn_GuardarEN_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label21" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Municipio:"></asp:Label>
                        </div>

                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%"  ID="mun_Escu_ID" AutoPostBack="True" OnSelectedIndexChanged="mun_Escu_ID_SelectedIndexChanged">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="mun_Escu_ID" ErrorMessage="Selecciona opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>

                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnActAlumOtroMun" Width="91px" autopostback="true" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#ModalNuevoMunicipio"
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
                                                    <asp:TextBox ID="txtMuniN" class="form-control" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" > </asp:TextBox>
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

                                            <asp:Button ID="Btn_GuardarMN" Width="91px" runat="server" Text="Agregar" BackColor="#800020" 
                                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" ValidationGroup="NM" OnClick="Btn_GuardarMN_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label22" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Nombre de la institución:"></asp:Label>
                        </div>
                        
                       
                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%"  ID="esc_ID" AutoPostBack="True" >
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="esc_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>
                               
                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnOtraInst" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#ModalNuevaInst"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />



                            <!-- Modal -->
                            <div class="modal fade" id="ModalNuevaInst" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label5" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Institución"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label6" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Institución nueva:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: TOLLANCINGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtInstN" class="form-control" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" nkeypress="return justNumbers(event);"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                        ControlToValidate="txtInstN" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NI" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtInstN" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa nombre de la Institución " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NI" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="Btn_GuardarIN" Width="91px" runat="server" Text="Agregar" BackColor="#800020"  data-target="#exampleModalCenter"
                                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" ValidationGroup="NI" OnClick="Btn_GuardarIN_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label23" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Propedéutico cursado:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">

                            <asp:DropDownList runat="server" class="form-control" Width="100%" required ID="alc_EspBachi" AutoPostBack="True" >
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="EXACTAS">EXACTAS</asp:ListItem>
                                <asp:ListItem Value="CONTABLES">CONTABLES</asp:ListItem>
                                <asp:ListItem Value="BIOLÓGICAS">BIOLÓGICAS</asp:ListItem>
                                <asp:ListItem Value="SOCIALES">SOCIALES</asp:ListItem>
                                <asp:ListItem Value="GENERAL">GENERAL</asp:ListItem>
                                <asp:ListItem>INFORMÁTICA</asp:ListItem>
                                <asp:ListItem>OTRO</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="alc_EspBachi" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="True" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label24" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Año en que concluiste:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 2015</span>
                        </div>
                        <div class="col-md-2" align="left">
                            <asp:TextBox MaxLength="4" ID="txtAnnoConcluido" pattern="\d{4}"  title="Sólo se aceptan números. Deben ser 4 dígitos." class="form-control" Width="100%" runat="server" onkeypress="return SoloNumeros(event)" ValidationGroup="AC"  required> </asp:TextBox>
                            <asp:RegularExpressionValidator ID="ttttt" ControlToValidate="txtAnnoConcluido" ErrorMessage="Año incorrecto."
                                Display="Dynamic" ValidationExpression="\d{4}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AC" />

                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label25" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Promedio con el que concluiste:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 8.5</span>

                        </div>
                        <div class="col-md-2" align="left">
                            <asp:TextBox MaxLength="4" ID="alc_PromBachi" runat="server" class="form-control" Width="100%" onkeypress="return SoloNumeros(event)"></asp:TextBox>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4" align="right">
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:CustomValidator ID="CustomValiddfdfdfdfator1" runat="server" ControlToValidate="alc_PromBachi" ErrorMessage="Promedio inválido. Sólo debes ingresar un entero con 1 decimal en caso de que tu promedio sea menor a 10. Si tu promedio es 10, debes ingresar sólo el número entero 10." ValidationGroup="AC"
                                OnServerValidate="val_Promedio_ServerValidate" SetFocusOnError="True" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" Display="Dynamic"></asp:CustomValidator>
                        </div>
                        </div>
                    </div>

                            
                       

                    <br />
                    <center>
                            <div class="auto-style5">               
                                    <asp:Button ID="btnGuardar" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AC" OnClick="btnAC_Click"/>
                            </div>
                    </center>
          

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
