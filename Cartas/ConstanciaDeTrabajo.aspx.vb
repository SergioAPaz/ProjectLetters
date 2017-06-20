Imports System.Data.SqlClient

Public Class ConstanciaDeTrabajo
    Inherits System.Web.UI.Page

    Dim conn As New SqlConnection("Data Source=.;Initial Catalog=AppCartas;Integrated Security=True")
    Dim ad As New SqlDataAdapter()
    Dim cmd As New SqlCommand()
    Dim dataTable As DataTable


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindData()
            GVData.HeaderRow.ForeColor = Drawing.Color.Red

            GVData.HeaderRow.BackColor = Drawing.ColorTranslator.FromHtml("#90caf9")
        End If
    End Sub

    Protected Sub Unnamed_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub BindData()
        dataTable = New DataTable()
        cmd.Connection = conn
        cmd.CommandText = "SELECT * FROM [AppCartas].[dbo].[AR_LettersHistoric]"
        ad = New SqlDataAdapter(cmd)
        ad.Fill(dataTable)
        GVData.DataSource = dataTable
        GVData.DataBind()

    End Sub
End Class