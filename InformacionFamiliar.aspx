<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.master" AutoEventWireup="true" CodeBehind="InformacionFamiliar.aspx.cs" Inherits="Inscripcion.InformacionFamiliar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <link href="Content/RByCHBStyle.css" rel="stylesheet" />

    <article id="tab4">
        <br />
        <div class="row">
            <div class="col-md-12 alert-danger" style="font-size: 15px; letter-spacing: 1px; left: 94px; top: 0px; width: 854px;" align="center">
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
            <asp:RadioButtonList ID="rb_Hijos_ID" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" Height="20px" Width="100px" OnSelectedIndexChanged="rb_Hijos_ID_SelectedIndexChanged">
                <asp:ListItem id="rbSi1" Text="Si" Value="Si" />
                <asp:ListItem id="rbNo1" Text="No" Value="No" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="rb_Hijos_ID" ErrorMessage="Selecciona una opción."
                Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
        </div>

        <div class="row">
            <div class="col-md-2" align="right">
                <asp:Label ID="Label98" runat="server" Visible="false" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuántos?:"></asp:Label>
            </div>
            <div class="col-md-2" align="center">
                <asp:DropDownList runat="server" class="form-control" Width="100%" ID="dprHijos" Visible="false">
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

                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" Visible="false" ControlToValidate="dprHijos" ErrorMessage="Selecciona una opción."
                    Display="Dynamic" InitialValue="0" ForeColor="#993333" Font-Bold="true" SetFocusOnError="True" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-5" align="right">
                <asp:Label ID="Label100" runat="server" Style="font-size: 15px; letter-spacing: 1px" Text="¿Cuál es el número de personas con las que vives?:"></asp:Label>
            </div>
            <div class="col-md-2" align="center">
                <asp:TextBox MaxLength="4" ID="num_Personas" class="form-control" Width="100%" runat="server" onkeypress="return justNumbers(event);" AutoPostBack="True" OnTextChanged="num_Personas_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator38" ControlToValidate="num_Personas" ErrorMessage="Sólo se permiten números." Display="Dynamic" onkeypress="return SoloNumeros(event)"
                    ValidationExpression="\d{4}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
            </div>
        </div>

        <center>
                                <br />
                                <div class="row col-md-12 form-group">
                                    <asp:Label CssClass="text-center" Font-Size="15px" runat="server" Text="Llene la siguiente tabla con los datos de los Familiares con los qué vive" ID="lbTabla"></asp:Label>
                                </div>
                                <div class="row col-md-12 form-group">
                                    <div class="col-md-5">
                                    </div>

                                    <div class="row col-md-12">
                                        <div class="table-responsive">
                                            <asp:Table ID="Tabla" align="center" runat="server" BorderStyle="Ridge" GridLines="Vertical" class="table table-bordered" Visible="False">
                                                <asp:TableHeaderRow BackColor="DarkRed" CssClass="form-group">
                                                    <asp:TableCell CssClass="col-md-3">
                                                         <asp:label runat="server" Text="Nombre" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                        <br />
                                                         <asp:Label ID="lblaa" runat="server" Style="font-size: 12px" Text="Ejemplo: PEDRO VARGAS PEREZ" ForeColor="White"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-1">
                                                           <asp:label runat="server" Text="Edad" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                        <br />
                                                        <asp:Label ID="lbl1" runat="server" Style="font-size: 12px" Text="Ejemplo: 18" ForeColor="White"></asp:Label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                         <asp:label runat="server" Text="Parentezco" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                          <asp:label runat="server" Text="Escolaridad"  Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                    </asp:TableCell>
                                                    <asp:TableCell CssClass="col-md-2">
                                                          <asp:label runat="server" Text="Ocupación" Font-Size="12px" Font-Bold="true" ForeColor="White"></asp:label>
                                                        <br />
                                                         <asp:Label ID="Label27" runat="server" Style="font-size: 12px" Text="Ejemplo: COSTURERO" ForeColor="White"></asp:Label>
                                                    </asp:TableCell>
                                                </asp:TableHeaderRow>


                                                            
                                        <asp:TableRow ID="Fila0" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar0_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                             ControlToValidate="Familiar0_Nombre" CssClass="text-danger"
                                                             ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                             Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                             ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Familiar0_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                      </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar0_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Familiar0_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic"
                                                            ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Familiar0_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar0_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" InitialValue="0" runat="server" ControlToValidate="Familiar0_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar0_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="0" runat="server" ControlToValidate="Familiar0_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar0_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Familiar0_Ocupacio" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Familiar0_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila1" Visible="false">
                                                    <asp:TableCell>
                                                    <asp:TextBox ID="Familiar1_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="Familiar1_Nombre" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="Familiar1_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                     <asp:TextBox ID="Familiar1_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="GHJHJG" ControlToValidate="Familiar1_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic" ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="Familiar1_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar1_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator20" InitialValue="0" runat="server" ControlToValidate="Familiar1_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar1_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" InitialValue="0" runat="server" ControlToValidate="Familiar1_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar1_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Familiar0_Ocupacio" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic">
                                                    </asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator040" runat="server" ControlToValidate="Familiar1_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila2" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar2_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="Familiar2_Nombre" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic">

                                                        </asp:RegularExpressionValidator>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator99" runat="server" ControlToValidate="Familiar2_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar2_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="GH2JHJG" ControlToValidate="Familiar2_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic" ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator100" runat="server" ControlToValidate="Familiar2_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar2_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldVa2lidator20" InitialValue="0" runat="server" ControlToValidate="Familiar2_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar2_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" InitialValue="0" runat="server" ControlToValidate="Familiar2_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                            <asp:TextBox ID="Familiar2_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionVal22idator10" runat="server" ControlToValidate="Familiar2_Ocupacio" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldVal2idator040" runat="server" ControlToValidate="Familiar2_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                         </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila3" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar3_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator33" runat="server" ControlToValidate="Familiar3_Nombre" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic">
                                                        </asp:RegularExpressionValidator>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator939" runat="server" ControlToValidate="Familiar3_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar3_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                        <asp:RegularExpressionValidator ID="GH2JH3JG" ControlToValidate="Familiar3_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic" ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator103" runat="server" ControlToValidate="Familiar3_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="FamiliaR3_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldVa2lidator23" InitialValue="0" runat="server" ControlToValidate="Familiar3_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar3_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator231" InitialValue="0" runat="server" ControlToValidate="Familiar3_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar3_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionVa33idator10" runat="server" ControlToValidate="Familiar3_Ocupacio" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldVal2idator33" runat="server" ControlToValidate="Familiar3_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />                                                          
                                                        </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila4" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar4_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator44" runat="server"
                                                     ControlToValidate="Familiar4_Nombre" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator934" runat="server" ControlToValidate="Familiar4_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar4_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="GH2JH43JG" ControlToValidate="Familiar4_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic"
                                                        ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4103" runat="server" ControlToValidate="Familiar4_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar4_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldVa2lidator4" InitialValue="0" runat="server" ControlToValidate="Familiar4_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar4_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" InitialValue="0" runat="server" ControlToValidate="Familiar4_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar4_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionVa33idator444" runat="server" ControlToValidate="Familiar4_Ocupacio" CssClass="text-danger" ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos." Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>                                                     <asp:RequiredFieldValidator ID="RequiredFieldVal2idato45" runat="server" ControlToValidate="Familiar4_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                          </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila5" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar5_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator55" runat="server"
                                                     ControlToValidate="Familiar5_Nombre" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ControlToValidate="Familiar5_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar5_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="GH2JH435JG" ControlToValidate="Familiar4_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic" ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator415" runat="server" ControlToValidate="Familiar5_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar5_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldVa2lidator5" InitialValue="0" runat="server" ControlToValidate="Familiar5_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar5_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator451" InitialValue="0" runat="server" ControlToValidate="Familiar5_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar5_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionVa55idator" runat="server"
                                                     ControlToValidate="Familiar5_Ocupacio" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidato2" runat="server" ControlToValidate="Familiar5_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                     </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila6" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar6_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                                     ControlToValidate="Familiar6_Nombre" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="Familiar6_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar6_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="Familiar6_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic"
                                                        ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="Familiar6_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar6_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator24" InitialValue="0" runat="server" ControlToValidate="Familiar6_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar6_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" InitialValue="0" runat="server" ControlToValidate="Familiar6_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar6_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                                     ControlToValidate="Familiar6_Ocupacio" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="Familiar6_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />   
                                                         </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila7" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar7_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
                                                     ControlToValidate="Familiar7_Nombre" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="Familiar7_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar7_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator16" ControlToValidate="Familiar7_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic"
                                                        ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="Familiar7_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar7_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator29" InitialValue="0" runat="server" ControlToValidate="Familiar7_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar7_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" InitialValue="0" runat="server" ControlToValidate="Familiar7_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                          <asp:TextBox ID="Familiar7_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server"
                                                     ControlToValidate="Familiar7_Ocupacio" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic">
                                                    </asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="Familiar7_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                       </asp:TableCell></asp:TableRow><asp:TableRow ID="Fila8" Visible="false">
                                                    <asp:TableCell>
                                                        <asp:TextBox ID="Familiar8_Nombre" Maxlength="50" pattern="^[A-Z a-z]*$"  title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" Style="text-transform: uppercase">
                                                        </asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator85" runat="server"
                                                     ControlToValidate="Familiar8_Nombre" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator181" runat="server" ControlToValidate="Familiar8_Nombre" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar8_Edad" MaxLength="2" CssClass="form-control"  pattern="\d{2}"  title="Sólo puedes introducir números." runat="server" onkeypress="return justNumbers(event);">
                                                        </asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidato8r6" ControlToValidate="Familiar8_Edad" ErrorMessage="Sólo puedes introducir números." Display="Dynamic"
                                                        ValidationExpression="\d{2}" ForeColor="#993333" Font-Bold="true" Style="font-size: 13px" runat="server" ValidationGroup="AD" />
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator82" runat="server" ControlToValidate="Familiar8_Edad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar8_Parentezco" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Madre</asp:ListItem>
                                                            <asp:ListItem Value="2">Padre</asp:ListItem>
                                                            <asp:ListItem Value="3">Padrastro</asp:ListItem>
                                                            <asp:ListItem Value="4">Madrastra</asp:ListItem>
                                                            <asp:ListItem Value="5">Hermano/a</asp:ListItem>
                                                            <asp:ListItem Value="6">Primo/a</asp:ListItem>
                                                            <asp:ListItem Value="7">Tío/a</asp:ListItem>
                                                            <asp:ListItem Value="8">Abuelo/a</asp:ListItem>
                                                            <asp:ListItem Value="9">Sobrino/a</asp:ListItem>
                                                        </asp:DropDownList>
                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator888" InitialValue="0" runat="server" ControlToValidate="Familiar8_Parentezco" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:DropDownList ID="Familiar8_Escolaridad" runat="server" CssClass="form-control">
                                                            <asp:ListItem Value="0">SELECCIONA</asp:ListItem>
                                                            <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                            <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                            <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                            <asp:ListItem Value="4">Bachillerato</asp:ListItem>
                                                            <asp:ListItem Value="5">Universidad</asp:ListItem>
                                                            <asp:ListItem Value="6">Carrera Trunca</asp:ListItem>
                                                            <asp:ListItem Value="7">Doctorado</asp:ListItem>
                                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator188" InitialValue="0" runat="server" ControlToValidate="Familiar8_Escolaridad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Seleccione una opción." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell><asp:TableCell>
                                                        <asp:TextBox ID="Familiar8_Ocupacio" MaxLength="50" pattern="^[A-Z a-z]*$" Style="text-transform: uppercase" title="Sólo se aceptan letras de la A-Z, sin acentos." CssClass="form-control" runat="server" onkeypress="return justNumbers(event);"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8p" runat="server"
                                                     ControlToValidate="Familiar8_Ocupacio" CssClass="text-danger"
                                                     ErrorMessage="Sólo se aceptan letras de la A-Z, sin acentos."
                                                     Font-Size="Medium" ForeColor="#993333" Style="font-size: 13px"
                                                     ValidationExpression="^[A-Z a-z]*$" SetFocusOnError="True" Font-Bold="true" ValidationGroup="AD" Display="Dynamic"></asp:RegularExpressionValidator>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator18888" runat="server" ControlToValidate="Familiar8_Ocupacio" CssClass="text-danger" Display="Dynamic" ErrorMessage="Campo obligatorio." Font-Bold="true" Font-Size="Medium" ForeColor="#993333" SetFocusOnError="True" Style="font-size: 13px" ValidationGroup="AD" />
                                                    </asp:TableCell></asp:TableRow>

                                                <asp:TableRow BorderStyle="None">
                                                    <asp:TableCell BorderStyle="None" >
                                                    </asp:TableCell><asp:TableCell BorderStyle="None" >
                                                    </asp:TableCell><asp:TableCell>
                                                     <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" runat="server" aling="center" Width="223px" Text="Siguiente" class="btn btn-danger btn-lg" BackColor="#9C1315" autopostback="true" BorderColor="#9C1315" ForeColor="#FFFFCC" Style="margin-bottom: 0" BorderStyle="None" ValidationGroup="AD"  />
                                                        </asp:TableCell></asp:TableRow></asp:Table></div></div></div></center><asp:Label ID="Label28" runat="server" Text="GUARDADO" CssClass="alert alert-success" Width="757px" Visible="False" style="margin-left: 1px; text-align:center" Font-Bold="False" Font-Size="Large"></asp:Label></article><div class="row col-md-12"></div>
    <div class="row col-md-12"></div>
    <div class="row col-md-12"></div>
    <div class="row col-md-12"></div>


    
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
