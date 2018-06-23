<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Inscripcion._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />

            <div class="row">

                 <dt class="col-sm-4">
                      <img src="Content/FachadaUPT.jpg" style="width: 380px; height: 460px;" />
                      </dt>


                 <dd class="col-sm-8">
                 <br />
               <br />
                      <br /> <br />
                       <img src="Content/User.png" style="width: 100px; height: 90px; margin-left:335px;" />


                    <table style="width: 35%; margin-left: 235px;">
                        <tr>
                            <td style="width: 182px; height: 70px;">
                                <asp:Label ID="Label1" runat="server"  Style="font-family: 'Roboto', sans-serif;" Text="   Matrícula: " Font-Size="Large"></asp:Label>
                            </td>
                            <td style="width: 20%; height: 80px; margin-left:15px;">
                                <br /><br />
                                <asp:TextBox MaxLength="7" ID="alu_NumControl" type="text" class="form-control" onkeyup="this.value=this.value.toUpperCase()" runat="server" Width="160px" Height="35px" required></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="alu_NumControl" CssClass="text-danger" ErrorMessage="Sólo se aceptan números." Font-Bold="True"
                                Font-Size="Small" ForeColor="#993333" Style="font-size: 13px" ValidationExpression="\d{7}" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                 <br />
                            </td>
                        </tr>

                       
                         <tr>
                            <td colspan="2" style="text-align:center">
                                <asp:Label ID="lblMensaje" runat="server" ForeColor="#993333" style="font-size: 13px"></asp:Label>
                                </br>
                                </br>
                            </td>  
                        </tr>

                                          
                    </table>


                    <table style="width: 37%; margin-left: 220px;">
                        <tr>
                            <td>

                            </td>
                            <td style="width: 25px">
                            <asp:Button ID="btnIngresar" Width="91px" runat="server" Text="Ingresar" BackColor="#800020" BorderColor="#800020" ForeColor="#FFFFCC" Style="margin-bottom: 0" Height="31px" BorderStyle="None" CssClass="btn btn-primary" OnClick="btnIngresar_Click" />
                           <br />
                                 </td>
                        </tr>
                    </table>
                 </dd>      

            </div>
</asp:Content>
