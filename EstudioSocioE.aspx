<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="EstudioSocioE.aspx.cs" Inherits="Inscripcion.EstudioSocioE" %>
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
            position: relative;
            min-height: 1px;
            float: left;
            width: 33.33333333333333%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>



            <div class="secciones">
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
                                    <asp:RadioButtonList ID="alp_EstatusJefeHoga" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px" OnSelectedIndexChanged="alp_EstatusJefeHoga_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem id="alp_EstatusJefeHogarSi" Text="Si" Value="F" />
                                        <asp:ListItem id="alp_EstatusJefeHogarNo" Text="No" Value="M" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="alp_EstatusJefeHoga" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6" align="left">
                                    <asp:Label ID="Label41" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántas personas dependen económicamente del jefe del hogar? (Incluyendo al jefe del hogar y a ti.)"></asp:Label>
                                </div>


                                <div class="col-md-2" align="left">
                                    <asp:TextBox ID="num_Personas_DependenJH" pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números." class="form-control" MaxLength="2" runat="server" Style="text-transform: uppercase" Width="100%" onkeypress="return SoloNumeros(event)" required ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="cccccc" ControlToValidate="num_Personas_DependenJH" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                        ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                </div>

                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="Label43" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Trabajas o haces alguna actividad que ayude al gasto del hogar?" Visible="False"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                   <asp:RadioButtonList ID="apl" runat="server" RepeatDirection="Horizontal" Height="20px" Width="103px" OnSelectedIndexChanged="apl_SelectedIndexChanged" AutoPostBack="True" Visible="False">
                                        <asp:ListItem id="apl_EmpleoSi" Text="Si" Value="F" />
                                        <asp:ListItem id="apl_EmpleoNo" Text="No" Value="M" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ControlToValidate="apl" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                                <div class="col-md-1" align="left">
                                    <asp:Label ID="labelCual" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál?" Visible="false"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:TextBox ID="alp_Empleo" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." class="form-control" MaxLength="2" runat="server" Style="text-transform: uppercase"
                                        Width="100%" onkeypress="return soloLetras(event)" Visible="False"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="alp_Empleo" CssClass="text-danger" 
                                        ErrorMessage="Sólo se aceptan letras, sin acentos." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" ValidationGroup="AA"></asp:RegularExpressionValidator>
                                    <br />
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
                                        <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
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
                                <div class="col-md-6" align="left">
                                    <asp:Label ID="label45" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Mensualmente,¿Cuál es el ingreso mensual que recibe el jefe del hogar?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:TextBox MaxLength="6" pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se aceptan números. Ingresa una cantidad entera sin decimales." class="form-control" ID="alp_DineroMensualPorTrabajar" Width="100%" runat="server" onkeypress="return SoloNumeros(event)" required></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="xxxxx" ControlToValidate="alp_DineroMensualPorTrabajar" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                        ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                </div>
                            </div>
                            <br />
                            <br />
                        </div>
                        <br />
                    </asp:Panel>

                    <%-- ********************************  VIVIENDA--%>
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

                    <asp:Panel runat="server">

                        <br />
                        <div class="row">

                            <div class="col-md-6" align="center">
                                <asp:Label ID="label47" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="La vivienda donde vive tu familia es:"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="viv_TipoVivienda">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
                                    <asp:ListItem Value="Prestada">PRESTADA</asp:ListItem>
                                    <asp:ListItem Value="Rentada">RENTADA</asp:ListItem>
                                    <asp:ListItem Value="Propia">PROPIA</asp:ListItem>
                                    <asp:ListItem Value="Se está pagando">SE ESTÁ PAGANDO</asp:ListItem>

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

                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="viv_MaterialTecho">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
                                    <asp:ListItem Value="Concreto">CONCRETO</asp:ListItem>
                                    <asp:ListItem Value="Lámina de Metal">LÁMINA DE METAL</asp:ListItem>
                                    <asp:ListItem Value="Lámina de Cartón">LÁMINA DE CARTÓN</asp:ListItem>
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

                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="viv_MaterialParedes">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
                                    <asp:ListItem Value="Ladrillo">LADRILLO</asp:ListItem>
                                    <asp:ListItem Value="Block">BLOCK</asp:ListItem>
                                    <asp:ListItem Value="Adobe">ADOBE</asp:ListItem>
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

                                <asp:DropDownList runat="server" class="form-control" Width="100%" required ID="viv_MaterialPiso">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
                                    <asp:ListItem Value="Cemento">CEMENTO</asp:ListItem>
                                    <asp:ListItem Value="Mosaico/Loseta">MOSAICO/LOSETA</asp:ListItem>
                                    <asp:ListItem Value="Piso de tierra">PISO DE TIERRA</asp:ListItem>
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
                            <div class="col-md-3" align="left">
                                <asp:RadioButtonList ID="viv_CocinaIndependiente" runat="server" required RepeatDirection="Horizontal" Height="20px" Width="100px">
                                    <asp:ListItem ID="viv_CocinaIndependienteSi" Value="Si">Si</asp:ListItem>
                                    <asp:ListItem ID="viv_CocinaIndependienteNo" Value="No">No</asp:ListItem>

                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ControlToValidate="viv_CocinaIndependiente" ErrorMessage="Selecciona una opción."
                                    Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-md-6" align="justify">
                                <asp:Label ID="label52" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántos cuartos se usan para dormir, sin contar pasillos?"></asp:Label>
                            </div>
                            <div class="col-md-3" align="left">

                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="viv_NoDormitorios">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
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
                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="viv_NoCuartos">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
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
                            <div class="col-md-4" align="left" style="font-size: 15px; required letter-spacing: 1px" class="form-control">

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
                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="alc_MediTransp">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
                                    <asp:ListItem Value="Bicicleta">BICICLETA</asp:ListItem>
                                    <asp:ListItem Value="Colectiva">COLECTIVA</asp:ListItem>
                                    <asp:ListItem Value="Auto/Camioneta">AUTO/CAMIONETA</asp:ListItem>
                                    <asp:ListItem Value="Taxi">TAXI</asp:ListItem>
                                    <asp:ListItem Value="Caminando">CAMINANDO</asp:ListItem>
                                    <asp:ListItem Value="Otro">OTRO</asp:ListItem>
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
                                <asp:DropDownList runat="server" class="form-control" required Width="100%" ID="alc_TiempoTranslado">
                                    <asp:ListItem Value="0" Text="SELECCIONA"></asp:ListItem>
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
                            <div class="col-md-3" align="left">
                                <asp:TextBox MaxLength="3" pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_GastoPasaje" class="form-control" Width="100%" runat="server" onkeypress="return SoloNumeros(event)" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="ddfdfdfdf" ControlToValidate="ief_GastoPasaje" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                    ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                            </div>
                        </div>
                        <br />

                    </asp:Panel>
                    <%--**************************************Ingresos_Egresos--%>

                    <br />
                    <br />
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
                                            <asp:TextBox MaxLength="10"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." onblur="Sum()" class="form-control" 
                                              ID="ief_Padre" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server" onkeypress="return SoloNumeros(event)" required></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="sssss" ControlToValidate="ief_Padre" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label61" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Madre"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox MaxLength="10"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." onblur="Sum()" class="form-control" onkeypress="return SoloNumeros(event)" required
                                               ID="ief_Madre" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="dddddddd" ControlToValidate="ief_Madre" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label62" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Tú"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." onkeypress="return SoloNumeros(event)" required ID="ief_Usted" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="dsfsfgr" ControlToValidate="ief_Usted" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label63" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Hermanos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números." onkeypress="return SoloNumeros(event)" required ID="ief_Hermanos" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="fdefefe" ControlToValidate="ief_Hermanos" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label64" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Cónyuge"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Conyuge" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="mnmnmn" ControlToValidate="ief_Conyuge" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label65" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Otros"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum()" class="form-control"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Otros" onkeypress="return SoloNumeros(event)" required Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="gghghghgh" ControlToValidate="ief_Otros" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label66" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Total de Ingresos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox ReadOnly="true" class="form-control" required onkeypress="return SoloNumeros(event)"  ID="ief_Total" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
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
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Renta" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="dfdefe" ControlToValidate="ief_Renta" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label69" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Alimentación"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return SoloNumeros(event)" required pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Alimentacion" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="ghjgh" ControlToValidate="ief_Alimentacion" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label70" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Vestido"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox MaxLength="10" onblur="Sum2()" class="form-control" onkeypress="return SoloNumeros(event)" required pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Vestido" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="ñoikik" ControlToValidate="ief_Vestido" ErrorMessage="Sólo se permiten permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label71" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Transporte"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" oonkeypress="return SoloNumeros(event)" required pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Transporte" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="cdcdc" ControlToValidate="ief_Transporte" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label72" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text=" Colegiatura"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Colegiatura" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="fbgbgf" ControlToValidate="ief_Colegiatura" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label73" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Agua"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Sólo se permiten Ingresa cantidades enteras." ID="ief_Agua" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="bgggbgb" ControlToValidate="ief_Agua" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label74" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Electricidad"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Electricidad" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="kjkjkjkj" ControlToValidate="ief_Electricidad" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label75" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Gas o Combustible"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_GasCombustible" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="cdcdcdc" ControlToValidate="ief_GasCombustible" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label76" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Teléfono"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_Telefono" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="fssdsdsd" ControlToValidate="ief_Telefono" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label77" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Otros"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">
                                            <asp:TextBox onblur="Sum2()" MaxLength="10" class="form-control" onkeypress="return SoloNumeros(event)" required pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." ID="ief_OtrosE" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="aaaaaa" ControlToValidate="ief_OtrosE" ErrorMessage="Sólo se permiten números." Display="Dynamic"
                                                ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                        </div>

                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" align="left">
                                            <asp:Label ID="label78" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="Total de Egresos"></asp:Label>
                                        </div>
                                        <div class="col-md-6" align="left">

                                            <asp:TextBox ReadOnly="true" class="form-control" ID="ief_TotalEgresos" Style="font: 10px; text-transform: uppercase" Width="100%" runat="server"></asp:TextBox>
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

                    <%--************************************** Becas--%>
                    <br />
                    <br />

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
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="bec_SuspenciosEstudios" runat="server" required RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_SuspenciosEstudiosSII" Text="Si" />
                                        <asp:ListItem id="bec_SuspenciosEstudiosNOO" Text="No" />
                                    </asp:RadioButtonList>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ControlToValidate="bec_SuspenciosEstudios" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">

                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label87" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Has estado becado anteriormente en primaria, secundaria, preparatoria o bachillerato?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="bec_BecadoAntes" runat="server" required RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_BecadoAntesSII" Text="Si" />
                                        <asp:ListItem id="bec_BecadoAntesNOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ControlToValidate="bec_BecadoAntes" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label88" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Tu familia es beneficiaria del programa PROSPERA?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="bec_EstatusOportunidades" runat="server" required RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_EstatusOportunidadesSII" Text="Si" />
                                        <asp:ListItem id="bec_EstatusOportunidadesNOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ControlToValidate="bec_EstatusOportunidades" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />



                            <div class="row">
                                <div class="col-md-6" align="justify">
                                    <asp:Label ID="label11" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuentas con apoyo de CONAFE?"></asp:Label>
                                </div>
                                <div class="col-md-3" align="left">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" required RepeatDirection="Horizontal" Height="20px" Width="103px">
                                        <asp:ListItem id="bec_EstatusCONAFESII" Text="Si" />
                                        <asp:ListItem id="bec_EstatusCONAFENOO" Text="No" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="RadioButtonList1" ErrorMessage="Selecciona una opción."
                                        Display="Dynamic" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AE" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="left">
                                    <asp:Label ID="Label12" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es tu peso? (En Kilogramos)"></asp:Label>
                                    <br />
                                    <span style="font-size: 12px">Ejemplo: 55</span>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:TextBox MaxLength="2" ID="alu_Peso" class="form-control" Width="100%" runat="server"  pattern="[0-9]{1,9}(\.[0-9]{0,2})?$"  title="Sólo se permiten números. Ingresa cantidades enteras." required> </asp:TextBox>
                                    <asp:RegularExpressionValidator ID="wdff" ControlToValidate="alu_Peso" ErrorMessage="Peso inválido."
                                        Display="Dynamic" ValidationExpression="[0-9]{1,9}(\.[0-9]{0,2})?$" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AE" SetFocusOnError="True" />
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6" align="left">
                                    <asp:Label ID="Label35" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es tu altura? (En metros)"></asp:Label>
                                    <br />
                                    <span style="font-size: 12px">Ejemplo: 1.57</span>
                                </div>
                                <div class="col-md-2" align="left">
                                    <asp:TextBox MaxLength="4" ID="alu_Estatura" class="form-control" Width="100%" runat="server" required> </asp:TextBox>
                                     <asp:CustomValidator ID="val_Estatura" runat="server" ControlToValidate="alu_Estatura" ErrorMessage="Estatura inválida." ValidationGroup="AE"
                                OnServerValidate="val_Estatura_ServerValidate" SetFocusOnError="True" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" Display="Dynamic"></asp:CustomValidator>


                                </div>
                            </div>
                            <div class="row">
                                <div class="auto-style6">
                                </div>
                                <div class="col-md-4">
                                </div>
                            </div>

                        </div>
                    </asp:Panel>

                    <center>
                            <div class="auto-style5">
                              
                                    <asp:Button ID="btnAE" runat="server" aling="right" href="tab2" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AE"/>
                             
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
        </script>



   
</asp:Content>