<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatosPersonales.aspx.cs" Inherits="Inscripcion.DatosPersonales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>
    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link href="Content/estilopes.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="Content/main.js"></script>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" />
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



    &nbsp;<br />
    <div class="col-md-2" align="left">
    </div>


    <asp:Panel runat="server" onsudmit="return validacion.js">

        <%--PESTAÑAS--%>
        <div class="nav nav-tabs">
            <ul class="tabs">
                <li><a href="#tab1" id="tabA"><span class="tab-text">Datos Personales</span></a></li>
                <li><a href="#tab2" id="tabB"><span class="tab-text">Datos Generales</span></a></li>
                <li><a href="#tab3" id="tabC"><span class="tab-text">Escuela de Procedencia</span></a></li>
                <li><a href="#tab4" id="tabD"><span class="tab-text">Información Familiar</span></a></li>
                <li><a href="#tab5" id="tabE"><span class="tab-text">Estudio Socioeconómico</span></a></li>
            </ul>

        
            <div class="secciones">

                <%-- Datos Personales--%>

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
                            <asp:TextBox ID="txt_alu_NumControl" runat="server" Enabled="false" required CssClass="form-control" Style="margin-left: 0px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label26" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="NOMBRE:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="txt_alu_Nombre" Enabled="false" runat="server" required CssClass="form-control" Style="margin-left: 0px"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label27" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="CARRERA:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="txt_esp_Nombre" runat="server" Enabled="false" required CssClass="form-control" Style="margin-left: 0px"></asp:TextBox>
                        </div>
                        <div class="col-md-1" align="left">
                            <asp:TextBox ID="txt_id_Carrera" runat="server" Enabled="False" required Width="56px" Height="30px" CssClass="auto-style5" Style="margin-left: 18px" Visible="False"></asp:TextBox>
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
                            <asp:TextBox MaxLength="18" class="form-control" ID="alc_Curp" required="" runat="server" Style="text-transform: uppercase" Width="100%"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RequiredFieldValidator110" runat="server" ControlToValidate="alc_Curp"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z y numéricos." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>


                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label1" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Estado Civil:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" required="" ID="alc_EdoCivil">
                                <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                <asp:ListItem Value="1">Soltero(a)</asp:ListItem>
                                <asp:ListItem Value="2">Casado(a)</asp:ListItem>
                                <asp:ListItem Value="3">Divorciado(a)</asp:ListItem>
                                <asp:ListItem Value="4">Viudo(a)</asp:ListItem>
                                <asp:ListItem Value="5">Unión Libre</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="alc_EdoCivil" ErrorMessage="Selecciona tu estado civil."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label2" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Edad:"></asp:Label>
                        </div>
                        <div class="col-md-2" align="center">
                            <asp:TextBox MaxLength="2" ID="alc_edad" required="" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event)"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="alc_edad" CssClass="text-danger" ErrorMessage="Sólo se aceptan números." Font-Bold="True"
                                Font-Size="Small" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="\d{2}" SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label3" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Tienes alguna discapacidad?:"></asp:Label>
                        </div>

                        <div class="col-md-2" align="left">
                            <asp:RadioButtonList ID="rb_dis_ID" runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px" OnSelectedIndexChanged="rb_dis_ID_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem id="rbSi" Text="Si" Value="Si" />
                                <asp:ListItem id="rbNo" Text="No" Value="No" />
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" ControlToValidate="rb_dis_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />

                        </div>
                        <div class="col-md-2" align="right">
                            <asp:Label ID="Label4" runat="server" Visible="false" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál?:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="dis_ID" Visible="false">
                                <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                            </asp:DropDownList>

                         <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator61" ControlToValidate="dis_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" />--%>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="discapacidad" runat="server">
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label5" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Hablas alguna lengua indígena?:"></asp:Label>
                        </div>
                        <div class="col-md-2" align="left">
                            <asp:RadioButtonList ID="rb_lei_ID" required runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px" OnSelectedIndexChanged="rb_lei_ID_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem id="rSi" Text="Si" Value="Si" />
                                <asp:ListItem id="rNo" Text="No" Value="No" Selected="True" />

                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator60" ControlToValidate="rb_lei_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />
                        </div>
                        <div class="col-md-2" align="right">
                            <asp:Label ID="Label6" runat="server" Style="font-size: 15px; letter-spacing: 1px" Visible="false" Text="¿Cuál?:"></asp:Label>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="lei_ID" Visible="false">
                                <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                            </asp:DropDownList>

                  <%--          <asp:RequiredFieldValidator ID="RequiredFieldValidator62" ControlToValidate="lei_ID" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" />--%>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel7" style="display: none" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="LenIndi" runat="server">
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
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
                            <asp:TextBox ID="alc_Calle" class="form-control" runat="server" required="" Style="text-transform: uppercase"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="alc_Calle" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>

                        </div>
                        <%--<div class="col-md-3" align="right">
                            <asp:Label ID="Label11" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Núm. Exterior:"></asp:Label>
                        </div>--%>
                        <div class="col-md-2" align="left">
                            <asp:TextBox ID="alc_NumExt" class="form-control" runat="server" placeholder="Núm. Ext." Style="text-transform: uppercase" Width="100%"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="alc_NumExt"
                                ErrorMessage="Sólo se aceptan letras y números." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-2" align="left">

                            <asp:TextBox ID="alc_NumInt" class="form-control" runat="server" placeholder="Núm. Int." Style="text-transform: uppercase" Width="100%" onkeypress="return justNumbers(event);"></asp:TextBox>
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
                            <asp:TextBox ID="alc_Colonia" class="form-control" required="" runat="server" Style="text-transform: uppercase" Width="100%"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="vkakaka" runat="server" ControlToValidate="alc_Colonia" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$"
                                SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>
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
                            <asp:TextBox ID="alc_Localidad" runat="server" required="" class="form-control" Width="100%" Style="text-transform: uppercase" onkeypress="return soloLetras(event)"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="saaasasasasa" runat="server" ControlToValidate="alc_Localidad"
                                CssClass="text-danger" ErrorMessage="Sólo se aceptan caracteres de la A-Z." ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label10" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Código Postal:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 43760</span>
                        </div>
                        <div class="col-md-2" align="center">
                            <asp:TextBox ID="alc_CodPostal" class="form-control" MaxLength="5" required="" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return justNumbers(event);"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" ForeColor="#993333"
                                Style="font-size: 13px" ValidationExpression="\d{5}" SetFocusOnError="True" ControlToValidate="alc_NumInt" runat="server" Font-Bold="true"
                                ErrorMessage="Sólo se aceptan números." ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label95" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                            <ContentTemplate>
                                <div class="col-md-4" align="left">
                                    <asp:DropDownList runat="server" class="form-control" required="" Width="100%" ID="est_Proced_ID">
                                        <asp:ListItem Value="0">-Seleccione-</asp:ListItem>
                                        <asp:ListItem Value="1">-A-</asp:ListItem>
                                        <asp:ListItem Value="2">-B-</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="est_Proced_ID" ErrorMessage="Selecciona tu Estado."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />

                                </div>
                                <div class="col-md-2" align="center">
                                    <asp:Button ID="btnActAlumOtroEst" Width="91px" runat="server" Text="Otro" BackColor="#800020"
                                        BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" />
                                </div>
                                <div class="col-md-4" align="left">
                                    <asp:TextBox ID="act_otro_Estado" class="form-control" runat="server" Width="100%" Visible="false"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="act_otro_Estado"
                                        CssClass="text-danger" ErrorMessage="Sólo se aceptan caracteres de la A-Z." ForeColor="#993333" Style="font-size: 13px"
                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>

                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="est_Proced_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label96" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                            <ContentTemplate>
                                <div class="col-md-4" align="left">
                                    <asp:DropDownList runat="server" class="form-control" required="" Width="100%" ID="mun_Proced_ID" AutoPostBack="true">
                                        <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" ControlToValidate="mun_Proced_ID" ErrorMessage="Selecciona tu Municipio."
                                        Display="Dynamic" Style="font-size: 13px" ForeColor="#993333" Font-Bold="true" Font-Size="13" InitialValue="0" runat="server" SetFocusOnError="True" ValidationGroup="AA" />
                                </div>
                                <div class="col-md-2" align="center">
                                    <asp:Button ID="btnActAlumOtroMun" Width="91px" runat="server" Text="Otro" BackColor="#800020" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary"/>
                                </div>
                                <div class="col-md-4" align="left">
                                    <asp:TextBox ID="act_otro_Municipio" class="form-control" runat="server" Width="100%" Visible="false"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="act_otro_Municipio"
                                        CssClass="text-danger" ErrorMessage="Sólo se aceptan caracteres de la A-Z." ForeColor="#993333" Style="font-size: 13px"
                                        ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>

                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="mun_Proced_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

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
                            <asp:TextBox TextMode="Email" ID="alc_correo" required="" class="form-control" runat="server" Width="100%" AccessKey Style="text-transform: uppercase"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="val_Correo" runat="server" ErrorMessage="El correo que ingresaste es inválido." ForeColor="#993333" ControlToValidate="alc_correo"
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
                            <asp:TextBox ID="alc_facebook" runat="server" class="form-control" Width="100%" AccessKey Style="text-transform: uppercase"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="alc_facebook" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$"
                                SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-3" align="right">
                            <asp:Label ID="Label97" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono Casa:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 7751122334</span>
                        </div>
                        <div class="col-md-3" align="center">
                            <asp:TextBox MaxLength="10" ID="alc_Tel" required="" class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return justNumbers(event);"></asp:TextBox>
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
                        <div class="col-md-3" align="center">
                            <asp:TextBox MaxLength="10" ID="alc_Celular" required="" class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return justNumbers(event);"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" Font-Size="X-Small" ControlToValidate="alc_Celular"
                                ErrorMessage="Ingresa tu número de teléfono a 10 dígitos." ValidationExpression="\d{10}" ForeColor="#993333" Style="font-size: 13px" SetFocusOnError="True"
                                Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>

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
                        <div class="col-md-3" align="center">
                            <asp:TextBox class="form-control" TextMode="DateTimeLocal" type="text" ID="fecha_Nac" onekeypress="FormatoFecha(this)" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="alc_EdoCivil" ErrorMessage="Ingresa tu fecha de nacimiento."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AA" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label30" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">

                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList runat="server" class="form-control" required="" Height="100%" Width="100%" ID="est_Natal_ID">
                                        <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="est_Natal_ID" ErrorMessage="Selecciona tu Estado."
                                        Style="font-size: 13px" Display="Dynamic" ForeColor="#993333" Font-Bold="true" InitialValue="0" runat="server" ValidationGroup="AA" />
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="est_Natal_ID" EventName="selectedindexchanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label31" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" required="" Width="100%" ID="mun_Natal_ID" AutoPostBack="true">
                                        <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="mun_Natal_ID" ErrorMessage="Selecciona tu Municipio."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" InitialValue="0" runat="server" ValidationGroup="AA" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="mun_Natal_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label15" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Lugar de Nacimiento:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: TULANCINGO</span>

                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox MaxLength="10" ID="asaasas" class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return justNumbers(event);"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="asaasas" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$"
                                SetFocusOnError="True" Font-Bold="true" ValidationGroup="AA"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <center>
                            <div class="auto-style5">
                                <ul class="tabs">
                                    <asp:Button ID="Button2" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AA"/>
                                </ul>
                            </div>
                    </center>
                </article>


                <%-- Datos Generales--%>
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
                        <div class="col-md-2" align="left">

                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="tipoSangre" Visible="True">
                                <asp:ListItem Value="0">-</asp:ListItem>
                                <asp:ListItem Value="1">A+</asp:ListItem>
                                <asp:ListItem Value="2">A-</asp:ListItem>
                                <asp:ListItem Value="3">B+</asp:ListItem>
                                <asp:ListItem Value="4">B-</asp:ListItem>
                                <asp:ListItem Value="5">AB+</asp:ListItem>
                                <asp:ListItem Value="6">AB-</asp:ListItem>
                                <asp:ListItem Value="7">O+</asp:ListItem>
                                <asp:ListItem Value="8">O-</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="tipoSangre" ErrorMessage="Selecciona tu tipo de sangre."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6" align="right">
                            <asp:Label ID="Label13" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Número de Seguro Social (NSS):"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 1528212345610190404288</span>
                        </div>
                        <div class="col-md-4" align="left">
                            <asp:TextBox ID="alc_NSS" class="form-control" runat="server" Style="text-transform: uppercase" Width="100%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="dfdfdfdfdfdf" ControlToValidate="alc_NSS" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                ValidationExpression="\d{22}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" />

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
                            <asp:TextBox ID="nomb_Tutor_ID" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"
                                ControlToValidate="nomb_Tutor_ID" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AB"></asp:RegularExpressionValidator>

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
                            <asp:TextBox ID="col_Tutor_ID" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
                                ControlToValidate="col_Tutor_ID" CssClass="text-danger"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z."
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AB"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label36" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Dirección del Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: CALLE LOS ENCINOS NÚMERO 20</span>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox ID="dire_Tutor_ID" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server" ControlToValidate="dire_Tutor_ID"
                                ErrorMessage="Sólo se aceptan caracteres de la A-Z y numéricos." Font-Bold="True" Font-Size="Small"
                                ForeColor="#993333" Style="font-size: 13px"
                                ValidationExpression="^[A-Z0-9 a-z]*$"
                                SetFocusOnError="True" ValidationGroup="AB"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label8" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Estado del Tutor:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="est_Tutor_ID">
                                        <asp:ListItem Value="0">-Selecciona</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="est_Tutor_ID" ErrorMessage="Selecciona el Estado de tu Tutor."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AB" />

                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="est_Natal_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label9" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Municipio del Tutor:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" Width="100%" ID="mun_Tutor_ID">
                                        <asp:ListItem Value="0">-Selecciona</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="mun_Tutor_ID" ErrorMessage="Selecciona el Municipio de tu Tutor."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AB" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="mun_Natal_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>

                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label37" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Contraseña del Tutor:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">
                            <asp:TextBox MaxLength="3" ID="password_Tutor_ID" runat="server" class="form-control" Width="100%" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="password_Tutor_ID"
                                ErrorMessage="Ingresa la contraseña de tu Tutor." CssClass="text-danger" SetFocusOnError="True"
                                Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" Font-Bold="true"
                                Display="Dynamic" runat="server" ValidationGroup="AB" />

                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label34" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono del Tutor:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 7751122334</span>

                        </div>
                        <div class="col-md-4" align="center">
                            <asp:TextBox MaxLength="10" ID="tel_Tutor_ID" class="form-control" runat="server" Width="100%" Style="text-transform: uppercase" onkeypress="return justNumbers(event);"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" Font-Bold="true" ControlToValidate="tel_Tutor_ID"
                                ErrorMessage="Ingresa el número de teléfono de tu Tutor." ValidationExpression="\d{10}" ForeColor="#993333" Style="font-size: 13px"
                                SetFocusOnError="True" ValidationGroup="AB"></asp:RegularExpressionValidator>

                        </div>
                    </div>

                    <br />
                     <center>
                            <div class="auto-style5">
                                <ul class="tabs">
                                    <asp:Button ID="btnAB" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AB"/>
                                </ul>
                            </div>
                    </center>
                </article>


                <%-- Escuela de Procedencia--%>
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
                        <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" Width="100%" ID="est_Escu_ID">
                                        <asp:ListItem Value="0">-Selecciona</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="est_Escu_ID" ErrorMessage="Selecciona el Estado de tu escuela de procedencia."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="est_Natal_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                        <div class="col-md-2" align="center">
                            <asp:Button ID="Button1" Width="91px" runat="server" Text="Otro" BackColor="#800020" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" O />
                        </div>

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel101" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <div class="col-md-4" align="left">
                                        <asp:TextBox ID="esc_Otro_Estado" class="form-control" runat="server" Width="100%" Visible="false"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="esc_Otro_Estado"
                                            CssClass="text-danger" ErrorMessage="Sólo se aceptan caracteres de la A-Z." ForeColor="#993333" Style="font-size: 13px"
                                            ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AC"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label21" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Municipio:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" Width="100%" ID="mun_Escu_ID">
                                        <asp:ListItem Value="0">-Selecciona</asp:ListItem>
                                        <asp:ListItem Value="1">A</asp:ListItem>
                                        <asp:ListItem Value="2">B</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="mun_Escu_ID" ErrorMessage="Selecciona el Municipio de tu escuela de procedencia."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="mun_Natal_ID" EventName="selectedindexchanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <div class="col-md-2" align="center">
                            <asp:Button ID="btnEscMun" Width="91px" runat="server" Text="Otro" BackColor="#800020" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" OnClick="btnEscMun_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <div class="col-md-4" align="left">
                                        <asp:TextBox ID="esc_orto_Municipio" class="form-control" runat="server" Width="100%" Visible="false"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ControlToValidate="esc_orto_Municipio"
                                            CssClass="text-danger" ErrorMessage="Sólo se aceptan caracteres de la A-Z." ForeColor="#993333" Style="font-size: 13px"
                                            ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AC"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label22" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Nombre de la institución:"></asp:Label>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                            <ContentTemplate>
                                <div class="col-md-6" align="left">
                                    <asp:DropDownList runat="server" class="form-control" Width="100%" ID="esc_ID">
                                        <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                                        <asp:ListItem Value="0">A</asp:ListItem>
                                        <asp:ListItem Value="0">B</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="esc_ID" ErrorMessage="Selecciona el nombre de tu escuela de procedencia."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                                </div>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                        <div class="col-md-2" align="center">
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label23" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Propedéutico cursado:"></asp:Label>
                        </div>
                        <div class="col-md-6" align="left">

                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="alc_EspBachi">
                                <asp:ListItem Value="0">-Seleccione-</asp:ListItem>
                                <asp:ListItem Value="1">Exactas</asp:ListItem>
                                <asp:ListItem Value="2">Contables</asp:ListItem>
                                <asp:ListItem Value="3">Biológicas</asp:ListItem>
                                <asp:ListItem Value="4">Sociales</asp:ListItem>
                                <asp:ListItem Value="5">General</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ControlToValidate="alc_EspBachi" ErrorMessage="Selecciona el propedéutico que cursaste."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label24" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Año en que concluyó:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 2015</span>
                        </div>
                        <div class="col-md-2" align="center">
                            <asp:TextBox MaxLength="4" ID="txtAnnoConcluido" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" ControlToValidate="txtAnnoConcluido" ErrorMessage="Sólo se permiten números."
                                Display="Dynamic" ValidationExpression="\d{4}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AC" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4" align="right">
                            <asp:Label ID="Label25" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="*Promedio con el que concluyó:"></asp:Label>
                            <br />
                            <span style="font-size: 12px">Ejemplo: 8.5</span>

                        </div>
                        <div class="col-md-2" align="center">
                            <asp:TextBox MaxLength="3" ID="alc_PromBachi" runat="server" class="form-control" Width="100%" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="alc_PromBachi" ErrorMessage="Solo se permiten números."
                                ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" Display="Dynamic" runat="server" ValidationGroup="AC" />

                        </div>
                    </div>
                    <br />
                  <center>
                            <div class="auto-style5">
                                <ul class="tabs">
                                    <asp:Button ID="btnAC" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AB"/>
                                </ul>
                            </div>
                    </center>
                </article>


                <%-- Información Familiar--%>

                <article id="tab4">

                    <br />
                    <br />
                    <br />


                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label38" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Información Familiar"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="col-md-5" align="right">
                        <asp:Label ID="Label18" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Tienes hijos?:"></asp:Label>
                    </div>
                    <div class="col-md-2" align="left">
                        <asp:RadioButtonList ID="rb_Hijos_ID" runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px" OnSelectedIndexChanged="rb_Hijos_ID_SelectedIndexChanged">
                            <asp:ListItem id="rbSi1" Text="Si" Value="Si" />
                            <asp:ListItem id="rbNo1" Text="No" Value="No" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="rb_Hijos_ID" ErrorMessage="Selecciona una opción."
                            Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                    </div>

                    <div class="row">
                        <div class="col-md-2" align="right">
                            <asp:Label ID="Label98" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántos?:"></asp:Label>
                        </div>
                        <div class="col-md-2" align="center">
                            <asp:DropDownList runat="server" class="form-control" Width="100%" ID="dprHijos" Visible="True">
                                <asp:ListItem Value="0">-Selecciona-</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="dprHijos" ErrorMessage="Selecciona una opción."
                                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="Panel1" runat="server">
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-5" align="right">
                            <asp:Label ID="Label100" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es el número de personas con las que vives?:"></asp:Label>
                        </div>
                        <div class="col-md-2" align="center">
                            <asp:TextBox MaxLength="4" ID="num_Personas" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ControlToValidate="num_Personas" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                ValidationExpression="\d{4}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                        </div>
                    </div>

                    <center>
                                <br />
                                <div class="row col-md-12 form-group">
                                    <asp:Label CssClass="text-center" Font-Size="15px" runat="server" Text="Llene la siguiente tabla con los datos de los Familiares con los qué vive"></asp:Label>
                                </div>
                                <div class="row col-md-12 form-group">
                                    <div class="col-md-5">
                                    </div>

                                    <div class="row col-md-12">
                                        <div class="table-responsive">
                                            <asp:Table ID="Tabla" align="center" runat="server" BorderStyle="Ridge" GridLines="Vertical" class="table table-bordered">
                                                <asp:TableHeaderRow BackColor="DarkRed" CssClass="form-group">
                                                    <asp:TableCell CssClass="col-md-3">
                                                         <asp:label runat="server" Text="Nombre" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-1">
                                                           <asp:label runat="server" Text="Edad" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                         <asp:label runat="server" Text="Parentezco" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                          <asp:label runat="server" Text="Escolaridad"  Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                          <asp:label runat="server" Text="Ocupación" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                </asp:TableHeaderRow>
                                                <asp:TableRow ID="Fila0">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar0_Nombre" CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar0_Edad" MaxLength="2" CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar0_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Madre</asp:ListItem>
                                                            <asp:ListItem>Padre</asp:ListItem>
                                                            <asp:ListItem>Padrastro</asp:ListItem>
                                                            <asp:ListItem>Madrastra</asp:ListItem>
                                                            <asp:ListItem>Hermano/a</asp:ListItem>
                                                            <asp:ListItem>Primo/a</asp:ListItem>
                                                            <asp:ListItem>Tío/a</asp:ListItem>
                                                            <asp:ListItem>Abuelo/a</asp:ListItem>
                                                            <asp:ListItem>Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar0_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Ninguno</asp:ListItem>
                                                            <asp:ListItem>Primaria</asp:ListItem>
                                                            <asp:ListItem>Secundaria</asp:ListItem>
                                                            <asp:ListItem>Bachillerato</asp:ListItem>
                                                            <asp:ListItem>Universidad</asp:ListItem>
                                                            <asp:ListItem>Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem>Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar0_Ocupacion" CssClass="form-control" runat="server">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Obrero</asp:ListItem>
                                                            <asp:ListItem>Carpintero</asp:ListItem>
                                                            <asp:ListItem>Electricista</asp:ListItem>
                                                            <asp:ListItem>Tornero</asp:ListItem>
                                                            <asp:ListItem>Médico</asp:ListItem>
                                                            <asp:ListItem>Abogado</asp:ListItem>
                                                            <asp:ListItem>Contador</asp:ListItem>
                                                            <asp:ListItem>Comerciante</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                </asp:TableRow>






                                                <asp:TableRow ID="Fila1">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar1_Nombre" CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar1_Edad" MaxLength="2" CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar1_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Madre</asp:ListItem>
                                                            <asp:ListItem>Padre</asp:ListItem>
                                                            <asp:ListItem>Padrastro</asp:ListItem>
                                                            <asp:ListItem>Madrastra</asp:ListItem>
                                                            <asp:ListItem>Hermano/a</asp:ListItem>
                                                            <asp:ListItem>Primo/a</asp:ListItem>
                                                            <asp:ListItem>Tío/a</asp:ListItem>
                                                            <asp:ListItem>Abuelo/a</asp:ListItem>
                                                            <asp:ListItem>Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar1_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Ninguno</asp:ListItem>
                                                            <asp:ListItem>Primaria</asp:ListItem>
                                                            <asp:ListItem>Secundaria</asp:ListItem>
                                                            <asp:ListItem>Bachillerato</asp:ListItem>
                                                            <asp:ListItem>Universidad</asp:ListItem>
                                                            <asp:ListItem>Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem>Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar1_Ocupacion" CssClass="form-control" runat="server">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Obrero</asp:ListItem>
                                                            <asp:ListItem>Carpintero</asp:ListItem>
                                                            <asp:ListItem>Electricista</asp:ListItem>
                                                            <asp:ListItem>Tornero</asp:ListItem>
                                                            <asp:ListItem>Médico</asp:ListItem>
                                                            <asp:ListItem>Abogado</asp:ListItem>
                                                            <asp:ListItem>Contador</asp:ListItem>
                                                            <asp:ListItem>Comerciante</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                </asp:TableRow>








                                                <asp:TableRow ID="Fila2">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar2_Nombre" CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar2_Edad" MaxLength="2" CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar2_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Madre</asp:ListItem>
                                                            <asp:ListItem>Padre</asp:ListItem>
                                                            <asp:ListItem>Padrastro</asp:ListItem>
                                                            <asp:ListItem>Madrastra</asp:ListItem>
                                                            <asp:ListItem>Hermano/a</asp:ListItem>
                                                            <asp:ListItem>Primo/a</asp:ListItem>
                                                            <asp:ListItem>Tío/a</asp:ListItem>
                                                            <asp:ListItem>Abuelo/a</asp:ListItem>
                                                            <asp:ListItem>Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar2_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Ninguno</asp:ListItem>
                                                            <asp:ListItem>Primaria</asp:ListItem>
                                                            <asp:ListItem>Secundaria</asp:ListItem>
                                                            <asp:ListItem>Bachillerato</asp:ListItem>
                                                            <asp:ListItem>Universidad</asp:ListItem>
                                                            <asp:ListItem>Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem>Doctorado</asp:ListItem>
                                                       </asp:DropDownList>
                                                    </asp:TableCell>

                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar2_Ocupacion" CssClass="form-control" runat="server">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Obrero</asp:ListItem>
                                                            <asp:ListItem>Carpintero</asp:ListItem>
                                                            <asp:ListItem>Electricista</asp:ListItem>
                                                            <asp:ListItem>Tornero</asp:ListItem>
                                                            <asp:ListItem>Médico</asp:ListItem>
                                                            <asp:ListItem>Abogado</asp:ListItem>
                                                            <asp:ListItem>Contador</asp:ListItem>
                                                            <asp:ListItem>Comerciante</asp:ListItem>
                                                      </asp:DropDownList>
                                                    </asp:TableCell>
                                                </asp:TableRow>









                                                <asp:TableRow ID="Fila3">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar3_Nombre" CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar3_Edad" MaxLength="2" CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar3_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Madre</asp:ListItem>
                                                            <asp:ListItem>Padre</asp:ListItem>
                                                            <asp:ListItem>Padrastro</asp:ListItem>
                                                            <asp:ListItem>Madrastra</asp:ListItem>
                                                            <asp:ListItem>Hermano/a</asp:ListItem>
                                                            <asp:ListItem>Primo/a</asp:ListItem>
                                                            <asp:ListItem>Tío/a</asp:ListItem>
                                                            <asp:ListItem>Abuelo/a</asp:ListItem>
                                                            <asp:ListItem>Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar3_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Ninguno</asp:ListItem>
                                                            <asp:ListItem>Primaria</asp:ListItem>
                                                            <asp:ListItem>Secundaria</asp:ListItem>
                                                            <asp:ListItem>Bachillerato</asp:ListItem>
                                                            <asp:ListItem>Universidad</asp:ListItem>
                                                            <asp:ListItem>Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem>Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                    
                                                    <asp:TableCell>
                                                        <asp:DropDownList ID="Familiar3_Ocupacion" CssClass="form-control" runat="server">
                                                            <asp:ListItem>-Seleccione-</asp:ListItem>
                                                            <asp:ListItem>Obrero</asp:ListItem>
                                                            <asp:ListItem>Carpintero</asp:ListItem>
                                                            <asp:ListItem>Electricista</asp:ListItem>
                                                            <asp:ListItem>Tornero</asp:ListItem>
                                                            <asp:ListItem>Médico</asp:ListItem>
                                                            <asp:ListItem>Abogado</asp:ListItem>
                                                            <asp:ListItem>Contador</asp:ListItem>
                                                            <asp:ListItem>Comerciante</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:TableCell>
                                                </asp:TableRow>


                                            </asp:Table>
                                        </div>
                                    </div>
                                </div>
                             </center>

                     <center>
                            <div class="auto-style5">
                                <ul class="tabs">
                                    <asp:Button ID="btnAD" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AD"/>
                                </ul>
                            </div>
                    </center>
                </article>

                <%-- Estudio Socioeconómico--%>
                <article id="tab5">

                    <br />
                    <asp:Panel runat="server">
                        <div class="tabla">
                            <div class="row">
                                <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                                    <span style="color: #921818">
                                        <b>
                                            <asp:Label ID="Label89" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                                Text="Antecedencentes Laborales y Personales del Aspirante"></asp:Label>
                                            <br />
                                        </b></span>
                                </div>
                                <br />

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="Label40" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Eres el jefe del hogar?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="alp_EstatusJefeHoga" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px" OnSelectedIndexChanged="alp_EstatusJefeHoga_SelectedIndexChanged">
                                        <asp:ListItem id="alp_EstatusJefeHogarSi" Text="Si" Value="F" />
                                        <asp:ListItem id="alp_EstatusJefeHogarNo" Text="No" Value="M" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="alp_EstatusJefeHoga" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="Label41" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántas personas dependen económicamente del jefe del hogar? (Incluyendo al jefe del hogar y a ti.)"></asp:Label>
                                </div>

                                <%--<script type="text/javascript">
                                        function getvalueofradiolist() {
                                            var buttonID = '<%= alp_NoHijosDepeEcon.ClientID %>';
                                            var button = document.getElementById(buttonID);
                                            var label1 = document.getElementById('labelHijos');

                                            var radiolist = document.getElementById('<%= alp_Hijo.ClientID %>');
                                            var radio = radiolist.getElementsByTagName("input");

                                            for (var x = 0; x < radio.length; x++) {
                                                if (radio[x].type === "radio" && radio[x].checked) {
                                                    if (radio[x].value == "Si") {
                                                        button.style.display = 'inherit';
                                                        label1.style.display = 'inherit';
                                                        radio[x].setActive() = true;
                                                    } else {
                                                        button.style.display = 'none';
                                                        label1.style.display = 'none';
                                                        radio[x].setActive() = true;
                                                    }
                                                }
                                            }
                                        }
                                    </script>
                                    <script type="text/javascript">
                                        function ocultarActividad() {
                                            var buttonID = '<%= alp_Empleo.ClientID %>';
                            var button = document.getElementById(buttonID);
                            var buttonID2 = '<%= alp_IngresoAlumno.ClientID %>';
                            var button2 = document.getElementById(buttonID2);
                            var label2 = document.getElementById('labelCual');
                            var label3 = document.getElementById('labelCualIn');

                            var radiolist = document.getElementById('<%= apl.ClientID %>');
                            var radio = radiolist.getElementsByTagName("input");

                            for (var x = 0; x < radio.length; x++) {
                                if (radio[x].type === "radio" && radio[x].checked) {
                                    if (radio[x].value == "Si") {
                                        button.style.display = 'inherit';
                                        button2.style.display = 'inherit';
                                        label2.style.display = 'inherit';
                                        label3.style.display = 'inherit';
                                        radio[x].setActive() = true;
                                    } else {
                                        button.style.display = 'none';
                                        button2.style.display = 'none';
                                        label2.style.display = 'none';
                                        label3.style.display = 'none';
                                        radio[x].setActive() = true;
                                    }
                                }
                            }
                        }
                                    </script>--%>

                                <%--<div class="col-md-3" align="left">
                                        <asp:RadioButtonList ID="alp_Hijo" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px" onclick="getvalueofradiolist(); return false;">
                                            <asp:ListItem id="alp_HijoSi" Text="Si" Value="Si" />
                                            <asp:ListItem id="alp_HijoNo" Text="No" Value="No" />
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server"
                                            ControlToValidate="alp_Hijo"
                                            ErrorMessage="<p>Selecciona una opción!</p>"
                                            SetFocusOnError="true"
                                            Display="Dynamic"
                                            ForeColor="#B50128"
                                            Font-Size="8"
                                            Font-Bold="true">
                                        </asp:RequiredFieldValidator>
                                    </div>--%>
                                <div class="col-md-2" align="center">
                                    <asp:TextBox ID="num_Personas_DependenJH" class="form-control" MaxLength="2" runat="server" Style="text-transform: uppercase" Width="100%"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" ControlToValidate="num_Personas_DependenJH" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                        ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                                <%--<div class="col-md-2" align="left">
                                        <asp:TextBox MaxLength="2" ID="alp_NoHijosDepeEcon" class="form-control" Style="display: none" runat="server" onkeypress="return justNumbers(event);" Width="100%"></asp:TextBox>
                                    </div>--%>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="Label43" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Trabajas o haces alguna actividad que ayude al gasto del hogar?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="apl" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px" onclick="ocultarActividad(); return false;">
                                        <asp:ListItem id="alp_EmpleoSi" Text="Si" />
                                        <asp:ListItem id="alp_EmpleoNo" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="apl" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                                <div class="col-md-1" align="justify">
                                    <asp:Label ID="labelCual" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:TextBox ID="alp_Empleo" Style="display: none" class="form-control" runat="server" Width="100%" onkeypress="return soloLetras(event)"></asp:TextBox>
                                </div>
                            </div>
                            <br />

                            <br />
                            <div class="row">
                                <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                                    <span style="color: #921818">
                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label101" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Antecedencentes Laborales Personales del tutor"></asp:Label>
                                            <br />
                                        </b></span>
                                </div>
                                <br />

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label44" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Semanalmente,¿Cuántos dias labora el jefe del hogar?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">

                                    <asp:DropDownList runat="server" Width="100%" class="form-control" ID="alp_NoDiasTrabajaJefeH">
                                        <asp:ListItem Value="0" Text=""></asp:ListItem>
                                        <asp:ListItem Value="1">1</asp:ListItem>
                                        <asp:ListItem Value="2">2</asp:ListItem>
                                        <asp:ListItem Value="3">3</asp:ListItem>
                                        <asp:ListItem Value="4">4</asp:ListItem>
                                        <asp:ListItem Value="5">5</asp:ListItem>
                                        <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ControlToValidate="alp_NoDiasTrabajaJefeH" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label45" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Mensualmente,¿Cuál es el ingreso mensual que recibe el jefe del hogar?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="center">
                                    <asp:TextBox MaxLength="6" class="form-control" ID="alp_DineroMensualPorTrabajar" Width="100%" placeholder="$" runat="server" onkeypress="return justNumbers(event)"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ControlToValidate="alp_DineroMensualPorTrabajar" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                        ValidationExpression="\d{6}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <br />
                        </div>
                        <br />
                    </asp:Panel>

                    <%-- ********************************                   VIVIENDA--%>
                    <br />
                    <div class="row">
                        <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                            <span style="color: #921818">
                                <b>
                                    <asp:Label ID="Label90" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Información Relativa a la Vivienda"></asp:Label>
                                    <br />
                                </b></span>
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="col-md-2" align="left">
                    </div>
                    <asp:Panel runat="server">

                        <br />
                        <div class="row">

                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label47" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="La vivienda donde vive tu familia es:"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_TipoVivienda">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="Prestada">Prestada</asp:ListItem>
                                    <asp:ListItem Value="Rentada">Rentada</asp:ListItem>
                                    <asp:ListItem Value="Propia">Propia</asp:ListItem>
                                    <asp:ListItem Value="Se está pagando">Se está pagando</asp:ListItem>

                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="viv_TipoVivienda" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label48" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿De qué material es la mayor parte del techo de la vivienda?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_MaterialTecho">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="Concreto">Concreto</asp:ListItem>
                                    <asp:ListItem Value="Lámina de Metal">Lámina de Metal</asp:ListItem>
                                    <asp:ListItem Value="Lámina de Cartón">Lámina de Cartón</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ControlToValidate="viv_MaterialTecho" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />

                        <div class="row">

                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label49" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿De qué material es la mayor parte de las paredes de la vivienda?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_MaterialParedes">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="Ladrillo">Ladrillo</asp:ListItem>
                                    <asp:ListItem Value="Block">Block</asp:ListItem>
                                    <asp:ListItem Value="Adobe">Adobe</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ControlToValidate="viv_MaterialParedes" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label50" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿De qué material es la mayor parte del piso de la vivienda?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_MaterialPiso">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="Cemento">Cemento</asp:ListItem>
                                    <asp:ListItem Value="Mosaico/Loseta">Mosaico/Loseta</asp:ListItem>
                                    <asp:ListItem Value="Piso de tierra">Piso de tierra</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ControlToValidate="viv_MaterialPiso" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">

                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label51" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿La vivienda tiene un cuarto solo para cocinar?"></asp:Label>
                            </div>
                            <div class="col-md-2" align="left">
                                <asp:RadioButtonList ID="viv_CocinaIndependiente" runat="server" RepeatDirection="Horizontal" Height="20px" Width="100px">
                                    <asp:ListItem ID="viv_CocinaIndependienteSi" Value="Si">Si</asp:ListItem>
                                    <asp:ListItem ID="viv_CocinaIndependienteNo" Value="No">No</asp:ListItem>

                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="viv_CocinaIndependiente" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label52" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántos cuartos se usan para dormir, sin contar pasillos?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_NoDormitorios">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ControlToValidate="viv_NoDormitorios" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label53" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántos cuartos tiene el total la vivienda contando la cocina (sin contar pasillos y baños)?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">
                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="viv_NoCuartos">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="1">1</asp:ListItem>
                                    <asp:ListItem Value="2">2</asp:ListItem>
                                    <asp:ListItem Value="3">3</asp:ListItem>
                                    <asp:ListItem Value="4">4</asp:ListItem>
                                    <asp:ListItem Value="5">5</asp:ListItem>
                                    <asp:ListItem Value="6">6</asp:ListItem>
                                    <asp:ListItem Value="7">7</asp:ListItem>
                                    <asp:ListItem Value="8">8</asp:ListItem>
                                    <asp:ListItem Value="9">9</asp:ListItem>
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ControlToValidate="viv_NoCuartos" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label54" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="En la vivienda se cuenta con:"></asp:Label>
                            </div>
                            <br />
                            <br />
                        </div>
                        <div class="row">
                            <div class="col-md-4" align="left" style="font-size: 15px; letter-spacing: 1px" class="form-control">

                                <asp:CheckBox ID="viv_Luz" Style="font-size: 15px; letter-spacing: 1px" Text="Luz" Value="Luz" runat="server" /><br />
                                <asp:CheckBox ID="viv_AguaPotable" Text="Agua Potable" Value="Agua Potable" runat="server" /><br />
                                <asp:CheckBox ID="viv_Gas" Text="Gas" Value="Estufa de Gas" runat="server" /><br />
                                <asp:CheckBox ID="viv_TinacoDeAgua" Text="Tinaco de agua" Value="Tinaco de agua" runat="server" /><br />
                                <asp:CheckBox ID="viv_Cisterna" Text="Cisterna" Value="Cisterna" runat="server" /><br />
                                <asp:CheckBox ID="viv_Lavadora" Text="Lavadora" Value="Lavadora" runat="server" /><br />
                                <asp:CheckBox ID="viv_Refrigerador" Text="Refrigerador" Value="Refrigerador" runat="server" /><br />



                            </div>



                            <div class="col-md-4" align="left">

                                <asp:CheckBox ID="viv_Drenaje" Text="Drenaje" Value="Drenaje" runat="server" /><br />
                                <asp:CheckBox ID="viv_Compu" Text="Computadora" Value="Computadora" runat="server" /><br />
                                <asp:CheckBox ID="viv_AcceInter" Text="Acceso a Internet" Value="Acceso a Internet" runat="server" /><br />
                                <asp:CheckBox ID="viv_Auto" Text="Automóvil/Camioneta" Value="Automóvil/Camioneta" runat="server" /><br />
                                <asp:CheckBox ID="viv_Moto" Text="Motocicleta" Value="metric" runat="server" /><br />
                                <asp:CheckBox ID="Horno" Text="Horno de Microondas" Value="Horno de Microondas" runat="server" /><br />
                                <asp:CheckBox ID="Electrodomes" Text="Electrodomésticos" Value="Electrodomésticos (Licuadora, Plancha, etc.)" runat="server" /><br />



                            </div>
                            <div class="col-md-4" align="left">
                                <asp:CheckBox ID="viv_Regadera" Text="Regadera" Value="Regadera" runat="server" /><br />
                                <asp:CheckBox ID="viv_MedLuz" Text="Medidor de Luz" Value="Medidor de Luz" runat="server" /><br />
                                <asp:CheckBox ID="viv_Tele" Text="Televisión" Value="Televisión" runat="server" /><br />
                                <asp:CheckBox ID="viv_Dvd" Text="DVD" Value="DVD" runat="server" /><br />
                                <asp:CheckBox ID="viv_Radio" Text="Radio" Value="Radio" runat="server" /><br />
                                <asp:CheckBox ID="viv_TV" Text="T.V por cable" Value="T.V por cable" runat="server" />&nbsp;<br />
                                <asp:CheckBox ID="viv_Telefono" Text="Teléfono" Value="Teléfono" runat="server" /><br />
                                <asp:CheckBox ID="viv_EstufaDeGas" Text="Estufa de Gas" Value="Estufa de Gas" runat="server" /><br />
                            </div>
                        </div>



                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label55" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Para trasladarte del lugar donde vives hasta la Universidad, ¿Qué medio de transporte usas?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">
                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="alc_MediTransp">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="Bicicleta">Bicicleta</asp:ListItem>
                                    <asp:ListItem Value="Colectiva">Colectiva</asp:ListItem>
                                    <asp:ListItem Value="Auto/Camioneta">Auto/Camioneta</asp:ListItem>
                                    <asp:ListItem Value="Taxi">Taxi</asp:ListItem>
                                    <asp:ListItem Value="Caminando">Caminando</asp:ListItem>
                                    <asp:ListItem Value="Otro">Otro</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" ControlToValidate="alc_MediTransp" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label56" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuánto es el tiempo que ocupas en trasladarte del lugar donde vives hasta la Universidad? (EN MINUTOS)"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">
                                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="alc_TiempoTranslado">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="0 - 30 min">0 - 30 min</asp:ListItem>
                                    <asp:ListItem Value="30 min - 1 hora">30 min - 1 hora</asp:ListItem>
                                    <asp:ListItem Value="1 hora - 1:30 hora">1 hora - 1:30 hora</asp:ListItem>
                                    <asp:ListItem Value="1:30 hora - 2 horas">1:30 hora - 2 horas</asp:ListItem>
                                    <asp:ListItem Value="2 horas - más">2 horas - más</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" ControlToValidate="alc_TiempoTranslado" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label58" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuánto gastas en pasajes?"></asp:Label>
                                <span style="font-size: 12px">
                                    <br />
                                    Ingresa sólo cantidades enteras, ejemplo: 55</span>
                            </div>
                            <div class="col-md-3" align="center">
                                <asp:TextBox MaxLength="3" ID="ief_GastoPasaje" class="form-control" Width="100%" placeholder="$" runat="server" onkeypress="return justNumbers(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator40" ControlToValidate="ief_GastoPasaje" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                    ValidationExpression="\d{3}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />

                    </asp:Panel>
                    <%--**************************************                Ingresos_Egresos--%>

                    <br />
                    <br />
                    <div class="col-md-2" align="left">
                    </div>
                    <asp:Panel runat="server">
                        <div class="tabla">



                            <div class="row">
                                <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                                    <span style="color: #921818">
                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label102" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Ingresos y Egresos Familiares"></asp:Label>
                                            <br />
                                        </b></span>
                                </div>
                                <br />

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <div class="row">
                                        <div class="col-md-12" align="justify">
                                            <asp:Label ID="label59" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿A cuánto ascienden los ingresos mensuales familiares?"></asp:Label>
                                            <span style="font-size: 12px">
                                                <br />
                                                Ingresa sólo cantidades enteras, ejemplo: 5000</span>
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label60" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Padre"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return justNumbers(event)"
                                                placeholder="$" ID="ief_Padre" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" ControlToValidate="ief_Padre" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label61" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Madre"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return justNumbers(event)"
                                                placeholder="$" ID="ief_Madre" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" ControlToValidate="ief_Madre" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label62" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Tú"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Usted" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" ControlToValidate="ief_Usted" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label63" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Hermanos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Hermanos" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" ControlToValidate="ief_Hermanos" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label64" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Cónyuge"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Conyuge" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator46" ControlToValidate="ief_Conyuge" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label65" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Otros"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" placeholder="$" ID="ief_Otros" onkeypress="return justNumbers(event)" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator47" ControlToValidate="ief_Otros" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label66" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Total de Ingresos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox ReadOnly="true" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Total" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-6" align="justify">
                                    <div class="row">
                                        <div class="col-md-12" align="left">
                                            <asp:Label ID="label67" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿A cuánto ascienden los egresos mensuales familiares?"></asp:Label>
                                        </div>

                                    </div>
                                    <br />

                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label68" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Renta"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Renta" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator48" ControlToValidate="ief_Renta" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label69" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Alimentación"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Alimentacion" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator49" ControlToValidate="ief_Alimentacion" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label70" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Vestido"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Vestido" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator50" ControlToValidate="ief_Vestido" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label71" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Transporte"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Transporte" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator51" ControlToValidate="ief_Transporte" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label72" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Colegiatura"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Colegiatura" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator52" ControlToValidate="ief_Colegiatura" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label73" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Agua"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Agua" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator53" ControlToValidate="ief_Agua" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label74" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Electricidad"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Electricidad" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator54" ControlToValidate="ief_Electricidad" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label75" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Gas o Combustible"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_GasCombustible" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator55" ControlToValidate="ief_GasCombustible" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label76" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_Telefono" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator56" ControlToValidate="ief_Telefono" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{10}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label77" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Otros"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return justNumbers(event)" placeholder="$" ID="ief_OtrosE" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator57" ControlToValidate="ief_OtrosE" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="\d{22}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label78" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Total de Egresos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox ReadOnly="true" class="form-control" placeholder="$" ID="ief_TotalEgresos" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />

                        </div>
                    </asp:Panel>
                    <script>
                        function Sum() {
                            var text1 = document.getElementById('<%= ief_Padre.ClientID %>');
                            var text2 = document.getElementById('<%= ief_Madre.ClientID %>');
                            var text3 = document.getElementById('<%= ief_Usted.ClientID %>');
                            var text4 = document.getElementById('<%= ief_Hermanos.ClientID %>');
                            var text5 = document.getElementById('<%= ief_Conyuge.ClientID %>');
                            var text6 = document.getElementById('<%= ief_Otros.ClientID %>');



                            var t1 = parseInt(text1.value);
                            var t2 = parseInt(text2.value);
                            var t3 = parseInt(text3.value);
                            var t4 = parseInt(text4.value);
                            var t5 = parseInt(text5.value);
                            var t6 = parseInt(text6.value);

                            document.getElementById('<%= ief_Total.ClientID %>').value = t1 + t2 + t3 + t4 + t5 + t6;
                        }
                        function Sum2() {
                            var text1 = document.getElementById('<%= ief_Renta.ClientID %>');
                            var text2 = document.getElementById('<%= ief_Alimentacion.ClientID %>');
                            var text3 = document.getElementById('<%= ief_Vestido.ClientID %>');
                            var text4 = document.getElementById('<%= ief_Transporte.ClientID %>');
                            var text5 = document.getElementById('<%= ief_Colegiatura.ClientID %>');
                            var text6 = document.getElementById('<%= ief_Agua.ClientID %>');
                            var text7 = document.getElementById('<%= ief_Electricidad.ClientID %>');
                            var text8 = document.getElementById('<%= ief_GasCombustible.ClientID %>');
                            var text9 = document.getElementById('<%= ief_Telefono.ClientID %>');
                            var text10 = document.getElementById('<%= ief_OtrosE.ClientID %>');

                            var t1 = parseInt(text1.value);
                            var t2 = parseInt(text2.value);
                            var t3 = parseInt(text3.value);
                            var t4 = parseInt(text4.value);
                            var t5 = parseInt(text5.value);
                            var t6 = parseInt(text6.value);
                            var t7 = parseInt(text7.value);
                            var t8 = parseInt(text8.value);
                            var t9 = parseInt(text9.value);
                            var t10 = parseInt(text10.value);
                            //if (text1.value.length == 0 || text2.value.length == 0 || text3.value.length == 0
                            //   || text4.value.length == 0 || text5.value.length == 0 || text6.value.length == 0) {
                            //    alert('NINGÚN CAMPO DEBE QUEDAR VACÍO (OCUPE "0" DONDE SEA NECESARIO)');
                            //    return;
                            //}
                            document.getElementById('<%= ief_TotalEgresos.ClientID %>').value = t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10;

                                }
                    </script>

                    <%--**************************************                Becas--%>
                    <br />
                    <div class="row">
                    </div>
                    <br />
                    <div class="col-md-2" align="left">
                    </div>
                    <asp:Panel runat="server">
                        <div class="tabla">
                            <div class="row">
                                <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px" align="center">
                                    <span style="color: #921818">
                                        <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label103" runat="server" ForeColor="#990000" Style="font-size: large; letter-spacing: 1px"
                                        Text="Información Relativa a Becas y Apoyos"></asp:Label>
                                            <br />
                                        </b></span>
                                </div>
                                <br />

                            </div>
                            <br />

                            <%--<script type="text/javascript">
                                    function ocultarActividad() {
                                        var buttonID = '<%= bec_EstatusBecado.ClientID %>';
                        var button = document.getElementById(buttonID);
                        var label1 = document.getElementById('labelCual');


                        var radiolist = document.getElementById('<%= bec.ClientID %>');
                        var radio = radiolist.getElementsByTagName("input");

                        for (var x = 0; x < radio.length; x++) {
                            if (radio[x].type === "radio" && radio[x].checked) {
                                if (radio[x].value == "Si") {
                                    button.style.display = 'inherit';
                                    label1.style.display = 'inherit';
                                    radio[x].setActive() = true;
                                } else {
                                    button.style.display = 'none';
                                    label1.style.display = 'none';
                                    radio[x].setActive() = true;
                                }
                            }
                        }
                    }
                                </script>--%>

                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label86" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Has tenido que suspeder tus estudios por 6 meses o más debido a problemas económicos?"></asp:Label>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:RadioButtonList ID="bec_SuspenciosEstudios" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_SuspenciosEstudiosSII" Text="Si" />
                                        <asp:ListItem id="bec_SuspenciosEstudiosNOO" Text="No" />
                                    </asp:RadioButtonList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ControlToValidate="bec_SuspenciosEstudios" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">

                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label87" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Has estado becado anteriormente en primaria, secundaria, preparatoria o bachillerato?"></asp:Label>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:RadioButtonList ID="bec_BecadoAntes" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_BecadoAntesSII" Text="Si" />
                                        <asp:ListItem id="bec_BecadoAntesNOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="bec_BecadoAntes" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label88" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Tu familia es beneficiaria del programa PROSPERA?"></asp:Label>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:RadioButtonList ID="bec_EstatusOportunidades" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_EstatusOportunidadesSII" Text="Si" />
                                        <asp:ListItem id="bec_EstatusOportunidadesNOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ControlToValidate="bec_EstatusOportunidades" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />



                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label11" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuentas con apoyo de CONAFE?"></asp:Label>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_EstatusCONAFESII" Text="Si" />
                                        <asp:ListItem id="bec_EstatusCONAFENOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="RadioButtonList1" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="right">
                                    <asp:Label ID="Label12" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es tu peso? (En Kilogramos)"></asp:Label>
                                    <br />
                                    <span style="font-size: 12px">Ejemplo: 55</span>
                                </div>
                                <div class="col-md-2" align="center">
                                    <asp:TextBox MaxLength="4" ID="alu_Peso" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator58" ControlToValidate="alu_Peso" ErrorMessage="Sólo se permiten números."
                                        Display="Dynamic" ValidationExpression="\d{4}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="right">
                                    <asp:Label ID="Label35" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es tu altura? (En metros)"></asp:Label>
                                    <br />
                                    <span style="font-size: 12px">Ejemplo: 1.57</span>
                                </div>
                                <div class="col-md-2" align="center">
                                    <asp:TextBox MaxLength="4" ID="alu_Estatura" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);"> </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator59" ControlToValidate="alu_Estatura" ErrorMessage="Sólo se permiten números."
                                        Display="Dynamic" ValidationExpression="\d+.\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>

                        </div>
                    </asp:Panel>

                     <center>
                            <div class="auto-style5">
                                <ul class="tabs">
                                    <asp:Button ID="btnAE" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AE"/>
                                </ul>
                            </div>
                    </center>
                </article>


            </div>
        </div>
    </asp:Panel>



    <script language="javascript" type="text/javascript">
        function FormatoFecha(obj) {
            if (obj.value.length == 2 || obj.value.length == 5) {
                obj.value = obj.value + "/"
            }
        }
    </script>
</asp:Content>
