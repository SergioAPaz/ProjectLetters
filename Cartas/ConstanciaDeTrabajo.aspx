<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConstanciaDeTrabajo.aspx.vb" Inherits="Cartas.ConstanciaDeTrabajo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="assets/bootstrap/jquery-3.2.1.min.js"></script>
    <script src="assets/bootstrap/bootstrap.min.js"></script>

    <link href="assets/datatable/dataTables.bootstrap.min.css" rel="stylesheet" />

    <script src="assets/datatable/jquery.dataTables.min.js"></script>
    <script src="assets/datatable/dataTables.bootstrap.min.js"></script>

    <link href="assets/css/index.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="">
            <br />

            <div class="panel panel-default">


                <div class="panel-body">
                    <p class="alert fondo456" style="font-size: 20px; background-color: #222; color: #ffffff">


                        <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-info">
                        <span aria-hidden="true" class="glyphicon glyphicon-chevron-left"></span>
                        </asp:LinkButton>

                        <span class="newarticle pull-right">Constancia de trabajo</span><span style="color: transparent">.fff</span>

                    </p>


                    <div class="col-xs-12 col-sm-1">
                        <label>No_Control</label>
                        <asp:TextBox runat="server" CssClass="form-control" Width="150px"></asp:TextBox>
                    </div>

                    <div class="col-xs-9 col-sm-6" style="margin-left: 90px">
                        <label>Nombre</label>
                        <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>

                    </div>
                    <div class="col-xs-3 col-sm-4" style="margin-top: 25px">
                        <asp:Button runat="server" CssClass="btn btn-primary" ID="btnAdd" OnClick="btnAdd_Click" Text="Agregar" />
                    </div>

                    <br />
                    <br />
                    <div class="col-xs-12">
                        <hr />
                    </div>


                    <div class="col-xs-12">

                        <asp:GridView ID="GVData" CssClass="table  table-bordered table-hover table-condensed tab alex" runat="server" AllowPaging="True"
                            AllowSorting="True" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="No_Control" HeaderText="Numero de control" ReadOnly="True"
                                    SortExpression="No_Control" />
                                <asp:BoundField DataField="Name" HeaderText="Nombre"
                                    SortExpression="Name" />
                                <asp:BoundField DataField="Downloaded" HeaderText="Descargado"
                                    SortExpression="Downloaded" />

                                <asp:TemplateField HeaderText="Descargar" ItemStyle-Width="125px" >
                                    <ItemTemplate>
                                        <asp:Button ID="btnDescargar" runat="server" CssClass="btn btn-primary btn-xs" Text="Descargar" />
                                        <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger btn-xs" Text="Eliminar" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>

                    <div class="col-xs-12">
                        <hr />
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-warning pull-right" Text="Descargar todo" />


                </div>

            </div>
        </div>
    </form>
    <script>
        $(function () {
            $(".alex").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>
</body>
</html>
