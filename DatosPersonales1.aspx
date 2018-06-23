<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="DatosPersonales1.aspx.cs" Inherits="Inscripcion.DatosPersonales1" %>
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
       .auto-style7 {
           position: relative;
           min-height: 1px;
           float: left;
           width: 50%;
           left: 0px;
           top: 0px;
           padding-left: 15px;
           padding-right: 15px;
       }
    </style>
      <%--  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <asp:UpdatePanel ID="UpdatePanel7"  runat="server">
                            <ContentTemplate>
                                --%>
                            
            <div class="secciones">

                <%-- SRIPT --%>

                <article id="tab1">

                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label33" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Datos Personales"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label28" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="MATRÍCULA:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="alu_NumControl" runat="server" Enabled="false" CssClass="form-control" Style="margin-left: 0px" required></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label26" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="NOMBRE:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="alu_Nombre" Enabled="false" runat="server" required CssClass="form-control" Style="margin-left: 0px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label27" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="CARRERA:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="alu_Esp" runat="server" Enabled="false" required CssClass="form-control" Style="margin-left: 0px"></asp:TextBox>
                        </div>
                        <div class="col-md-1" align="left">
                            <asp:TextBox ID="alu_EspID" runat="server" Enabled="False" required Width="56px" Height="30px" CssClass="auto-style5" Style="margin-left: 18px" Visible="False"></asp:TextBox>
                        </div>
                    </div>






                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label19" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*CURP:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: OIMC970303MHGRCY08</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox MaxLength="18" class="form-control" submit="disabled" ID="alc_Curp" runat="server" Style="text-transform: uppercase" Width="100%" pattern="^[A-Z0-9 a-z]*$" title="Sólo se aceptan letras y números" onkeypress="return pulsar(event)" required></asp:TextBox>

                            <asp:RegularExpressionValidator ID="RequiredFieldValidator110" runat="server" ControlToValidate="alc_Curp"
                                ErrorMessage="Sólo se aceptan letras y números." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>
                    </div>


                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label1" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado Civil:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="alc_EdoCivil" AutoPostBack="True">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">SOLETERO(A)</asp:ListItem>
                                <asp:ListItem Value="2">CASADO(A)</asp:ListItem>
                                <asp:ListItem Value="3">DIVORCIADO(A)</asp:ListItem>
                                <asp:ListItem Value="4">VIUDO(A)</asp:ListItem>
                                <asp:ListItem Value="5">UNION LIBRE</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="alc_EdoCivil" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label2" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Edad:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 22</span>
                        </div>
                        <div class="col-md-3" align="left">
                        <asp:TextBox ID="alc_edad" class="form-control" runat="server" MaxLength="2" Width="100%"  onkeypress="return SoloNumeros(event);return pulsar(event);" required></asp:TextBox>

                                
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label3" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Tienes alguna discapacidad?:"></asp:Label>
                        </div>

                        <div class="col-md-2" align="left">
                            <asp:RadioButtonList ID="rb_dis_ID" runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px" AutoPostBack="true" OnSelectedIndexChanged="rb_dis_ID_SelectedIndexChanged">
                                <asp:ListItem id="rbSi" Text="Si" Value="Si" />
                                <asp:ListItem id="rbNo" Text="No" Value="No" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ControlToValidate="rb_dis_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />

                        </div>
                        <div class="col-md-2" align="right">
                            <asp:Label ID="Label4" runat="server" Visible="false" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál?:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="dis_ID" Visible="false" AutoPostBack="True">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label5" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Hablas alguna lengua indígena?:"></asp:Label>
                        </div>

                        <div class="col-md-2" align="left">
                            <asp:RadioButtonList ID="rb_lei_ID" runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px" AutoPostBack="true" OnSelectedIndexChanged="rb_lei_ID_SelectedIndexChanged">
                                <asp:ListItem id="rSi" Text="Si" Value="Si" />
                                <asp:ListItem id="rNo" Text="No" Value="No" />

                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator60" ControlToValidate="rb_lei_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />
                        </div>
                        <div class="col-md-2" align="right">
                            <asp:Label ID="Label6" runat="server" Style="font-size: 15px; letter-spacing: 1px" Visible="false" Text="¿Cuál?:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="lei_ID" Visible="false" AutoPostBack="True">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator62" ControlToValidate="lei_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" Visible="false" />
                        </div>

                    </div>
                    <br />
                    <br />







                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label91" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Domicilio Actual"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />
                    </div>
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label92" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Calle:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: EMILIANO ZAPATA</span>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox ID="alc_Calle" class="form-control" runat="server" Style="text-transform: uppercase" pattern="^[A-Z a-z]*$" title="Sólo se aceptan letras" onkeypress="return pulsar(event)" required MaxLength="30"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="alc_Calle" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan letras."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>
                        <%--<div class="col-md-3" align="right">
                            <asp:Label ID="Label11" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Núm. Exterior:"></asp:Label>
                        </div>--%>
                        <div class="col-md-2" align="left">
                            <asp:TextBox ID="alc_NumExt" class="form-control" runat="server" placeholder="Núm. Ext." Style="text-transform: uppercase" Width="100%" onkeypress="return pulsar(event)" pattern="^[A-Z0-9 a-z]*$" title="Sólo se aceptan letras y números" required
                                MaxLength="10"></asp:TextBox>


                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="alc_NumExt"
                                ErrorMessage="Sólo se aceptan letras y números." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-2" align="left">

                            <asp:TextBox ID="alc_NumInt" class="form-control" runat="server" placeholder="Núm. Int." Style="text-transform: uppercase" Width="100%" onkeypress="return pulsar(event)" pattern="^[A-Z0-9 a-z]*$" title="Sólo se aceptan letras y números" required MaxLength="10"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="alc_NumInt"
                                ErrorMessage="Sólo se aceptan letras y números." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>

                    </div>

                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label93" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Colonia:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: HUAPALCALCO</span>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox ID="alc_Colonia" class="form-control" runat="server" Style="text-transform: uppercase" Width="100%" onkeypress="return pulsar(event)" pattern="^[A-Z a-z]*$" title="Sólo se aceptan letras" required MaxLength="30"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="vkakaka" runat="server" ControlToValidate="alc_Colonia" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan letras." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$"
                                SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label94" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Localidad:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: NAPATECO</span>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox ID="alc_Localidad" runat="server" class="form-control" Width="100%" Style="text-transform: uppercase" onkeypress="return pulsar(event)" pattern="^[A-Z a-z]*$" title="Sólo se aceptan letras" required MaxLength="40"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="saaasasasasa" runat="server" ControlToValidate="alc_Localidad"
                                CssClass="text-danger" ErrorMessage="Sólo se aceptan letras." ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label10" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Código Postal:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 43760</span>
                        </div>
                        <div class="col-md-2" align="left">
                            <asp:TextBox ID="alc_CodPostal" class="form-control" MaxLength="5" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return SoloNumeros(event)" pattern="\d{5}" title="Ingresa código postal" required></asp:TextBox>

                            <asp:RegularExpressionValidator ID="val_CP" runat="server" Font-Bold="true" ControlToValidate="alc_CodPostal"
                                ErrorMessage="Ingresa código postal" ValidationExpression="\d{5}" ForeColor="#993333" Style="font-size: 13px"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label95" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado:"></asp:Label>
                        </div>


                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="est_Proced_ID" AutoPostBack="True" OnSelectedIndexChanged="est_Proced_ID_SelectedIndexChanged">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">-A-</asp:ListItem>
                                <asp:ListItem Value="2">-B-</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="est_Proced_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />

                        </div>
                          <div class="col-md-2" align="center">
                            <asp:Button ID="btn_NE_Act" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#AgregarEst_Act"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="AgregarEst_Act" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label9" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Estado"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label11" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: HIDALGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtEst_Act" class="form-control" MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" onkeypress="return pulsar(event)"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
                                                        ControlToValidate="txtEst_Act" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NEA" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEst_Act" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Estado " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NEA" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="btnNE_Act" Width="91px" runat="server" Text="Agregar" BackColor="#800020"   ValidationGroup="NEA" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" OnClick="btnNE_Act_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label96" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio:"></asp:Label>
                        </div>

                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="mun_Proced_ID" AutoPostBack="True">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator43" ControlToValidate="mun_Proced_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" Style="font-size: 13px" ForeColor="#993333" Font-Bold="true" Font-Size="13" InitialValue="0" runat="server" SetFocusOnError="True" ValidationGroup="AA" />
                            <br />
                        </div>
                            <div class="col-md-2" align="center">
                            <asp:Button ID="btn_NM_Act" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#AgregarMuni_Act"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="AgregarMuni_Act" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label7" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Muncipio"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label8" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: HIDALGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtMuni_Actual" class="form-control" MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" onkeypress="return pulsar(event)"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"
                                                        ControlToValidate="txtMuni_Actual" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NMA" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMuni_Actual" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Municipio " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NMA" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="btn_NM_Actual"  Width="91px" runat="server" Text="Agregar" BackColor="#800020"   BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" OnClick="btn_NM_Actual_Click" />
                                           
                                            

                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>



                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label99" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Correo Electrónico:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: ejemplo@hotmail.com</span>
                        </div>
                        <br />
                        <div class="col-md-6" align="left">
                            <asp:TextBox TextMode="Email" ID="alc_correo" class="form-control" runat="server" Width="100%" onkeypress="return pulsar(event)" required MaxLength="50"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="val_Correo" runat="server" ErrorMessage="El correo que ingresaste es incorrecto." ForeColor="#993333" ControlToValidate="alc_correo"
                                Font-Bold="true" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Style="font-size: 13px"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">

                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label16" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Facebook:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: JUAN LÓPEZ</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="alc_facebook" runat="server" class="form-control" Width="100%" onkeypress="return pulsar(event)" Style="text-transform: uppercase" pattern="^[A-Z a-z]*$" title="Sólo se aceptan letras" required MaxLength="50"></asp:TextBox>

                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label97" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono Casa:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 7751122334</span>
                        </div>
                        <div class="col-md-3" align="left">
                            <asp:TextBox MaxLength="10" ID="alc_Tel" class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return SoloNumeros(event)" pattern="\d{10}" title="Ingresa tu número de teléfono a 10 dígitos." required></asp:TextBox>

                            <asp:RegularExpressionValidator ID="val_Telefono" runat="server" Font-Bold="true" ControlToValidate="alc_Tel"
                                ErrorMessage="Ingresa tu número de teléfono a 10 dígitos." ValidationExpression="\d{10}" ForeColor="#993333" Style="font-size: 13px"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label17" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono Celular:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 7751122334</span>
                        </div>
                        <div class="col-md-3" align="left">
                            <asp:TextBox ID="alc_Celular" class="form-control" runat="server" MaxLength="10" Width="100%" Style="text-transform: uppercase" onkeypress="return SoloNumeros(event)" pattern="\d{10}" title="Ingresa tu número de teléfono a 10 dígitos." required></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Font-Size="X-Small" ControlToValidate="alc_Celular"
                                ErrorMessage="Ingresa tu número de teléfono a 10 dígitos." ValidationExpression="\d{10}" ForeColor="#993333" Style="font-size: 13px" SetFocusOnError="True"
                                Font-Bold="true" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="row">
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label32" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px" Text="Lugar de Nacimiento"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label29" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Fecha de Nacimiento:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 03/03/1997</span>
                        </div>
                        <div class="col-md-3" align="left">
                            <asp:TextBox class="form-control" ID="alc_FechaNac" onkeypress="FormatoFecha(this)" runat="server" MaxLength="10" type="text" pattern="[0-9]{1,2}(/|-)[0-9]{1,2}(/|-)[0-9]{4}" title="Ingresa fecha de nacimiento en formato dd/mm/yyyy" required></asp:TextBox>


                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" Font-Size="X-Small" ControlToValidate="alc_FechaNac"
                                ErrorMessage="Fecha incorrecta." ValidationExpression="[0-9]{1,2}(/|-)[0-9]{1,2}(/|-)[0-9]{4}" ForeColor="#993333" Style="font-size: 13px" SetFocusOnError="True"
                                Font-Bold="true" ValidationGroup="AA" Display="Dynamic"></asp:RegularExpressionValidator>

                            <br />


                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label30" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">


                            <asp:DropDownList runat="server" class="form-control" Height="100%" Width="100%" ID="est_Natal_ID" AutoPostBack="True" OnSelectedIndexChanged="est_Natal_ID_SelectedIndexChanged">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="est_Natal_ID" ErrorMessage="Selecciona una opción."
                                Style="font-size: 13px" Display="Dynamic" ForeColor="#993333" Font-Bold="true" InitialValue="0" runat="server" ValidationGroup="AA" />

                           
                        </div>
                   <div class="col-md-2" align="center">
                            <asp:Button ID="btn_NE_Nac" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#AgregarEst_Nac"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="AgregarEst_Nac" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label12" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Estado"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label13" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: HIDALGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtEst_Nac" class="form-control" MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" onkeypress="return pulsar(event)"> </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                        ControlToValidate="txtEst_Nac" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NEN" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEst_Nac" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Estado " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NEN" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="btnNE_Nac" Width="91px" runat="server" Text="Agregar" BackColor="#800020"   ValidationGroup="NEN" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" onclick="btnNE_Nac_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                          
                     
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label31" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio:"></asp:Label>
                        </div>

                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="mun_Natal_ID" AutoPostBack="true">
                                <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                <asp:ListItem Value="1">A</asp:ListItem>
                                <asp:ListItem Value="2">B</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="mun_Natal_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" InitialValue="0" runat="server" ValidationGroup="AA" />
                            <br />
                        </div>

                        
                        <div class="col-md-2" align="center">
                            <asp:Button ID="btn_NM_N" Width="91px" runat="server" Text="Otro" BackColor="#800020" data-toggle="modal" data-target="#AgregarMuni_Nac"
                                BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />


                            <!-- Modal -->
                            <div class="modal fade" id="AgregarMuni_Nac" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <asp:Label ID="Label14" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Agregar Muncipio"></asp:Label>
                                            <br />

                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-5" align="right">
                                                    <asp:Label ID="Label18" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado nuevo:"></asp:Label>
                                                    <br />
                                                    <span style="font-size: 12px">Ejemplo: HIDALGO</span>
                                                </div>
                                                <div class="col-md-6" align="left">
                                                    <asp:TextBox ID="txtMuni_Nac" class="form-control" MaxLength="50" Width="100%" runat="server" Style="text-transform: uppercase" onkeypress="return pulsar(event)" > </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                                        ControlToValidate="txtMuni_Nac" CssClass="text-danger"
                                                        ErrorMessage="Sólo se aceptan letras."
                                                        Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="NMN" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMuni_Nac" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ingresa Municipio " Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="NMN" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">

                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                                            <asp:Button ID="btnNM_Nac" Width="91px" runat="server" Text="Agregar" BackColor="#800020"   ValidationGroup="NMN" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" onclick="btnNM_Nac_Click" />



                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label15" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Lugar de Nacimiento:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: TULANCINGO</span>

                        </div>
                        <div class="auto-style7" align="left">
                            <asp:TextBox ID="alc_LugarNaci" class="form-control" runat="server" Width="100%" onkeypress="return pulsar(event)" Style="text-transform: uppercase" pattern="^[A-Z a-z]*$" title="Sólo se aceptan letras" required MaxLength="30"></asp:TextBox>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="alc_LugarNaci" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan letras." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$"
                                SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>




                    <center>
                            <div class="auto-style5">
                                    <asp:Button ID="btnGuardar" runat="server" aling="center" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AA" OnClick="btnGuardar_Click"/>
                                 </div>

                                 </center>
                </article>
            </div>
       
        
                            <%--</ContentTemplate>
                        </asp:UpdatePanel>
--%>





    <%-- SRIPT --%>

 

    <script language="javascript" type="text/javascript">
        function FormatoFecha(obj) {
            var tecla = window.event.keyCode;
            if (tecla < 48 || tecla > 57) {
                event.returnValue = false;
            
            }
            else {
              
                if (obj.value.length == 2 || obj.value.length == 5) {
                    obj.value = obj.value + "/"
                }
            }
           
        }

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


